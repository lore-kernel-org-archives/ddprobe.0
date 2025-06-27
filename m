Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1410D18DB35
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751000394; cv=none; b=Hbv2iy4cWlM6YEG5J5vY1J+g40ay64UCjqPT93PBI3Itwx2XOqjRa5Q6Rfe5emhSPGINPWgtVbfiF+5/018BB4diMbeFwdjYBe9Y0gCZ02wa+E5s5z5fYU60VdS60AY71k8g6kIOEP7OFfVQUc234bsyj4njNRS9FcwBsZMLtVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751000394; c=relaxed/simple;
	bh=9kPoZCyEjE0QnUD+WX5CCPbOmU1dZ98ggw5MNp9G060=;
	h=To:Subject:From:Message-Id:Date; b=OjwL6eFyuEYaEu1fFoNCkmXxE07LUAChjHDX5+zIiaheb4ec8WvzFFWYsvjgD2cSQstxHHYskBiMyiF3DJStP88Q2M5IlbneBSRdEa6vc2zJkwDoQHmMs8WRJp8pbr3z0lO149ItJWBPyN6BV0TlBxt2HWC0lP5ZqroFBMd9pKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBb+eIxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBb+eIxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3840C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751000393;
	bh=9kPoZCyEjE0QnUD+WX5CCPbOmU1dZ98ggw5MNp9G060=;
	h=To:Subject:From:Date:From;
	b=eBb+eIxxIFUy8lY4Hq6pjQXhUlowBd2/iFenyACds6VmoV4p/Aj7s6vS0eOJSrvgW
	 O99vx1IUaUI7VQqwnZbcsPcHyewuRZAmkDvNS+MzasGO9fgtp2V5zvcz/ogan7E3zj
	 xvNiHiM25WuYYiu7zWlKz4N7iUoRnD8pvQs5b+7X4YM04d2iD0oxe33n9Q9IoWGWgl
	 pkmRi5zftVVrxQjEujVaWg211m/mlMtZ5KeUQUx5gHEe3ZfVC/NxCP11LNNYv4Ffhg
	 TPPjCmETV8qV7b0k44+3EK7YMlC76zqA9FeJMVbbxeqb6IMYzoS7WNFkqp7Tv2+xlS
	 4yeQ4I1ndBPuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F460C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100039357.25080.13998416108783834358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a269f71f77b773c196597daec92c9b5f050d932bef1f22dc3bab4c7e31d134cd
Date: Fri, 27 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751000393
