Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186718F49
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769472234; cv=none; b=ALKcY7RJpN1C1V+/yuFXPgHiMRhIIxrrDLxJ9lS17RteZQcCUXaSNF879njTBsuIsqyppu+7kvryhI1vcO4X6St/HqDiUeKTdU2D7MxI7OyRk2sR6QO+1c8GAVf7DyB51DZY+b0pkMMkamDhcNTys0+AvULOaCSS4hpZUuQVGrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769472234; c=relaxed/simple;
	bh=XCqKfg+S2iAAyJRj8q8aC5vkaOAMSqJV5qUybfKqYXM=;
	h=To:Subject:From:Message-Id:Date; b=V1aaMJ4W3bH5RjSDh8O2gMs9xxTQjYDM/hwhtPE3bKdxZjC1rLfSRHqT1YPt9w55VG3WJkIV5cpYDsdQ9t7TllRgHrPvAo/hFcF+k7t6AGIXwW8eTV+hqyNAT6IsqDY/TwAsQyGnaQKxAPcaqQfqNodC5Nf3LZdxLp7uBk/4g9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVJ/uhyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVJ/uhyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B35C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769472233;
	bh=XCqKfg+S2iAAyJRj8q8aC5vkaOAMSqJV5qUybfKqYXM=;
	h=To:Subject:From:Date:From;
	b=WVJ/uhyzFf0hDYS9gkb/iu63Ck1KDI/E7aSIAtjCKJQ18ufsgTFPBb5lprMRVaUr7
	 kN/Ynm3GtWHztc1dODZnSMoHJ/urytDLuj/JR25VqElCCHH96cO66GaUNGtUynnd/e
	 fDY9fnWzlUswUp6Y2Htjs6rT3Jd606REcWbbktPVBfzfUf6Qj6/orXoDCIfUq1NK/P
	 QesdK9TzAgu2E6QA3DhD3eC83N5OiqZxbbnIa1Fldlv9vvEUgoF4JmPUU45+sfW3D2
	 m81XGwxEnlUNdB9Q+t4Le2SXuqX4/TMmM1bvAPl75cnOyL269dV07y44jUU8/0SMCw
	 elzoKm7BVP/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90185D1953D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947223358.23143.5007603580125313845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31e5fa1cca05441d4991576458a867e1b1c5a898224783690162f1400c6c717c
Date: Tue, 27 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769472233
