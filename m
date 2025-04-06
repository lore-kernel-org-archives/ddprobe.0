Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600F44C91
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743905994; cv=none; b=CCWxia+KOMtFhP+rKV7jD2aGruqyFR1AA5ZXpTvOa/VtCPnp4RPHPpfD6xwqRsuoiO3kZKuKjivLzhDNaLgQi/PSSJ8DEQcndtBIExB8RIfeq4TeEJAsY1Q2dMLsDHhv9Mt5AbRbpJIlTasGvopKUuUSH3KMh2mB98On5repudk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743905994; c=relaxed/simple;
	bh=YNLOAqjK8LCaTI/0uq7CkrZQLjKPpBAujQrgR7t2ygA=;
	h=To:Subject:From:Message-Id:Date; b=pcl3qs5/Qfh2e6kyXdVR59fUbtH1KlOUa0gDEa9ow1TRbXP46AnrivliW7ML3uyPq/RPyEiKM7IFLuFuzLd4kNOA0Ac5Y9IoAyTWkv9j5BgpiYBlXcK0IveiEgF+pRXLhNUYYqq40YJKMQVNx7y46pus/2jV8OPwRc3y2s7snsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfNDeG7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfNDeG7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BA2C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743905993;
	bh=YNLOAqjK8LCaTI/0uq7CkrZQLjKPpBAujQrgR7t2ygA=;
	h=To:Subject:From:Date:From;
	b=EfNDeG7/dyJhZSvEO3QclGcQuRnSAWYExsbB6fLwI/IHeGg9FicfvJZezG+XNdFdV
	 yI914k1PDFCebCUkm4Mz+V8DbDywLxPbhtJsoTv4hK9duEFq6Asv9agurzQ8zyddUF
	 JT0iVayNF8DJSe3lezDTrqfy072A7lHp+6wz/ukMBRrDSrH2hC690N0WQk1oKceq/U
	 vNrjJPboFcZ91ThxGSuNgxazYAhoQ5lETcEutdi4DCK+k2L7By88riCUcauDKRDEi3
	 hwnY434cHHK/Ij3ZRJ7j+Vu+rd7As7CbE3hmPKq8DMz/00uQ9NoCNjH+wpAgUuFo0i
	 gS3tcAlyT79XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4E4C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390599360.24643.1183322142426584549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773fd76dd83669ebc7bf3d49f7d527e42abdd40eea311bbadf92acfd36276527
Date: Sun, 06 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743905993
