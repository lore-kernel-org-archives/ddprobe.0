Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879F1A95E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791248434; cv=none; b=E29m1TrqgM8/Ki8rrjvDYeo88zkgAPGK6mU4VP9UZ8xQ09hDNCeBopgPtKBAviMe8cHMkg6221o/fG2/ZbUZHn1Ncp154rqDfQLewHyOiwW/KCOfeqmdqzOLqQV+3yBed51iDnSk4+POcwU+Q7q5G9n2d1EBgPVxqEqwhRRmXfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791248434; c=relaxed/simple;
	bh=/vjXYKwa4hphloauetACsV4HIwhOgdKt5365CpmlHKg=;
	h=To:Subject:From:Message-Id:Date; b=heaSKjumdGcLhDe5/suZZCgswnk4JoU1S/oYWD1/xdswTN2Pqc14g0huncTxRRpmevLoHBxFUWIvxvE7cQp1AORO2Xlce0Nxf3fESrVpYUq+T4sE+22zcExCQoJyGdMa27V4wdGP2wQyxU0rJp/C7mP84/EQq+KaACkbBIAoDUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnPucCf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnPucCf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C1CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791248433;
	bh=/vjXYKwa4hphloauetACsV4HIwhOgdKt5365CpmlHKg=;
	h=To:Subject:From:Date:From;
	b=YnPucCf6fJYLx2+hiiJtMPeJlgDVKmUAUKsNYwg15CmXCPATXVeyGRIxF9S2eHl52
	 OklTrHPeeCqAf8rleYH+gTOKwde1W1Yql4Cfx/+8dsG+AgAVkIbYy0JK2O8F3VwDJn
	 UjmAW8s8dKaniW+KzPnfTNq/TdUV3VTM0ddC0ji8UGILHHIGQlM+dsSuc7HcP2WoRL
	 iw/aEW2DRzj2djiH+h/x1dMpJWBrTRl0jsp5y2r8hTIW6nJkpIiqHx+0KVAWrkbgIJ
	 up7m8SPQC/SHAFOjEfo5r9NsQmoCy5VCxUbCg2BpRxmMTG0hf87zKuYVjo2N2BWJMh
	 8J2N1jQcwjY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3F4CA5FFF
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124843370.28786.13632528895885268309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4768e64a11ca7c9758f0a8b2e49f225546936ba019e50c8acfa015e4438db566
Date: Tue, 06 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791248433
