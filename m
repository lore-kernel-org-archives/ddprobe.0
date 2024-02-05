Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC6F2D050
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707146897; cv=none; b=kkT7uXL2esJvi09CpQZxgDs/tkeDoZh6zYlJRg3oYCJjQqIw/UziuNVG5D19IfY3YSocpdpnXRCv8OoAltid59Ir4y+LY1OiLEu1MC4inSLgys1aUYMlc4AvlLFdi8C4BByfxqGsG8qqzr3ZNqDLIBDp3Uf5koag2r07n3LdSqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707146897; c=relaxed/simple;
	bh=UdYy1rFuazrlViy/dIRo+h1YkGhXGVM+RDkgefeQ4jw=;
	h=To:Subject:From:Message-Id:Date; b=mJorQiKwQ99FLJhwHV2u1tzMp4iUVxNmSQzreLOMssIQGLHAgd1LfL5uBxmYxkvsXBlOEr9lDvg7vk91V+wrr4oedyghoBGeuCpGRAz6SuAxi1bWWP7i0yRo9X7txKAphVkuVuoE9kwA6Pj2gwdA3dp7Ik3ddYdisyKN7+UWvx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c39dtkmy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c39dtkmy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF25C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707146896;
	bh=UdYy1rFuazrlViy/dIRo+h1YkGhXGVM+RDkgefeQ4jw=;
	h=To:Subject:From:Date:From;
	b=c39dtkmyCtEh9yClZf88i/3g40iMvxEIeVJeeksUKiNOqzQ5o0pmEBCMDNAN3oWKl
	 a9yftyd6+anFxqfJMU5zHmCDm3ZKISP/h7GXYaS14x4TdIXD5M4smrhBoqp0Fzmho5
	 Np6xYkpyzad7SXSuVjPA1ZSGiYijSCRE8UXkQN9Kz0jfEMOBNbX6LXIe2e2zBKTTX9
	 Daks1+0JJG12C+I8IJcjDMGt/RDYddeFtbLHIB1Wgsmu8Ghx3z6mU1d75GvkgLGlIa
	 0i2YMC2y32htjRWP6I3hybuRwe3O0joSDURzFPgrRf/KZMHKEcCWgjTSlQpJ2070UG
	 C1+G/+1sIdyPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6348DC48295
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170714689639.8390.3234531755936123287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f624416b28f76d85e33bf81c8f2c8866c3f9b5324ce4baa6c3a41268584d144
Date: Mon, 05 Feb 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707146896
