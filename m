Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7412E2771B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782610114; cv=none; b=MTfqZLW+uTbAEPTWHth9MUEKNcbw9EfKq3FGPOTDQ/Nw5trYw8yK2QXqdfk7qzNIxmHwmpA7EWTNGB8YW7tE30yZL2zye+yeqioblb86VVCZWl5gM1lHzqg3J9V8/+ZPVn+xAsUv10I7RtcU9ZwVTb79Ln8X/hd6tS+DPEBNLxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782610114; c=relaxed/simple;
	bh=ZaS0g9mtTMGMjsMCfT5apFHerET4MN+vWzF0jh2qEkw=;
	h=To:Subject:From:Message-Id:Date; b=F+T0EpDhEp8dQQe5VcyrFCc39pAglC8zSqV67YKGQ7qkZqRiTtGlFvWP0sUCZwtYJBifzdN3xTu4BVzue1QMQtjdEPHJ1GNG5ywRKX1SjnK9MljFJ3a+i8CkiCLoRcSPl1BiMwcOyYEf4C/n1tf2jz6mWY3CZcxGmF4HgYi12Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ/9RUP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ/9RUP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D92C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782610113;
	bh=ZaS0g9mtTMGMjsMCfT5apFHerET4MN+vWzF0jh2qEkw=;
	h=To:Subject:From:Date:From;
	b=qJ/9RUP88YFzCckRKEuPtoVMKVFLzH/LvUgeMrSOLFU+GNqF/pMSODQEvxRiX47FH
	 +H0KGA4qwST3RdcsHmw8RkYhTVDMtmDCmsvqRTtKOuzF3LI1LB8gJHZszh3Ha4ZlRv
	 2hI8KEOGKef110FsfHV8XGsRmNOAs5PaYjCHE+bV7bRY/OBXRIukHPeezJhAwznsDw
	 +AdLIF5rYZFKXnCF9cHSp02DySt+bQ1aGcj8SWZUofEZle4fmQUpIiyxXRksS+vHXb
	 hkxozCdCGAHBwnd5FBZ52uCiqQElns6CNK00Vchwm6ND7iCP4f19SkUXrykoAXYaXH
	 dOZjm/uDftD5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD815C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261011372.21816.17888107153297477037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f526278aaeac51eca32b6cea3aee78c3d8e133f36d6e54209a693351b20dbf1f
Date: Sun, 28 Jun 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782610113
