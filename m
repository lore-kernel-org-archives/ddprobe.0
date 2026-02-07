Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4692032D
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770482034; cv=none; b=WyPwE+xTrNaGZYWNa6SzrYMim8V4ZCvsZDOhqsn35nHZT5XvN0Nn7t/XWuldUNqvbSrQUjp76l/2fu8ULEXwFS6sVEyUZOK6mBZA4p5DAXSJ2uhvIn22tr00BS10b8jjQC4rFfUlDiPMNfHK81lxcTwJCOSjVjR2DhIRNrTyJo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770482034; c=relaxed/simple;
	bh=IzuGBg/0FeobblZIlfWDLgJ2ShTq/OmRMVjeyFNuqsU=;
	h=To:Subject:From:Message-Id:Date; b=ljYtmKNSCeJiyI4WZAWnjgIfPR/fxGKJtIe7LBcBiUt9Pe9f6i8x5NAs68T9zlgtxsy2j5llrJ9rZeF1GfJb01gSy89SELWC0BBqK1RsD41Cac6imSFhVCVqePWENcVoFohhAf/XNvI0QuzLzPhhT8DIyWBhKJK88zSYTfMdIx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkcrBYDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkcrBYDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4986C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770482033;
	bh=IzuGBg/0FeobblZIlfWDLgJ2ShTq/OmRMVjeyFNuqsU=;
	h=To:Subject:From:Date:From;
	b=SkcrBYDMGKre6E/KBrSaYcKxsqb1q19PO3z8cm5zT24sdRibEjB6FFnLWgZM9gSP7
	 t9U0px9JjwQ9RNm/3SftfCV9jmEEibz0N0EuEpgIcKdlnRv4XalMYL70g1tT3upRjV
	 jyUmAEE8VPTVUdbtbT9rXW9XKCVye6bFCjhzBf1bia/zLz3P3dRvXwsNiT/6tIACK9
	 6DEBPCsSAWSpGYTkriR87jBNPNof+DDzrfuc2DYIsDU/KNxO17o1dXMvoyK0O7LIyR
	 zZGljqGjYM/zcxGPRTUhYLyCQFy6fah1Qiu9bO2KHD5D/Mg7KITFRj8GLU1BQxGcrX
	 f3llj89mSltaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E0EE0AE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048203359.25136.14246296849204032690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2589d48e4fad9e9c66c158af0647c156f2109e1ac482ee41fe4ea87cf201a502
Date: Sat, 07 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770482033
