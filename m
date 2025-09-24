Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B51C1EDA02
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758754194; cv=none; b=OlHL6bnyJF+NXPINuk17uPGpiviXe0Bpu1UXeMJVE5VGU6a/eIAYkt68qeWm+QGTsulzGXVW6BL7jiBHet5TbTwMLWHPaI0InFsMqgHFEIBgDHJsoc1P5fmgqCfKwpZjUs68bHjwW7Ay69+llKnuRuPHPCIpvOd43REwsGxrqbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758754194; c=relaxed/simple;
	bh=++16VsUF4FjnEneB7QZBXb+P9rru0KveNysBEAh6kLM=;
	h=To:Subject:From:Message-Id:Date; b=bpc1kRTF1d6uv5XO/8AJPQVcelA/JuZhfVeOOQFpPt2T/x5v4l43EsWZ7nAk81MpmlcxAcxis7JyVBu5qIehInRxpLBIs88q7EZomImngair7J5ULIEYMH3IaMwtA0VlNKuY9rnf0z+mTiY31y7rWEcMeZxt99Kq/dJLH6fGx98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGDd8OG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGDd8OG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6659C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758754193;
	bh=++16VsUF4FjnEneB7QZBXb+P9rru0KveNysBEAh6kLM=;
	h=To:Subject:From:Date:From;
	b=sGDd8OG2qrx++AT2D0hzydMYAjp+OnL0Q92QXAc8wHjJjufOJsSUoOW9P/2wouJpx
	 o12kcXWHfl9HlD+0pEeEoDfF0DKDWXmxU8dc/vNm7QAFC+gw8bOWoK+QLtJRJ6vj0h
	 Se4ggBEibC2LvnmRl9JkSFfNZWbwJc0xRWgpuBf7IYytJkn0I01yLYUyXxlB7hMk6T
	 XMDClkK+4sNCtzAt9GQVZI7gN0S4q9HyQlTUzQeBSrcBcrdD16Lq1LC/J1Cgysj3FG
	 ObhwjDY7EJpNDbZ3ZVIwQblKs9fA60InHEfp61icIEsLBZFOO98N1g5CnG4oyvT+z2
	 KpC6MCXk8vxFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304ECAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875419359.32046.13780847458257990442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba98aa2716f7fec2c724d08b8023f33eef22b0f0e7a7c99c26b3d6a4499007c
Date: Wed, 24 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758754193
