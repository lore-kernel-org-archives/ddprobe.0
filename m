Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E4E3A8E4
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714187543; cv=none; b=JYcrWiibDhK7aCPEzJqa+6w7RR4PH5xm+NLeW75HZZYiSbp8fXK+3wH3pEpUwYfOrKpN9z5Pq3/IOUe3m+yOabkfUPBd6yz2rq+7sBRko9ixJPnanZWjiF+70DTNJOciO29RNtTkyoUVfopokHTSAQd0vKcWU/5sxdxGLwfQm2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714187543; c=relaxed/simple;
	bh=Kv2rP1TRaAe++kWDnFwhjqm9V3LF5IeoySUxbMqWC60=;
	h=To:Subject:From:Message-Id:Date; b=pHwLljXG8DkQh40wuRcgnNtDScS05+IyeEj7nIfP2H0TN4KA/2OYubLhsleRIryd1KRHbDvUdprIZRQ7U0g2AW+YGCN/k40W0ZRvuVOs/Px/e0r1FZDxSwjOn9bDxpbfntOzVuPDQ37NrU+r2iTE5z2if4C7NBviq07WHL3t3mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLSytrY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLSytrY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D729EC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714187542;
	bh=Kv2rP1TRaAe++kWDnFwhjqm9V3LF5IeoySUxbMqWC60=;
	h=To:Subject:From:Date:From;
	b=LLSytrY1s1tChPHgW0+4vTmnMs76G3Te4xnY6jLhYX2HQZEGSDwCTUUX4P7UjvW1z
	 zPFF25j0XotOLtjNpcdGR2/YsfxEilw+KLrpBgYBrurhWs5xUlWYCp07gx2i2zOcX7
	 aBYjbXL9qxOV7bMNw9u62B2mhllPztCFEXwr/3cGVnIYsPZ2JdHiIzOKzm3RORiJO3
	 ZLXreuqM9B3vJ/f9kJYIoUM0cheI7kbCL8NvmOtEnSqpgex6ZWeySkeA6mqKD7/uQ5
	 2mFZlhtVjKuERKcDXF2ZRSG6IzjvlLIGTVKk0U43TtGyksNWbUAnrk/17MO1TZpFgz
	 DHGRv99VU+KUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C054BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418754276.1820.17171944000955784097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05af4f1487dbb7e1ddccf0fce0f9f9e86b6494e30fa08116d70aee1548ddfc6e
Date: Sat, 27 Apr 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714187542
