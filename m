Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D89278161
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792330234; cv=none; b=Jizr+ApF2rjiaZm9pB+ds0Og3Fic1OE3FZHrvycrdu+LIEREQhxLMEh6fOyureZYLFLm1pxVPOPs1UDisyYn/aBrYG1G+EwkNGxkGFJ4urr6F25RikiaUbRO4lIrZ7Z0iTt59oxaD+/UnsxxFvfnHqVIHOsxFvAeVo1ec5tV0dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792330234; c=relaxed/simple;
	bh=rgxlQxPAyE4E1XqGH7S5r56qx+Ggw2W1JQfp+D03vpc=;
	h=To:Subject:From:Message-Id:Date; b=oMR7/hqhdZbpInck96GMZE031M189mKcVqrwdgeKAb1jhgHFa1U9NJLeWfBSpuyn6cJjzkp4A/sjM27GFOx16xL/1HON/qzrLbbr/a6JPii+QrtfrWxLirVqHrWngtAYCUhz+PG+PAp8im4d4VGUwATCpyYIsyAIuD8F75B5FyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T02YZ58U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T02YZ58U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBE8C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792330233;
	bh=rgxlQxPAyE4E1XqGH7S5r56qx+Ggw2W1JQfp+D03vpc=;
	h=To:Subject:From:Date:From;
	b=T02YZ58USSpi6usIkzrkYm6OX+FN+GCbOqvHyYALQZ7kLswhrATR6gyC4rgyxfGxL
	 +16/4lupTgKOefQ503CBhl2L9kVvJy9KX9/LyLDdG40hFwFTJs4fQExdcmQShvoShv
	 fxnsiBVx+fW4zYH8/tdTgmyHbiIZ3P0xlYJ3gJ5VcVFUTaD47aIdv9m279oS48bXY3
	 lHJ/qBHZ12vkmxrzZ1tyX7LETOx6akiIAVLwzC8iOGKirhCkSqfll0OYErHRQkWRll
	 eJBVSF64WhiUSdXwJmDs+uBtpaMaP7ustTrW715XivfbVQ2gZVNno/akMAUW7k3NSG
	 B6vt5cSykYxUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC240CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233023369.20571.202923291378773055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51973153265b9dfd05b363b3559993dfb9a5ec3d6213ecdb58392f0c23d39813
Date: Sun, 18 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792330233
