Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDDA1A840F
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734687354; cv=none; b=siK6EbsY5jftIlpmKRWVqeI1PHkMbqDYjgA7iO4uhDhs8jC0+eBMtRHbDCHiW7gOT3/2uMJOlfglb5QhNrHECF8ivA9nvnMhsAYdryKiMaT1LqzGehW236IKjzPtyFbKFlE2Dbp+OLtM4OM1jTNQWuBs28UQBxDoEJ/JImYOIIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734687354; c=relaxed/simple;
	bh=oaNxEqEQx2eZvEXsJ4bgxDG7M/zKRMkUIi+OukX43n0=;
	h=To:Subject:From:Message-Id:Date; b=i/4xnFqHdjAE8Z4lAgCxrH/m/28YhlBwlSKfWhasrGEOKMXHf8Dt4nyUx5eWm0qH3SzSCcaciB0Z5o8M5e2+xshouGseTAHBRHbBXPsuu/dkzISXe2muwoJvXJmTBzmQzKxSNgEP/merBVlzR4aRpIFxTSTC1EnQRcJlPrbU3Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFXQEU6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFXQEU6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9608C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734687353;
	bh=oaNxEqEQx2eZvEXsJ4bgxDG7M/zKRMkUIi+OukX43n0=;
	h=To:Subject:From:Date:From;
	b=YFXQEU6P+wRkNSW4jUB/H/Aa5ntk3X8HEJIQx8SqDuIo+70gRuDg7aLlKeqeO70+a
	 QFUo6cUNshLwcWfNOMLJx5p/o5MX4IeY+cgEoxDch01Cm0KF/A6aB2x+Z+V+1DeqEj
	 0dQAfZ3hRfQ8fpDiC2zyWAHIVA6x2KORUWy+FI0kEVYu+dt8zkEd2B58okfAK85MBy
	 xymlaj0QY/sWFkYGmlbJ7YsAF8SR9ENUbHHwgHhY54mZ9Aw5IOV1tTbUFTqUvV9uyu
	 JCXCwEJvrbU/vf3b+czsntSIkJ9wvyKKfRh/hA6KBDRu4NCel9If57+xs09AAmFxDy
	 Vf/CB1q3T8VOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99110E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173468735361.26698.9662907205657008530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b649ee516b029001e8c0dbe906ae010e11556f9b913f95e237d68e806d09af3
Date: Fri, 20 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734687353
