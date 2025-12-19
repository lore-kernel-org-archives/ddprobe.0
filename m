Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3DE2D7DDC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766124234; cv=none; b=d2q1sKjWcVA8OW03FIY6Urop11KmdXU/xfzVdFMFOxcK+yA2k56vLsdHJCaITVDB+MsWG+4QrQE9IekmoytP3OmowbUvtQyAHBhAwiO0AN4hKzy1rX8eBCTPBQXvnkIZ0lzGmEZUUzLWEaL/tvY0dZ5is504r63jczt5IFaNQn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766124234; c=relaxed/simple;
	bh=rl/lKEmzoggwpAk0gKCDtuOlNzwI9rJNDU6jGfWjyKc=;
	h=To:Subject:From:Message-Id:Date; b=PH8t2R2auOadsbq0oPosbr9ec9gkV4ags2m3Rnlb1CxVIIzp2x8/5oGyTHtfhJDHZ/gwF0iSLDecBaczBABcR/gLcHoOCfM6/AxxwIP/xeRUqDkQUjMXwU9TqS3YZNZYkshdF5ZPkFycNmLECvrR+Del9b0ikYO+gOfd2XBPazs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMN00pZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMN00pZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CF5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766124233;
	bh=rl/lKEmzoggwpAk0gKCDtuOlNzwI9rJNDU6jGfWjyKc=;
	h=To:Subject:From:Date:From;
	b=vMN00pZQsbsGItiURc23Gumedn1O5NP7ErZZomTKs1WeBbEs+VCvHH7jqk420CjLk
	 ZU0yByxewHuDANQdYPCfCHCurvehWGHojzdF3dz/6Dn5jYFb/Jr70nkGMhV1edfKPh
	 YsBC+sM8zqQdXvwwfjBmJ2bJ0BXfoMLRB4C+zRxJPnkroa0+4OHI8MyeSHIcsxDEq1
	 J7VywvnjBeOEZ8misCh06k/pubXAUSnXb8ZoIx6+A6R61u1XWkj11KpsEb2Kxk+HmD
	 nALgMR79H56Ai7CEGO6WkhMlEo53X0Lrnok5y3u6MhsJtjRwknZDK0vtA7dmuKi9gy
	 u33Y+2+PfxI1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7B0D711CA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612423363.14270.15737060668496787259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049ed8093ea18574514dee9f89c92be0019bba716e4babe426801309adda8e98
Date: Fri, 19 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766124233
