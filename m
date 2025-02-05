Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D345191493
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738771555; cv=none; b=nin5S6aiTsSsO91gVliN69Wf6KfgJiI39suUqJ2WJ6c6f29ujbrMpw+4/aHOrNGI/PcuChy4+Znhuypush/Gi86cjO6iuI6UX2fZs63QuRQmfowDNdKYHquBiCd+5F0mn/lJKhKK/jBrfpr+o0I31hAachPIsz0e8pge+bvlJag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738771555; c=relaxed/simple;
	bh=Dm5IUARbjfYpJz3Uk/wGy6VFSXJQND0tZX7JXl9/U+I=;
	h=To:Subject:From:Message-Id:Date; b=Nsy9h+OEExJvpweOmxeAbRP0elBL1ffh6koC5k8TP6PWpyI9Gu9N+4deCUDeJcM492AnhThFLWWATAyLCQaNMeXjfMRW89tPzOaq60vruFAaa3eGtWOk8LT9mSpli4sDMuyVwdeU4WNHXK+c5SuVbbs0l7WhyetMcgSgDeWuLy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMxt1zNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMxt1zNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3627C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738771553;
	bh=Dm5IUARbjfYpJz3Uk/wGy6VFSXJQND0tZX7JXl9/U+I=;
	h=To:Subject:From:Date:From;
	b=JMxt1zNJoyAOOGW7TCZZ7lQouFQlt6k8mnqwLN0GlocfmFha8EVYgq5sG2CXU+meZ
	 ja9SQYdFfUiG2P2ngqqbjzrx2XsNwIFD6v1ievlKKt00P41oy+owlNvYHWkR1KOIYo
	 X4FfXCWFBD2rUcqkmsEZKWeceJL7ugX8+7UQYAGdxlAqpEnTd7HptNalqTZ4eznEkX
	 3rLDjimpyS2Ni9e9kc9VXDZoUW9r0mMa3/HwnNqvkwmHNd+9JAO5GWm/JvWWLBGI5X
	 ad4LC+Lbu6dbe5jV5KeGuqA0tXkKYEPMnuTYSboEx3OSn8zYG09EaHMcZ0sPZOcLZJ
	 wYjZJPD65r0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBA8C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877155369.12650.13073074701243125326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194603c5d22b1be0efc7747d69efc6cee31c3890c6e8880db6df91c5ccc43c04
Date: Wed, 05 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738771553
