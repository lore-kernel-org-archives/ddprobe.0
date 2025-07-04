Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A419C566
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751671794; cv=none; b=oLNc8jcXtQ+RQU0GvxdYkaKFAxgVattyhpwHkBYraqbaO3TnUFwTMXJ+Q8XIIkRfRPxrml4tigtyh1rYj+lb7L9DztkZCNagKGdy0yo8W/kNlYyYR5ccVsfLsG4uyKWXIqL5A09bd8YtGiiOy3diG+JHG9k+Qa1mvSIY7Soohok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751671794; c=relaxed/simple;
	bh=VrNHLFG+eFA03FfKaa7zQ1MXQMTDsiv6RKu0q1wi6a8=;
	h=To:Subject:From:Message-Id:Date; b=bCuBw6a5u38q3DVg/nuF0xeiCQQUYth3Q5NyiehjPKmEAZiJG51JUs+50k3iCW8KnZ33L0LsMwfCTkz7BYmzpyWmHfnzFxq9/AB3qXdIIphHdV3oZEqzvK6fW20FKlRQdxW4ov+MM8DZ9HevMLcxOqLuUYPzyIsa9dv6QdKYRjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRY/sjmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRY/sjmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751671793;
	bh=VrNHLFG+eFA03FfKaa7zQ1MXQMTDsiv6RKu0q1wi6a8=;
	h=To:Subject:From:Date:From;
	b=kRY/sjmkSzKJ1rx/YTTC6f+VGN+ehteMqN20dBtXiEu/1YvKORa0U9Ql8HUrKmvdf
	 Tj4YR3C64af+cKl1B/eBa7vdak/thNUWaCNl1Q3KTO96hl7uDqRzFot+AROwogy4L7
	 vGkHnZItt3/6sY2YHTnUiyLJo4/YDvriaey/t4rLQhXN0iWRVqDu69Rndk1atgrHju
	 M+QzU2I1QkAfHzgs8wbRbVluEExGvuR5P15Fh8urD2Glj/6Ui/56UPfmE7JqjLuKou
	 pfxLA6u5YXT9Rm4lb5+6HZry3sVzBwf+NVLK8GeeWODPq4b1n4r64MCprupx02X/ct
	 rXlpXDXAfjHig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F0C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167179358.20530.11262943143063501648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616bd3d3cd281ecef297e3b57ff09feffed81d2a8037925068e17872ed9c285f
Date: Fri, 04 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751671793
