Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE08E3BE164
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779269435; cv=none; b=HCSeTwAz9UBBV33fby1hLvUuGDSkookciA2JEfPcwDmMxt1Vzvsdo7suud9zCFXKvatOSkvzZQrx5IzeTuGBql/PPQ1QUAkjXKFgg4rUGv7ksA/dG2+kh+GqloWAjM3RgEOA454nV+z5JrQghHBGtApA0vQw6mh70mTwOaFqAkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779269435; c=relaxed/simple;
	bh=1FhQfLllkGlYUPckp9gtqO2MseSbNnqFvpS+OMhAFzc=;
	h=To:Subject:From:Message-Id:Date; b=GKaWJPUs/RsE2ypbC0UMTLjiKNHEphWwL9aivxmUKLMipnSBhx9kDDQ6Qru/femffnshpIHFp2mW7hciHqouXpt6X+qEJq8jpF1BETuimW7PhpJrjUNziknPMfHmg96MjaL2NNG1cWVXTCLfaDlWHkYZIhAaKxcdTQaGZpazIfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCPHAHDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCPHAHDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46B4C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779269433;
	bh=1FhQfLllkGlYUPckp9gtqO2MseSbNnqFvpS+OMhAFzc=;
	h=To:Subject:From:Date:From;
	b=fCPHAHDbrbVR6LY6Igty70hBRtJgVELYQXc5Qq9fMC8Y3uUdrnC3IJu9HHQoZzr9w
	 uZFPd4L/co5bT53UfpeeoRFGCAu2wZEAZuxN9b3tp7DCr8PbaNDJpvHhr5Ymer+qyw
	 uiTEygQk56YWdwHR68rlqA54jjtVGOSr00xmnHUlHV1+94rXEQ1tJZnn0g7PI19KBb
	 ywIINA68XsTdzMZxSgSjSJ7lc92RkGU+Z703Sk9h/yUZj+VUo2lQmL0w26VIC48LrB
	 fENa5ephwTLluPy688l3Ps0J5KyWB324jHiKAq4mlWPQpQcPVqBmAdK15PIVce0CGS
	 w1H5QUEjdKz5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB666CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926943369.8550.2381704333286435056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c36c774e707759da9c7880e78758e6fd13c3826182172de2aed79415ce1951a
Date: Wed, 20 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779269433
