Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C82B634
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755224394; cv=none; b=bZlkuV3dDMaJUpp9E4BAvqjmAHBZJpAPQWef5dF4kJtDJKBmEUNdOvoyT/9yoWzyoBkbPHk0H2ApDTFXxwbg+nCDq3n6xJbwK9DLDxhE5E4fcdCEGnD0wYFoWjh2R05vTdj7MxLjc7O/FvvzB5q0/YAfOtSQb3CwNB7dYUQboeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755224394; c=relaxed/simple;
	bh=dKHC1qMmXDRjYDc0HxSZsHRWm0ztYHuYHUJoevlQWao=;
	h=To:Subject:From:Message-Id:Date; b=SGVX42/Uwg7RRXmZQxPJ/xUmyAhKMAjwkztp8JvqKbj/pP1SmBLJ/XSt3JFkpJ+5J19qiidkzRHa2eN+R7moPFLwwLspPHDeMv9Kfk5MjO34taYjw974XExP4hQXN6q0w9y3M3p5fAb271bX9cZxQ7dXc8R10z2+o+1T+Gtc3DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmbL3s2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmbL3s2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755224393;
	bh=dKHC1qMmXDRjYDc0HxSZsHRWm0ztYHuYHUJoevlQWao=;
	h=To:Subject:From:Date:From;
	b=EmbL3s2mfUKLRLW5DgOLNGVMP/J9Ak1Zffau+s/2UlSqcKW74Lo3e3X9DrBaIpA1D
	 BDApJdPgiHUh+1I5EXRFBiirArL7LHl70dXEpLLcmb2JyTMMvV0FcfRJPbfh3q5XRl
	 feNHO2Sr5rrccLwYdvgTur2O1cFtNqN+hCBnqxVsuKTaQtREwZLM1ypxLbV/QE0r6c
	 7rsYvTk+EJNauMhvDOdPR6jRUwbwFvs4vR0Re14qu2zFC3DY11DxKbSt9+wpSRiWCM
	 MeZtf1VMBuVrPqJ3rZpcfUg+yKu4NCU8GccySnnSC65u4dmjZZC8WbvM2DtMKaJ707
	 lVlZ85nEWvM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BBFCA0EDC
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522439358.7440.4813271074551678422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a98611944d9ab6be4d02c62cd93fc70183a504e6af50b5e905fffacfb4b0ef1
Date: Fri, 15 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755224393
