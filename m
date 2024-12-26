Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225EA1448E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735179354; cv=none; b=pUHoV3jN5xR+RwSuMja6Di0QWTJiJTg3EzJG/uPIGeRCXDsYGuQcLcyFPMWxq3jeRBIrNK3KTdfCr9IX+PfI3gX1yGOXY2sr0ctReUT519hoEoWjPrKS3LQAinVIW+0CniAfaSYgxjYwmOiPfI9xhZNKdt64X5O1fS0Wqcrig90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735179354; c=relaxed/simple;
	bh=ck4Uw0HzR/nl5RzGlcjjrlRUO+ex0fcGB5lbm0seuaE=;
	h=To:Subject:From:Message-Id:Date; b=caPXm0U6+82mOAvO5HGaKoIOG5ACfUATc25phRdV0kPJBkaYlhERTKNl5PxeW1JpCRSthgJib5c1JQ0SRAznI3Qeojg0N+CJ0K7af0V2VuJoCeuHui9InnUoNs7EXiMo7ofmrHZnIkfurV50gX8FGZuu2HUICwG1TGkCWAt+Gr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+MdInvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+MdInvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A3C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735179353;
	bh=ck4Uw0HzR/nl5RzGlcjjrlRUO+ex0fcGB5lbm0seuaE=;
	h=To:Subject:From:Date:From;
	b=U+MdInvthbzm5WMRPF7Ndkt1XaHATOgMrf0QFQiZ+qqikZi94aEudfzE0DqvHbvcO
	 6jchNeEz/ufUzUv3OntV61CCzlMJCcOtbXxZS3DwpRWJU1hVMwViJSeU/t2F+0CUp5
	 J8OEkYDghvY0YIXar0Vs2sIwczLjN1gmMsy9bD1YEGaDpMLh4dCvZrUjyl3TJNg1wn
	 bYNlZaX26oUGQIvTweG/JqrZpkkZorkRwXssmjQYxKQWrC0TwpNPSCneMZUb89YIZE
	 a18h6q6lLB/j3+wXwc5vFeSHSynTR17FPE22/TbnR/Q4SnilnnOq8fJQO1mQ+/N6+i
	 euEi5kpeKC3DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93991E7718B
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173517935359.16275.10923723659006762492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9618845af61bef2ad3997974e111e0e0401f48a09aac699744e5386aa8f20de
Date: Thu, 26 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735179353
