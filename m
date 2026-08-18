Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595FD37A85A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787085634; cv=none; b=LhbTehsd/qyUVRTnbgO4b2Uognyf/ExyVJPxWYs+a5t+mesfcv3K0Or7ZmdlsuIGX1hYMI6/QWBA7+JOYjdrlOMCiId12BRJa5eCRcWUxJlA6mVh60Q1xzYalo7NbL27cevZMSnnDbJGtRRHNzz30jz90Tn+8FwPrgcNsL4l664=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787085634; c=relaxed/simple;
	bh=f4sWq4nTV4N5rnhBCGSAlBEnhuwib3q0CYR+1h5aYag=;
	h=To:Subject:From:Message-Id:Date; b=QTGsI1trwHmoq2VHmwDA1JCOPzskMSDhBj+0Y9OhRlIbnTzslxjviS3343RpKfejqUgA0bpRE3oi45KPjyW7PNbA5D9DPww3uKq5pkLnidBiUGMpeklss+wsa9qd5IhEyPuFakuqD3teQFZoONOr4gazEo4YYtTSWe7XK5Yq5WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAR2WHpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAR2WHpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA5CC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787085633;
	bh=f4sWq4nTV4N5rnhBCGSAlBEnhuwib3q0CYR+1h5aYag=;
	h=To:Subject:From:Date:From;
	b=eAR2WHpmLv1HyC4Hb3NCld3ljuq1Swmtbci2SGCI7P395kSQ/vVNdTd3HY/k1/ysk
	 rK0/lucu09h5LH2JJJFlt89sPVKW3fCbtfnb8aPTrktZoPcoRJ3uxKRc2VjR9D4k6b
	 xt3L4ouyv52hnYIXCYn7K7wLep/JDMC+YwwKZetpEeSyCcPK5hwaRBfNGRWMB8T7sm
	 dr11YmZ0lVOyZiJ3p100+kR4Y0mvKSvFh6S0M1SNvNR+AslQh/cKBVpCeZPLnXeXlb
	 zBKXHKiV2D5lzruVOq/0+gPoiYj2HI66VHuIK4q3Z1PlyFwhuTMl3FwMDn1sowzFrW
	 TyyvLvB+4FVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE004C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708563368.2333.9018177286644998697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e38dfb269e009f013c1524e7e154c8d09308f8b53891dfa5049b65f69e5237d
Date: Tue, 18 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787085633
