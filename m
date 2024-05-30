Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC55376E0
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717088063; cv=none; b=Viok9CqhhDWBdoyfKLqn0QlYvwMjOsrt0dgleere3GtX25CVs8ogk5lYce2LzWnyRvArScCWaUk1ljfShqv3ZpT0JrSoDzH2MAGPHd3rD0z0PCJ+F6rns+bjkHk+/Kh+NT7Vq7kSfrE/sWcky/gJ1J8DxmCn+t6iNGv3RmVBJhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717088063; c=relaxed/simple;
	bh=pPU3l35RFYqZ09THFfy+CM2uy4mAFL3QciwwzPl1uU8=;
	h=To:Subject:From:Message-Id:Date; b=tSmigNJA5St3Fdi5frEtn+gH3a0KJ0ytmP5cSZxEoL1mutSolE/sP3KRbVCx/RRaWE+O4y4RFBIsxOL7r6IwgK7rBVPzrXuLmAe1w6dSgpFL6rMtWcHCr/d7Ju3j/ibKZa3oFBogOss8kp21HfzEWl7uLtK7lVGQ2FoQoSpy9/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3EineNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3EineNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8896C32782
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717088062;
	bh=pPU3l35RFYqZ09THFfy+CM2uy4mAFL3QciwwzPl1uU8=;
	h=To:Subject:From:Date:From;
	b=N3EineNuogl75wySdGo0DK8jU7ipOCan+ddinvQ+9BKfWgZyXNMwyblTyo+Yca5wa
	 COZFaUT6JNytmGMg5cTtnQ3osuvOKLW10PiOI5G5YSRjupVbz3rFJG8aNMhcpJjO1L
	 uo2aZV2MbxUEm9VQ0xwdl2Vm/5x29U6SPG9Z7UAgL3AnlkFQemAELChkDeT7HXfapb
	 5j7YIGmOcuEK9W71KxprB+hwqnVckV5vw01PehH2QFvLBBuRVL8wRgskefHGLhhnQY
	 Xkl9UJW6L9bryJYhaTmxguK3ASfcoeexkgAfjR4Dd+3baIwf7Dl7/1QzsTYci7mLZ2
	 eDZp/8JDHzGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEFDC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708806277.26561.18295682750062643470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80226e6dc8e64ed2924e4a6a4f1e8a9832245d8948b14ef3c1225fc9fa4aa6a3
Date: Thu, 30 May 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717088062
