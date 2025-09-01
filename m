Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1457E21B195
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756751995; cv=none; b=njs9TcCYXsCOvfTdo/4jOQa3JFCSn5OE3SZpgllyRTirre9cRla/aAID2Be27xE5PMGHrM7SeOqLXY5GfULf0aer8uMY1Yv5xR85KhdF2KaC+EhZH06SJL8g/tKiBoRyTjCenG0dgA4CrEE1tGjN3zkXIdMHp6wXm4iZnOEAkFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756751995; c=relaxed/simple;
	bh=moDV15erf6o790Io7wyxIYl6lEn/cFTI2f8sCMVW/lo=;
	h=To:Subject:From:Message-Id:Date; b=QrbSOvCpxniPHYdvWeBgeQ0+EIU+gWB7Odc4dlYgl5WtaG9Gl0aWQCBsVP/5qhmC3S5X3lE080ZMTgSQ2CMPj/X7UrY/ThHUMggkRc6wObsfa6UCBGyprJrWnL60q4k7XVPplCI2ZqcJlrWOhKPMHIVFXWFC4jWObmL4dgnUTOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND0Y57EP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND0Y57EP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1043C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756751993;
	bh=moDV15erf6o790Io7wyxIYl6lEn/cFTI2f8sCMVW/lo=;
	h=To:Subject:From:Date:From;
	b=ND0Y57EP3fpkQXf2mvP/RKnKV+58k4jLhyRezW4/QlEVwssRM/YaUJ/vNOJeXkqWS
	 /2ta0Eh8rNxslZoSPiwWZstiTIONDZ2UhOkdA79AS0gh9WKAuwt2hvxLsS4kSH/Jso
	 L322VYGU+wXqZxvmDDU8RmGKSfPuHyd6/SpyDVMPY5x0ethXYeirG8oejrx92P3I/7
	 KqS3c1nb0quuY9UUYnOlsY474CbsuBvogvkhT6Vtms16FSmTDvZyAUlGVGFm1DnWaT
	 oRgh9R/FGzkeXrEnql08Kn6RJzzMqoI2temrC/AetXLSudO6/jVTh3Hmeh7vP/HEVB
	 pRKbBYFw3Wfcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A9CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675199358.7853.16850430781098642863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f3be38ffcd97511af1d85c8380e408994331444fc11888e7eba3eec037f187
Date: Mon, 01 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756751993
