Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5E47E792
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786681234; cv=none; b=leLflQpncBkq9N6bdn4rpYgkxUtLL6rhsNg9id+9vDF/DgBzn0s6jdYIJRqm/eCgwBe6KeZDEDvP4T46AC54290MyzmA368X/9wE0tCfqjQS+JNuHBtSGRkmyoWMl0Y5OHxbjoSnuSwJfsA3jHfemVClhTnoEQKRIFCwfcXqwd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786681234; c=relaxed/simple;
	bh=gv0IILu8JKvfLT4YjmMQk6p0Hi+8OSnJMtOYmxsSvAE=;
	h=To:Subject:From:Message-Id:Date; b=IOyYOXVFstOGU5iIPymWBnjwmE1KpsnticVaIo+E64dGWZG0w1srgZieT81ZHh2HFO9D8HL9XYtCVtKK4ItGu+9hGZlzKHg/X3CmMJC71pxfhJG8ke1UbY1s3C17hXBOv2yenB3u8QWuTnwjsyTQGl6z2+QzPuG7mG+sJW6H/QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZi6mliX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZi6mliX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46D5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786681233;
	bh=gv0IILu8JKvfLT4YjmMQk6p0Hi+8OSnJMtOYmxsSvAE=;
	h=To:Subject:From:Date:From;
	b=WZi6mliXIx0q3wxqxDfv5UvL0ahWIq7J3vjCLL1GQqzfQx5tjn7hPRbYV/ynNBi/1
	 hgNzimPeZxjJ+hNQLHngMKc4+aJqLimBgUzE/VT4adFMxlw5GjqUcVYl+P9EBaO5S1
	 +RDnMFqoHECPtVJjR8kArTBf9CXcY9CZMdLBR2a6Sagkprb3f47oyWOef9gqHeoSHL
	 4pJbR7pAdhToVLv959LctbZStgOiFMrpN0IsNLCqHz+96SDbT23+d8JciHagzZ16uP
	 4NtqaTiudpyiE2d8lVjCoEGm2wYJWBfDRyU2dAnalYz6p6ga3YEf75U3ZidyazA5eo
	 gU2IVFL/gFyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE816C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668123369.18839.11441869208289519833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e248d09cc29876d41d5591216f9dc69944cfbb1da3d09fcd6307e10d6fcd9e
Date: Fri, 14 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786681233
