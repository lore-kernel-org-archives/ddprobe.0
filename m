Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C4F20E002
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738676154; cv=none; b=SlLVMiphxJzfYLzgeeba7g3/O+2BjtP9IJ2vMx0DhBDPPtNbLYftH8a00lyH5zTeezz7+B9gDjsDWKyZ6yqbQ+4pPFf0I5rtw2CXVLDFYJXwat4bjMIbARtMcaLDPngnn69ICYfB5pP/Uar5nIHjS3bqwiY2rJ4rEgzkPRbJpT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738676154; c=relaxed/simple;
	bh=LIlaQqr8poF3z+sq3K/jIS1xKRjXoaSq/8ZbWDaUPek=;
	h=To:Subject:From:Message-Id:Date; b=X0slkiiw9zTpYljGKqFAestcnAWZlhJGvhwGMHWjU8UQhp4T4e0OZucIWCI4bk+DiuKwIoj3LA9MRBwb+ILzl/IXwIwmjoUQ3Bqsa5m82TsjqjhQ5T6H/rPUONaYh88v3M5YwjWS7bCW4dtVllxwwYk0EZzEsEot31h20yqzWVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPoA6Mvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPoA6Mvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD171C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738676153;
	bh=LIlaQqr8poF3z+sq3K/jIS1xKRjXoaSq/8ZbWDaUPek=;
	h=To:Subject:From:Date:From;
	b=gPoA6MvxrUxOFsdtwGyIKisZ2oQ3dyprR3IbKMGJ8/cHemBXzvG+Xz0pNlAqY6zvL
	 JPPqD77/hrwZG0xUMKPs1QhsRKyFlpRO8OLOHVs1/LxtiUREP0F+XlNP8Nku0LN5be
	 5lcmcEbxdedx1AOr/R69a8Uw9rwPv+wTLwed4pYZUdqPRWGONXii9k+wosNsR+nsIv
	 7U5MpT43oz9OaK4a2BEkYHaUECOVc1hrL+Z8Snz+sqUKm80GBOOnyZUV8FV0ylQfbx
	 hNcOhbJjlxZIOyGgM0oalg+RewNq9j4Gezu/wUeMP5l+S6VGN33Jh+f/ZDsppwK7hE
	 ArlRWEjXrpnmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C6EC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867615361.21363.7977374435669325750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dcfb403a1c947097c26c3126d212c1febb64be6d8c8d8e96f70bbad73513c89
Date: Tue, 04 Feb 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738676153
