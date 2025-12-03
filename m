Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A0421ADA7
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764726174; cv=none; b=RpMfllaO7Sa6R/8ZDHsYkJAlOa3KVogQdrFPBUB3WbOU3EeOto8aKht4dIL68Jqs+W7qZBLKrUev0rpc9FgZxF1VKFlGeQuO2HeJyrvrsu+GdzL12mACyaK1qKwyhIqz65rOtCkNlzfnc9enkAdjXJ1FWpewJA3E3V219cb0pxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764726174; c=relaxed/simple;
	bh=GfPR7JinLuD++d6NbHuvZXzHOrwjZ3UOAZ8nah9eQVo=;
	h=To:Subject:From:Message-Id:Date; b=WwgCNPXJ25NC7fesO3rk2XJOht9syg8cNe/ChQTUHdVa0CWaqoW7aSmF/N1IY6UcrvzqqZPTTTvlN+pEWWLMiSSX76ah2dbmG1d0F7SxdWOCyKRRoQmhKGYPtRzZd1ZtET9vMtpQ2Sb9jenqpSDS3yHUS2n3y/ad4HolT9iB4m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFd88v3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFd88v3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F7C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764726173;
	bh=GfPR7JinLuD++d6NbHuvZXzHOrwjZ3UOAZ8nah9eQVo=;
	h=To:Subject:From:Date:From;
	b=MFd88v3xEQtEnX7DtDbgke69AMibAXagKkubBNWdZvnactCX/vBGMLDeBZAzxLO9O
	 z9J7a2y1UYganyVSbAenHDXxa1yQMBQLwhharnHMp+ty34XaNnnzQUv1D6o8JkojCb
	 GlLFYPL189tUvI/ta91H+uSchZnVF8HoYD2hPxCxwh3Zjv3A7Retnp5o54Dhcyvbot
	 0iw+FmCL4OVXJVN+GK+DxSYyp39BYTdHI5WQs7uUR20i5UgbzqMTObIFWM+cwpmi9W
	 BN5g8OftzbXhYkidqQMye2woZUbMwXe76oQEie++jC7TYRQpfgmTb4agyHCOL2OUpy
	 sHW4cWT6c4eMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E5D1268C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472617358.14943.1863626452129809785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea49023ee50d3fc31f217a901cc87e2d20b47ef476dad6d64e62f8bd871576d
Date: Wed, 03 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764726173
