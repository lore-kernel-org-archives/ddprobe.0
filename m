Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7134B1E5F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746583194; cv=none; b=nJz4jgjDPkYdWsxDaxY/T23UO+ZDgsIeyjH0g/ARAAAlCIztn+5n5Tr2p0IvA4/wyS9iO3qcvvwy5rBfalm1E1RaLkXIjcg/wXnvJZI3vuFDtdqSEfFAYHqtljeQbq9OITXrShmeTW2ocEE4vTB2uy771QzQGjfYNddp9Ondpak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746583194; c=relaxed/simple;
	bh=IHV31SR27RbenXMrbpA8SKSp4PTwjP8EvZD6gRFmlxE=;
	h=To:Subject:From:Message-Id:Date; b=l8PXy0xjAkF9ozf8MvQxh6Zwt6Kwbk/kaGbx8WSRgE8Rhn4rBJL5wF1a0AEEHxkIBT6g+aRYgrCwiftRV55fvVsOKocw/3BZULlrljy6r4SWriHwcj376Hp5QxERoPdzYJw6dOEn4WHQQF4dpX0eq+55svj1ZFQNBpKoAw1yjn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5AjnQZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5AjnQZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A188EC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746583193;
	bh=IHV31SR27RbenXMrbpA8SKSp4PTwjP8EvZD6gRFmlxE=;
	h=To:Subject:From:Date:From;
	b=l5AjnQZNb/bDWHDYn61L52Wo3IzVB7sIbnFEj43maCrATjP5BmeCZ9Y7fomuuOuSa
	 lTpuQAGzVx1leXraX3twwPRgY6y6BZriwIY6womPka0JrkBAAKojDYrrCs7xdpXSY9
	 ERPleBlxFlg3mqQ3GZZktSkICat2yc4isjY88efulRIhkAGWe9E8lfT45HnSSNvO8f
	 u4njuE2oWHZod9BEg4mlxsNiUS1Zzj2lA8SxAySBgPh95cqIRV+F04s9YclTXW4A3h
	 XGlIq07NBn/YpSeL0DWsn5T0L8ZUzf7iEGYepv44iU29oS4WJeaYYNyiCLjqPBfN5U
	 c+borfE9p1QZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299DC3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174658319357.16963.12073736252025394622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59712bc11a21dd1768402a0a3e0167d92e125b1cd61a5cdde2d0fe9f2c0a0a47
Date: Wed, 07 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746583193
