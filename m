Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFBF1E008B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745020194; cv=none; b=H77+NdNtaBa2RyG+FuR03ucTahxmg5tnnvIRhTc8JIlVvl8hpMl4ZvXlp5FoTKvEcnmVFmv8lCsyt+8fzJwkCOXS2FhEVVZP7JPNMYgoMEuxvGyLmUy1IDcLupg6V75Va6FvwDBvF+A+0hH3Lv3H8DomxkPpGdl0tFIyrB0HpeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745020194; c=relaxed/simple;
	bh=Cg+R1fhGpNVZFz7VIWMW8USEj9210JR8GeI9Tf4luZk=;
	h=To:Subject:From:Message-Id:Date; b=FDjFtMUtuoMbAd6/QEwdOYVGxOSQ3lUdoHfpm/nKrCoJ49KHw1K+04MKQwfMbODqysYMxnwJPLqf/EHQahXVC1Z/tsNMcWycxfNUQNXUXPHl7+Es3sdDyUDmQdfCjnVTmnQLTwlNGTyI1j/bBdTMtQ9Av+UTQWS5fcjy8oPot+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tup02E6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tup02E6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A3C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745020193;
	bh=Cg+R1fhGpNVZFz7VIWMW8USEj9210JR8GeI9Tf4luZk=;
	h=To:Subject:From:Date:From;
	b=tup02E6/VUEztg+gouIMP+eoiQTHPEiOQTDnorXir8gMDKsZ/l+s9CE4YrBd+uILL
	 yNZh1EhzSLb7hp9TINX2P/5KmA5YTbmm1euuBQPQuU46G/vqUHqDjT86NO3gfBY23h
	 gA+zyiAKuhoF0VGEoLfFrNGN1opUA25dR6eg8FtZzEzIvfG4uXfUv9jHybGvIr/iz0
	 G5BkF4ge00f2EDSNRJ5jlMhpYAmBWz++WK3G3HqwP6tC7McefpOJ0Wz+PALmO0zPFN
	 csV9LaRqSDhYPmP2xM981IG5eegmufX9XeIJzrLjm89p9PifxzfKoEpIHpe0Qv2tUR
	 cfJ72APtn0VKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CECC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502019361.2802.14114464400636320578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308c41708dd0b6289f6431fbc34b6d7489000b74f58643c001680b9af8bd8b6a
Date: Fri, 18 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745020193
