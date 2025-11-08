Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EA6258EDE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762625394; cv=none; b=c4sY3uWz6sC0vEEfa7vbCeSjzprD72NZaAZvx1J5dMvjg1kGFPcaaoJ6xCJpu/5rTqi+mpVZWNMPPsp5bV2HjCvjXTo3qSyKZ/P5XRbbYuiZG5ppFi3uHG/rm5pabQ499AQ8fLk4WTpZhMVXZGiiCsXVUjwa2OeOwgY1cIkV11E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762625394; c=relaxed/simple;
	bh=yVBgiJlOtjIpEaoQnV3fM3d/d0Lc8qkqJcIjmWAOjqo=;
	h=To:Subject:From:Message-Id:Date; b=kyG8FWcfbVlaFeBK6pK7Wn+zpYWxIbbCDy0q/dYiK2KjdTzJus9R6DizxQlX0ZnGxS2vUM9M9eGXNjr7vgmI3tTWPn2HfkK1MFNVjp6es5IsJEndO5gXbb14obCQtbOBNpavfyjzL+Z8KH6Ou4QdJA32IQhhbgERY7QtwboJDr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGUhvZGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGUhvZGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39F7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762625393;
	bh=yVBgiJlOtjIpEaoQnV3fM3d/d0Lc8qkqJcIjmWAOjqo=;
	h=To:Subject:From:Date:From;
	b=IGUhvZGOxL2Uae+XVOECgOt7jk3h7vbQQ0GyRIaXmhj/poc8D07Fvr9Nkz5imrFcg
	 qVD3a8XieYCM1yzRX6ZwjGHTvgkdlio0A8UbOvKBPOi++yimC9okhG0+T6bw1oYBkT
	 6Rx93IfGDnuYUoL/FI5CO6bU7GNh+wbmOzYsT4cAF1Pj5QueQ2yvq7mGd9Fia7MvVc
	 9HB090wmuKATATXku6oaLH5oa27KrplXT4qwtIzgfJqyXde9Iy3UVQTlmaXUcL1Jbt
	 y3QxGO5vwrHN+pNuiXSaVU6VxV2XvJhf6u3P0Si1WEzD5Niut5TBmJVsY3BC0PApV/
	 dk/3LP+munz1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C9CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262539358.15078.12957800349434032967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060b6c60894a534d8799af15c8a6baa937ff2796be5c0c2357f899dc3634e085
Date: Sat, 08 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762625393
