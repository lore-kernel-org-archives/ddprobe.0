Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1344286348
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765115574; cv=none; b=qlrmpNXuHriVhY9mekUmgCkLxxFp+GYqD2iWG4d0TG2hBlp13J7LCzJ+xAKcakEciigWOwLU8Qgnl/cv4aAOqCH0Vael9jE0O+5rm2RcwGBIC/UnBz0aHC6TRa6UZ4cSPXtCnQw8NJJc+7c+T6HGuBNMqpNLYdTm9U4fOf1n+b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765115574; c=relaxed/simple;
	bh=JbA2XKyX3wl8Pp1ilq9qXokTa+aTCxLoHZ+AtYpvEsE=;
	h=To:Subject:From:Message-Id:Date; b=q2UMLJXOmDjjBiQnn9eRCzrzqSF2Z8nPdRoqp+gEcO+3A/0S1VaorugOKn5BNsW2M3DT5+GbFvDiWN/K6llA8vecMIf8Gbnk2vIlb0Cij5EBZJ8RIKEY6OLCf9CPED+mp5c3LeXIcj3KAUDubgkTFsB7eyYi/XjBSrhGfJzXHfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDutuQdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDutuQdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD68FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765115573;
	bh=JbA2XKyX3wl8Pp1ilq9qXokTa+aTCxLoHZ+AtYpvEsE=;
	h=To:Subject:From:Date:From;
	b=EDutuQdSAxkWfdgqovGAIw8YSolS3GAPftF/V7Tkss7GSD/jyVt/K+Genm1AFw2b/
	 8we/b3NfZ7dF14vbOS7K2MDWcBVnDRqXwcZDUWZ+WjgrYGzfm1sa2yK7NL52MXRyXt
	 N0HumAe0tPX5lk3pDTEEGiNGhabMgHeKSEe8fkH/BT+cnU43XxK4G9islRY8VfiXYd
	 qE2VJ9FFDfE+VthbyeFo1FDkqjhBoMs7VqcOkZVQw2PphNhPx2Znlbd3+FVKxNfhh/
	 8DvZXdfQN9HFOvu3oOaRco5uC2AauJojlXIuLrgLn859tjv50mvr/S3qHBA1vGa2JR
	 R5CBmzuIP9SFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A52ED2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511557359.19855.1946144705369797842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a7b5537ae8f9b364b7e9716acc8c97bf5386a780ec3289c4f768c4da99b552
Date: Sun, 07 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765115573
