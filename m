Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344341E4AB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760044794; cv=none; b=K9NXIHAF7EPURAairmw7sxffeT+L02pvAWj3wU6XtckdHlj9CeBOk0kv6r4lqYWXxyrD2e/pA8rPQQyhP8yFf2+pf7fmlQwgYeJam6mpubVbNCmsxbiw2+9wMwlsjGNkVSOKUVMsQWLlZSVXJUcPXnXQx1L6s1gehSdao1FhMmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760044794; c=relaxed/simple;
	bh=a18cUs+egX1LUOWca7FPdzc9x0wESU13tBj5hF4YxtQ=;
	h=To:Subject:From:Message-Id:Date; b=YIJw10iaoQdZeSASpAx+3dsZcqIRvqmExSQwidvYmjDmDW39DMWrTDinnxcqrizdda0fT3/oMsqiMXeRcL6VZ4DLN/VOclLM1FNoTQRggEQrslH055TWVnzIPQ/srjrE0fRvMG3BuogvNpaqkZIuojo8nkNBBUm1eDcStW3xdZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umsGEFlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umsGEFlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDCAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760044793;
	bh=a18cUs+egX1LUOWca7FPdzc9x0wESU13tBj5hF4YxtQ=;
	h=To:Subject:From:Date:From;
	b=umsGEFlRhrE+2BEhRBuhjUx9FXuLK0cv5O7x2tVh2VATyD0G7Wn2mGTW4xG/pVWXa
	 /qFjI6zk+IuZrN+Qw5DHuA9mtMRWFaabkF0obhEqrkPg/DgwSmRefI0/MbxL0LA2n9
	 T3Anhdq99zSBPLprAy2vqXbKKiVqvTe/1AMN9FaHIsMkYby9s0eCmIxSErj53AhwCg
	 hbzUIhpvoFac6pH+KoJmf5S08QTJJLjeHmoZ8CZZxAGY/Q4HA2N4hVws8SsBRK/R0H
	 086KkyOhq0khnd6nWanfhwpWVhagQXu0yKVExCcQPErJo59BYBb6uGOFVYObM03lXg
	 9k1Gh2mENaVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4B1CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004479359.12349.15922567241473375471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f70100b6b856fe90c44e61a29b9f9aee8179f8f128d35bcbfa33ec92b722893
Date: Thu, 09 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760044793
