Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B9D2D9499
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756187394; cv=none; b=Gi70VsMGcFO7avTGiOpv2uAYf0mkPLMdlktpjO+6Ti4dPG0CcQ2CvUWyfCsR4WzmqWWpyAZVV8B0vGEkhD2L6SIIUxeQKnVdSEeUxLklgLilh9WFYLXAd6Gaqo1RDi2BtpKZQpbMo+nTc/qFeGFvesBgrfthnJ7GL89Dh8G8Q0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756187394; c=relaxed/simple;
	bh=qACgDqnQqyGr6KmsJf1Gjerh25UyUvNR/wdntZEb7vY=;
	h=To:Subject:From:Message-Id:Date; b=OGMsPg+0wR7+vsRgEVvXa1XC5d1KgI5MW6sc7bMNb3I7LZZhXcWlLg+IQk3ElSsWed2UhZbUOnkOuGzj4FboqymgKzwJC6kPxaQG2oyXRbkymbJoCwxN2r2T7yWv0PQNZQy8Cfc2g7R5hrzv9RvfHVDFk/RPzCWNuy0Qpeyx+DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGTTlGVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGTTlGVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE83C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756187393;
	bh=qACgDqnQqyGr6KmsJf1Gjerh25UyUvNR/wdntZEb7vY=;
	h=To:Subject:From:Date:From;
	b=EGTTlGVsMRQbKQfsNRifZGbePalnlUPxRs+GDsq5xpbY3RgOHCUe8jgXUMJPT9Tfy
	 QMPLEjQQGCjh07bky1YCYCkZJ/KtyqbSzT3UoNsDQmf2nvvZ4D6+XGaiwbD1wAT2QB
	 xMF2LcgTmI5+kLAyG+bcwqOq7fr7jhtCb3Fqf+z+f02+z4DZmx4xmPv8Tn4LCnvzZ1
	 LDOQPV2sto2Py27WoejJc3fm3SyUxVFlLRjJYqFX2iqclEaUK8iXpRJ8OuS+jtGlSq
	 sp1Vm2eF8h5kQT4xLU8Zf1lzA/P7P92YCeD7stT04vMii+6Z0TzvVIIYIG+acy21et
	 WowQ84ZkSqIqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16DCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618739357.16551.7204658347376360688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405a2b34f272c7b66ec0c3dc150f800b30cb8de09e5a2bcc9c7ef3999f8102cd
Date: Tue, 26 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756187393
