Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1041A3AB6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725305754; cv=none; b=YerZiK8TciE3Ihiy6g9zxnXM40shI5fjv6HStGw0FkS3KemE8QPxC0/PEBcmA9rDVL2UJokM4meG0QbAW4lT2Sd2tn2Vat6DUPzjG4pguBaNMDWDbtC/chxsMGcNOiL3bR1ZCE6OfSWhI/s6FiJAap3pMsMxEFs6uIaqwJRp+hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725305754; c=relaxed/simple;
	bh=sj3iUlktW+bK2x6/cbYpC4bB3437+pi3zRG1Pr/fN+k=;
	h=To:Subject:From:Message-Id:Date; b=MpJN4lj3g1FkLhcRGvs+3h0k/nE8ci2AXgYxDojId8GwwPpj88wayWeDyeCIJKS/3EcG59oftRvNnwil8kRMrNhIJUwbG47VaK19LSY5uZXy7vC0U5itKXNo1P/l7MWabWpxwcZij/5yqrL7ls0fpEztpSK+xNlvRGT68ljFzOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Reg4Lo9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Reg4Lo9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F3C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725305753;
	bh=sj3iUlktW+bK2x6/cbYpC4bB3437+pi3zRG1Pr/fN+k=;
	h=To:Subject:From:Date:From;
	b=Reg4Lo9HR9phPYXqRaGsVbnqKOLAQUZDne374Qd0nOZbI2GhbMJxxMIYYKVfSnDC6
	 L2b/we54A/tVNMV3++nJOtCofowJTAvNAHnuzmD8TSd3BJG0Z3wQDVtITjRf2YMxTu
	 y4aZgQcyuvu92fFocg6+iWmqxgwUFR4hpLAB0QkTG14PvvOr54cSntGrBRxb9OqQe4
	 aG76gUU3eDojLQ0Z72xiSdxuY6ihCtwGnu/1crbKBXXjmSpBnbSTEbkHd4pAgBjS05
	 9wSxqJraqIaCsWiILiokpeOOwT0SsjFz/kouD12REtwaU0kDza+QFb8szrKgG2H4kt
	 MU7ny433oU9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAABCA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172530575357.18588.6603992788111383610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e4c6fb785a62263f6f557f186b5cc6b489a5e60207699de29f1015521e0d78c
Date: Mon, 02 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725305753
