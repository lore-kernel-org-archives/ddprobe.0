Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEBC310779
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766143434; cv=none; b=Baw0QORcXDrPpd49QWv86Pe2u9+HBuHyz9rDFM+Ntj0sXF77Fxqhz1MBybGtyzA5fMM0B2zbWm8P4o2r8BNppJ/maOT2ID5Bg8jIApMhDzeljmmIn2Up+oT4rNlYt2V3uMQStiqTCUyUuMam+i9onIICC2moULeFziCTNxJivK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766143434; c=relaxed/simple;
	bh=inqDKrrAg+EUiN+bCJHSV0Brwiq+mBCwxYqKfbSdcrw=;
	h=To:Subject:From:Message-Id:Date; b=Jvl0zP4D2es8jjjyjaYqJvN2CK+MRgrqDdOdfuBStU4Awga5P2SBVkAYURapSzaavyu/0g6TcRNHREmXvMH2dvN4Dixm6HFVc36aKyLayDpav7ghPihorGd4pLckkE2ZQ0gSvYz0IM4k7DZadDiaFKuKRd25dAzju52OUS8rk6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcsG/m/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcsG/m/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12C4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766143433;
	bh=inqDKrrAg+EUiN+bCJHSV0Brwiq+mBCwxYqKfbSdcrw=;
	h=To:Subject:From:Date:From;
	b=GcsG/m/Rp27tyn0pegWWFisE8lnJJbLIIxlTlWpOxoIwVNB+EHPwtRCo5IBYhzn/U
	 Uq6FSc9w3UlzMXqHDKgEAUp2QHSXgVaFDChyqp0wLOAexG0i22eelOIu9vynVXhXtM
	 TFB+hFW5mJ9f2+OZtMBsQpmF90xaM4V18iWzkKKCdpehfC7KiSu4ilQhvIDtW0enD9
	 5efOUkfdi+SkmADH+mT3v07l6e2079LduMsOGL0itwA8+t1NsEeLspYjHn81RdX+T3
	 otzA7U2PF4zqRLGBGKWzoF1cbBDwjm9AwGIBvHvCvYS1cMhY6Gxn5lcNp33KndB8gn
	 //QMm/jjdUa/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73D767CB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614343358.7531.14316707722896449944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7859a1e32845d19763c77b0ebc55d7ac60e5ebdde4ca8d3b83e74345bc2c82
Date: Fri, 19 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766143433
