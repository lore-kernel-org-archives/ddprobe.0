Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D781A9F8C
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760915996; cv=none; b=EEizHNLPX9WDIBj8ouSLyQ9Pd3ePFFVIsRFVNZFW1VCsswI1O1Xsf6GfmFblkXDw8Oa8IUCyOtvR3NLS0aLdgvIQk2oerXcr/XIB7uTMWFvgBGM7BhqfhJt2TynNyyGYcKBuGRMbluCIAlfG2AfrbJ3s1+uFx9A5YuIonqeMnhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760915996; c=relaxed/simple;
	bh=4wSsllfFqUoP7Xr79ep1QzYbCSkQehGEho+4UknWkZM=;
	h=To:Subject:From:Message-Id:Date; b=rXD6FlWTiDdnRpBSOvOuxTHyt9qtVI0b6JDzhqgHOfr/fmfbH+HRWS362c+LiyjEgWrPc9zVak3SgvRpu0uQIcZjPc8XpSJDRLx1+AXrOSHK8h0XLFN2IuVSDsnaKOup/ovE/NbnzwYM7Sq4+/CJ6hPIV0hZ/1KS/4H1QJMQy9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6PRo0O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6PRo0O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760915993;
	bh=4wSsllfFqUoP7Xr79ep1QzYbCSkQehGEho+4UknWkZM=;
	h=To:Subject:From:Date:From;
	b=P6PRo0O1TEws7M3tFOHdvigDwkXvxkE04BoW4PB02tJfRrTzXH/TJf7ornJor4t4O
	 UVHqXdMPipudQx6TLSnVup4PqsIOfKbp15X6quqZ+i3OC+4k57kSUaoDRnIJfnGlvA
	 IJtOoHjfoIzbIAsSWj4zOcuJycfQ6bSn6x6u2ubBdDCvfrQnkjpEhtdWaXvEIAft5M
	 cTWogXWDhoCQLo5Q/BZWa/baHfOb65Y9U4CnUb3dWaNFKi5U+vb2dpMuJwaZqqgFyW
	 0LlPMAjLh28rwxV0/7TUSXdvakULakeYOuLTpN4FvvYjaslca6kAJ2HKGhKJkxHkOU
	 b6dhsA2haXNSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93947CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091599357.20816.14571104649839548999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd4e86df26ab892b24ccc19f468af39afd02837e9645d8d1e7cb086ce5db67b
Date: Sun, 19 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760915993
