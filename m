Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EA128983A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753225194; cv=none; b=T6j0qaWx3zgFf+zk//udtsd1yhs0WDm7jbdv9/2PtuQR8UraY1YXN917KXSwgGil/lep03ajlNv6uR06XhWAW3J6MuU1jvzjyd+8R0PDXSpWOFoOFaW7wg+9W0I6dNCfR6iQ/9KFZleK/TwG2DIXgpLEvoU6P+P4mNkiF8Pni6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753225194; c=relaxed/simple;
	bh=u4gL57BabzJjb0M0XprRt5IClT4wLphmIF38wpbKO90=;
	h=To:Subject:From:Message-Id:Date; b=SMNpnUOasFblcUnPC+ngR8QUIqo/O88Mprek79Qd7ZLXaN/6iOSAe9+fvOfs9tN8mNIwLS1Uer61s9nPckJ13D6L80ufkWQl0XaSH1A6yugeQj29m+IaDLWgC+cG2js2SKCNXRXcoTAQl1ehYAOYJFb+8NcxHh6Xj41MHBLLQW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lj4DKVHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lj4DKVHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2673C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753225193;
	bh=u4gL57BabzJjb0M0XprRt5IClT4wLphmIF38wpbKO90=;
	h=To:Subject:From:Date:From;
	b=Lj4DKVHngoJXryI5fL8x5tNtZ6iycBuDMWHgJEmBRDT0glsEKDCDvFnEd4OFqcKYt
	 pNXArMJQUzhOyYOi9tIctW1NU1yytKlu05Ufy0gkWPFqCYTZxhxT1pxoGV9/5nBBBv
	 sztXEGygCgbYYYxxRQnfsad4G4LsdyotEzKfr9Zc71JUWPWTLPji8NyhWZvfCPpjwQ
	 wA4BVGaHMnS7WNvj8t81CsuFLApxRjuXorci7/Q20byR18wOW7t2NUJs1cxujdj/xP
	 2jBguVoQKwPLTKh7L1PFKVnAAsDTQyY+e7GswhTSCfOaFssx91OgmpAZzTCVuxOMW5
	 7+MJue6e8fGew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CDC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322519359.11880.12771787391859031843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8e5cbff77d74a09e48e7bf2c7df30e5fc5f4fe5a71a65d1e418a4aec1b0fd3
Date: Tue, 22 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753225193
