Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C078F1B4F1F
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745415593; cv=none; b=nED8lq02izUPj0Z6svyvHA7rRsGZwx5N/pJyHVNfLii+4qfOFfcPiPP0Llg/ojEorFhOLpZDLULRmfz3FjaQaVPQwSqN2dLzI23W5seVBKn9HS1aFRPia4APbvxTT0CN05UPWuHgjq20mQS6VCQQDsV9WdArB/61008LaG9APIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745415593; c=relaxed/simple;
	bh=H3CZBGCPyWkyqKlqTnaE5M0J+d+tTgo10UpiMz4R4zQ=;
	h=To:Subject:From:Message-Id:Date; b=uubrPLAETtpiWIO7kc+rrUJlNwodsW5D1u5xNbR+poveAa1ZVhvlucfVldZd2dJWM1R6D1sWOyvPWiDuOg/+gwbL3N2bsSdbGa1N5Haw4hscpVMzqNNZ59c5qEh4CRrR1h8/R42fbAXTs5EphoULuXn32UK/QBS4rupMdXGsA7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlmBEQ3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlmBEQ3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1370C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745415593;
	bh=H3CZBGCPyWkyqKlqTnaE5M0J+d+tTgo10UpiMz4R4zQ=;
	h=To:Subject:From:Date:From;
	b=LlmBEQ3X3kVE/SHdXh3yBZgNwMMbOiqS7+ds8Yhhx9GXP6kfxjUopF9Ra3d9LrCdV
	 JEnup1Duno16i+LsHpDnV1fyPrTebfQa3P5ssjCogjXuDGrDP5SnELWto5EfQ1yi+/
	 uovdLrtUHhhGcEBPxdbdb6yg3Dl9UOdknhOuHKgWvreU3nMdsUO7tvIwxpztb8g1qt
	 lJIph2tQhAgBRYnWhxtWQNR8gv8dgHI1P6PyHTbVMPCM7ih5eO2ONPvniL/7ndRekU
	 xRLWSnAa/Z5ZPi0fkQMA7F5TL/eU35Mf0ObvVOHIrVfAVyciVBJ7I51C/otut+Elhx
	 xdEZA407VvrtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CAC369D1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541559358.30048.7259350778455113099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b746869e0535f65f169ae787c76980ca35fc7bc6d9bacac632bdda1843f6cf7b
Date: Wed, 23 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745415593
