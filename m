Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7688437C0EB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781868394; cv=none; b=TqBq1Km6pYVbgECUs8BqYoHEuHFfNARD20c6+SnQ7zpmUcqR+/xAsJ6PXhwOzv+p/nhZau/AEQFJwZPpegp4XtDTb6AfoYMPHnndQSjznvHXKnuM6yYs2R9y01ECKL37aQL9n9XDuEvC9BIWY97gta5Uu2HYma3NZ2k3DLYzcnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781868394; c=relaxed/simple;
	bh=Xz4Jp07FhW5B+RnEcZP3MXn5jsbJBXpLWI0T4XRGK6Y=;
	h=To:Subject:From:Message-Id:Date; b=W8lJsIqQfRz+PJf7SU4s9N7tDHnPt0gob6/6PV3lAKFsbaCzYbt7quIf6sPIwgTSTmX8McZj6wMP/wJUJe7J7Wow96g0HhpJ0lDdF18OKBK6wVo4gZH/1Lj38e7rnsJFVbGZZWMDz54POrPJO9IiK/RFMFi4yv6Rx7buXxMc7Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZ+XVNVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZ+XVNVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2A2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781868393;
	bh=Xz4Jp07FhW5B+RnEcZP3MXn5jsbJBXpLWI0T4XRGK6Y=;
	h=To:Subject:From:Date:From;
	b=ZZ+XVNVgkZNAa3kZjxxRHKh32BZ50/yYinIC8PW0r43OKgFYOmBaSSCKgnByV6hAI
	 HTDggZv/Q/zMP9GK9Qx6cDs+M2S2NOEDi0coiBQmzUxsq+L84eWtzaicfXbtcMakkU
	 SscuHAIDh2d8+ih7dRgXTCP+T9tLZbO+phuJcRnHKN17jksG/ma8e/4EIEHUHnuf4S
	 jGi6rVfL1pO6VrOPilisZL8Ge9q15a8UoWzT8jlPZk+q6CNXBp3DlIwD0a95GCbkpm
	 7NCwkK2QapupwH5V3M0A/4FyuAFCgtfDN+qOknuHlbS5d6uwbDynpbXWdWhm2Nuh0L
	 BHo6EeU75pxKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14EBCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186839371.23015.12483529080161611989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef587f59965d4d48696a13591cdc1f883f890e917e05165a65a4b9ac373f5b8
Date: Fri, 19 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781868393
