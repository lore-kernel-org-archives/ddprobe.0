Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379C6201033
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746116395; cv=none; b=Yp0SRwCYuCAd3VlcFWNsLTtP231cXke4jxH445LJkrLsf/clKlkTMfjwQkSUs3BgXj9NvxbhS42NviRmv63zQhOlF7dghIbEvxGfQAZxW5gSt2ST7ju3D29j2eMQnBm2xHsTb9JQdcSPprklPT1QshkkHEylAME3yQ7e9y2hSeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746116395; c=relaxed/simple;
	bh=9q0uuPn/kqzOPKLw+BG2SpIQCGy95g57eQKpWGQvjEY=;
	h=To:Subject:From:Message-Id:Date; b=SwKaWkwdkcnIin8UD1PeIsaIQzPIZxrhngowefgTa+u9P8qLoAjlaGbhomicjM+1UyMqtZYqpsGlEhjE8mVBFArODGePbId79E07aGVsFvBypI8x4lK9+c6pvOMAPXkrA6DvFxypvHZ19uGVGFFKjNTKS6MOZS0H47RMtTkV73I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIHytMsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIHytMsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D36FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746116393;
	bh=9q0uuPn/kqzOPKLw+BG2SpIQCGy95g57eQKpWGQvjEY=;
	h=To:Subject:From:Date:From;
	b=sIHytMsACTZ197Wz2DO4ghLbHY8Nyloup8PrCH6IuiG0pk0mwUI2ocYTwOcLXGQfN
	 hCRlOVcLeV+bQ06dC3Ea7A9dgylpjYu6i0IRa5JWMQLOWWJYoOeI/dhIXFLD4a9Q6w
	 2dOSKB/ryCCAyWQUWFEkVbB7pKNagNC90lHYIeHx7G2h5wQRJDlj+g+EDbHwU9zbnz
	 AIMajN/m7cujnD1PBATQRANhldCBJFYNUbqB8OBS0DK9NqIx1XqKCLcpKCCAr2siAF
	 /qvAX7vlEbhpLCTGyvmg3M7WswBYsos+5IPwdktesyuGHScc5lORts3c8HLGhg9XgQ
	 HwKtliA7kw0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC60C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611639357.2549.11260908605725464390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0cbdf8300bec42464af43f0378c82d432af44328f324e69c7f583a8c1a28eb
Date: Thu, 01 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746116393
