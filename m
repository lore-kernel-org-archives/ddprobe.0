Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE85194A59
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749397794; cv=none; b=Kctq87elJrDLyFTHlZEOOTYe/afPahWt8d/BfryV8wYJ9GMD8/9GpmBzC/4iLdD1cd75LF/67BCgYJe9Oi7pmkSMlHmFkCkrvag/AFFeVHjQ1P0Um2XV4Zp6+5rWDFGFNEu0dBxRL+YlVvsoHGzxAplrpRLqLNizsTUUhm2KdyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749397794; c=relaxed/simple;
	bh=HJmKEg3+ggFJ3c0bPxSvLDb9J3vvMCilH/H2rxhYBLQ=;
	h=To:Subject:From:Message-Id:Date; b=MVmSO9x67rJGVC69URim69+1bNaAhAt42MKJMvBZLOCEMtAQAu4Ke3j1wP9iS4RAcbNHmH9b1prU5p8rmOUWZ9Hef60MO+Hu8/XL0Z/rndbEGVE/P6kgkBCT90R/LVT5omhkZjJ/PW+csI6H64Qqp4Yxv9S7B88q5KKXo6aNuzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7qlzXKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7qlzXKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA60C4AF09
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749397793;
	bh=HJmKEg3+ggFJ3c0bPxSvLDb9J3vvMCilH/H2rxhYBLQ=;
	h=To:Subject:From:Date:From;
	b=c7qlzXKsablhzDBLVPmLcNOd0EZ5Q+yKPTF6r7sP25ekHfDwUefTct2E0U7lCi5KH
	 8V+IGfgfHmFDkVKvPR/8NaSRlNCqRXafHRHBWvVgY1OHoSwViqrrBHISbU7/0iAdgW
	 1c4d/zDkDAZDGV9hteRm5oeJ4kC7P8jod4xuqyPNnGgm8nP2pwj1xw1gX4lJ6jUrxl
	 dEeXPsGpDa3Z8O/4/IKdgFNzv59CiclyJWTI7mMYtUH5WGIdrcNLdUqsOqR6dfGd7R
	 f9RhsAOCIoCipVRj9UrCPppnAEO104UdSS+fZ7hsAauayrNZtUG/iVIqzbrNo9nfIg
	 TW+3nrJ3vk84A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4D9C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939779360.1611.14405823615602359718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f542ee6d22070d855fdf4fd2b77f488323d1550cdcab9a567a21ce86b111a138
Date: Sun, 08 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749397793
