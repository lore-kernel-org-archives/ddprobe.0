Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F41D1BF38
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716201143; cv=none; b=kgDOIWcdzEZkYpW48HpORXEzmieFH8dRx/zZtAGmjeKYR6YLXxirdveTStPmCGZE6InGUNLfRI1g+4yzL2Qfav3bRx0Qj+R9R1Ox88JphCtJ+uy7O7l+uZgjcPnkbkT0dlzmXUODvR8yrLRoAHehvu9K/44sut2KDG66bF0KE2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716201143; c=relaxed/simple;
	bh=f7OiKIvyCnj9TKsSR+R4L2I9nSLr/vBD8zz/QEHbgoU=;
	h=To:Subject:From:Message-Id:Date; b=gkvYrlLQ/eZeCEJPTmcPG18BeIYyHbK14iZnFaix6/8Ekh158i/27Fl/kLOLtlTy6LD8gK2EPv+Rmav2v8TvS9xZUTLWQq6DjvCpki57CcAFMcleSW+QNdWOVGQJw1Oz+6xxkcovuWCgxjv70IkZX2I6Gx7pQDOO4cseI77nq+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtIgsIPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtIgsIPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC765C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716201143;
	bh=f7OiKIvyCnj9TKsSR+R4L2I9nSLr/vBD8zz/QEHbgoU=;
	h=To:Subject:From:Date:From;
	b=GtIgsIPsaLpr1+k1piYOogWyUV3n+9BnT2fEgsAHl3FsI3gLXkPlN0Tv0EC61YCwC
	 y3nW5Osfxpq3vzMrc4ZnPWSSsHMn+Skiv2HD8pgJQk+DCIFVpxybWCwKpXVyFhDzDl
	 cyZWCTIcbp9H8quHwhYHmKRh2pRRxFmw65aygbPIMQ3ReDWo0VRji5tECVrleUUsY2
	 riDdZA8eXAdOtTx8IwCkq8EJQOFRqhOO+KbMNahX3I9SEYctK56T2wCBvvHJ/hxQbx
	 1IGU8ufts3sv8YFJL8o7LWDSx0nPP2v1Owufv1SqCS3pV45AJvzWybg5uQ61GyEF7x
	 C+4fsN6ixzV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF443C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620114282.23187.12770135411959766274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf08a37a2dd3deed527645683bb8d15bb2b936f479926e984d35a735eb6d2d3
Date: Mon, 20 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716201142
