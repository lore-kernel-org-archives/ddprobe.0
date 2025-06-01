Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9581C8606
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748795994; cv=none; b=rD+x0lYZyzSfW2dT1tHkgihY5rXvPxKqOLQhFXb64ZXTQpY2ZJ4lSNX+28SXN4ORgmQtu6In3y/18xW/GUmja64vmRV9Kp3F5hQ0/ApZCPfizEvGK0pFUwEpn6CXwcm4Z+Zr0J2MN6Pk4lwA+XxuQJ2JuBpO10LVTQzVMt03yew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748795994; c=relaxed/simple;
	bh=hb9/YjwMUeSVDKVPUnUodrrQz5FZwSE+w13g50HS3iw=;
	h=To:Subject:From:Message-Id:Date; b=NgORowkSpuoFJe6+kQCedulPMGU5kj589aR2evlgGRLLdBVoJAd9IXicm/fp6ggq3jSgq9d8oBi5+7uNyTfynXL7CKy8gV36RGlzV3jU1s7FCt3Sp4h5Ze+PRm6QMdlw1zRWtT1K6GDutt23OtGvXYOWrN5qdnoE4X1EHnaywf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOu4WgCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOu4WgCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9158C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748795993;
	bh=hb9/YjwMUeSVDKVPUnUodrrQz5FZwSE+w13g50HS3iw=;
	h=To:Subject:From:Date:From;
	b=uOu4WgCDr14A1nXl62XLHm6OLG2uVUqTgk+cjunY7Jem6UvR3B/y0b91W4vtk1nlW
	 6DDirySBj90/cXFKnJDA3lkX9o7+sgXktC2zI0XcafB9qhUah+AvmAFV4obCP5ycr0
	 RYtuUmWeJEyXKd6AaixDsgAh/91CkevfS9qKddDb/Xk04WQB3xWr51N2Sx7+rDFoPQ
	 MatJdfBTyJ5POwxim1Fo1V864456oRhldfNv4Eo5kj5Gm3iFsJ2/yEcPlwno8ZF7N3
	 DB6TvmbJc9Ymrxkm2h366YW3Q4/fQg2xCK80r+URNEvGBhhjryPgat4qqX0rJnqpV1
	 yw5XRNfr0UAUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E00C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879599358.3592.9937948959133425303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea66b3d7d3a7b5e774247a21a962aca49b629c83bb956e8cdda6b6ceb8bd646
Date: Sun, 01 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748795993
