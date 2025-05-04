Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FDE19E7D1
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746353994; cv=none; b=SniUEqgfGctYeEyK18m3AFd8RLOu6v0ti6SZu1l/AykH3/b/IapguIOUjGdxIvMyBH4LHrqcbuoKiQ0B6YjN2mkWanqDsQPsUWfjIojASxBYs7v+wQiGgfRNSUtgDb1HZ58x5mRGFFMWlYSqxsymRtps3TgTMQPKYuRxOr/mHFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746353994; c=relaxed/simple;
	bh=g9p/9DrsEP4J03i5X8AMVG9Dr8g/agM0AOfL5tAgQCs=;
	h=To:Subject:From:Message-Id:Date; b=q3U8MINMPOw6FJpd553Qde7pjxmXjaWkgT+AlilVyO8GBnRsOPLU9P8uku660HxREbApcsZDMBPRIEult94y5q3igsOcQ8mbN7IQDYJgTSB+QimboCk0X73S3d5jBQjPeuLcclXPyM6gD+rZRTVTPmCTfBGm85OdvZeyOJuAWJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZ8bHwdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ8bHwdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1733C4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746353993;
	bh=g9p/9DrsEP4J03i5X8AMVG9Dr8g/agM0AOfL5tAgQCs=;
	h=To:Subject:From:Date:From;
	b=hZ8bHwdAdO7kF4uTATlCIJmMsI/LEDijH0iuWjW6hxKeCFB0GrMkE+NhZEHKiBMiA
	 jQspBV8/NNUA2XuozSjsD5hECWx9hBZpZycCHhMg9E69wwsGYIgjrPLkf1np+/Vrq9
	 S/WEr9nm6Cm2/xvuCuuQMjrVxJNw6KNhdlf8pseVf2uBtRZnf9qjxqG15wcShHztry
	 1Rf0GizgC/4cMEgz8gVWJMc41TdUyC8G+OHYVNOWe3sGriNcRLIqSVkiIhOjX7MPnt
	 v6XESsfcZudFxw9j/b7t5wQAsORYRia02I97/y6rj/pXfpX2oQ9NY9StJc27EJUSLm
	 C1ZYiAVpHGBrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90340C3ABB0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635399358.13497.18437747212205264192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7472f62ee92794e197d8138835dd24a210ec5e212a7193ee0c81cbf11174189
Date: Sun, 04 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746353993
