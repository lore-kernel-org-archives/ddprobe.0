Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39785C614
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719824663; cv=none; b=t+gPk/53QSL672Y4qZoQxmcBvY8XJZi3G5vHX8qhgp0JOjVuQdHeo9cRf3tWaCviTvEhMCQrSRmMns0ngSYJ5woYRUnVcucUzpir/S7WhntVNGeZQuIeEzE8CD4iZixD5J75SfM1eZs8XXon86FK8ybNBtIJzUFi9iCi70Jwq6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719824663; c=relaxed/simple;
	bh=4867wkKlF9dYgdMfW9VfmIx7FMFhKcXngW1BoUHpjt8=;
	h=To:Subject:From:Message-Id:Date; b=QXm51p6+KFW5Alc7vXx831dGwtTPHQGFl+OZFngTyYVVVLvmc3mDSLd6n4FGJNSBGssQ9HH+38nDVLMZMbgXlQ1ISMiBFpg03n6C7bBuO4V2ONo81CWkDZ/38WjDv0Pj8UZwcQ1Z6jNRoulc168XdhZ7A6CtizLFXrS/nx4Jsrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvFhBKqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvFhBKqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4D3C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719824662;
	bh=4867wkKlF9dYgdMfW9VfmIx7FMFhKcXngW1BoUHpjt8=;
	h=To:Subject:From:Date:From;
	b=RvFhBKqa5aS+jyUCSyzCcxefuxvZZd28gkvT2eKg2+RBK0x54g68Shr7v7+0fD5Uc
	 4im/d90b6E+qhTpE9pFfxGAqfMEvJt9jHioRsWUUfYcEKlmfgRGelHFSHhxc2G0yKS
	 Bf1jJpnPIPco0r50NFBaYD0nDd6hMCQJA5Iid8/hPdYrgcrsfvP6gwtZvNA/vWrhL/
	 ANByZoUcATpsuz9FYsy+z5zWZaQwOKJf6X+7zdfuPJktocI5ffeW1lduqHAHfgQhuo
	 TguV5AS6rb65dImcO3t6I/ZqdDVPRxKiUlMVeGgAfwuPl6R37oI2WHw9WuPfI7GB3A
	 jr0G8TsEAsmIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC012C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982466276.26281.1322870132019358771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65e2ba2d52fb4d0c2b53d6459707eb887fcf5add007184d7f72f4fc4c0ddf37
Date: Mon, 01 Jul 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719824662
