Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4319449620
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770165234; cv=none; b=hw/rrViqUjCX7KuE1uYHfFh2Tg12GcLEkRDzSIAPNGpE8Ny/15wRlqXmEesq3KaQ87r568uFY5YVPj5569eTqJc5J54HtYIwHk22DAwIzY/bWNST2pshjNPXJq+7BGDozdBtZdmnVAbIO8p8gx7ymu9F6P/kx8shwBHWio8pTno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770165234; c=relaxed/simple;
	bh=DAMl8UnU5Nt8aTP1/mUtfby+2s01ByC4U0yJRBx47AU=;
	h=To:Subject:From:Message-Id:Date; b=NkSahVYbxDSiOb+2eK2wedoIGGtvQ9GX6c4C3Aew04AzYcvqZfDgekdpVfj5ysL5L60rcSyqEl3rx5mfKpPT965vnoSS7Rz6VTIru5JlWzXl7bhAqMFF1Ep/du4DPRZdMhAdAqSAftpiiy6AkmfbEzKTQT8CytABAcHexhBopGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzuj2s6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzuj2s6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7036C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770165233;
	bh=DAMl8UnU5Nt8aTP1/mUtfby+2s01ByC4U0yJRBx47AU=;
	h=To:Subject:From:Date:From;
	b=gzuj2s6w507ozzZ7B/DPaXdQTFlgybJ/ut3ccxAzv5WatpDQh+BXZMCW7+A2rVRYU
	 lNHIb9IyLLl9g2GAshtUHiK6JFrTbWNqKZRKv0m2P8qZqe2DX1oLieGbhTDBDu9L0d
	 HYrJNoZWwxUGNBej2SJtXGVe+iI2qGDurKOBOruOjnHNFWa9n6jmVSo8X0xFo2V+jA
	 f+DqEz/W21tYJx/xGyX6ayQMhhTssrkpJzbgLFp6UPnR85Sqe4UODen4VFEqraC3Gr
	 V2rPZqMgTzpkPIZ1Vmu3LVPeYwgryh22ixfa0i894O/YkwrXvo8YWgwxAzl07+KeiN
	 4VNpgnI1ryyxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA51E8B387
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016523368.19308.1268209102706842264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcb918046d9513b3e22b7033a884899eea462f26e487caf5aab1d5130de7cb8
Date: Wed, 04 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770165233
