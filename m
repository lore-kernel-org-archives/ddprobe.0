Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0FD334C1D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785051034; cv=none; b=r6x43JrFw0XJ1Ds65/qvx+6n7Q50kZ3EZqgde85oHL7jyrokRJY3Fne85+spMYM/J1wPTHhsS0so54aYBlKC4lVEiR6VinSLNveyqBwlh5i8RwQOlQrbcS0fnNufnHdzGw3MhYy16iwzLG5c1Sh0OeCz8fsX1+6rFBtfDhZwHl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785051034; c=relaxed/simple;
	bh=D6++q3XbneR/uEL1Ikiy7EOtte5AJSW/Vd3v2f+dPW0=;
	h=To:Subject:From:Message-Id:Date; b=m2QjNbp5MaQEFXX90XnPaQbNnFdSSONHUAMXH4AJk6LKK9kjKfw7rEgFdroVHWrSESAW8ffLsYeSb350zo3Hv+G+eUGBA/TW0Jo0kycXkFMVfkJL63aYgK+5REi8A+7KF3up83LZ55DcGv0qaVWvdi/VPt+uvqFsN9PdDRmmC8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKaXCsDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKaXCsDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EB9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785051033;
	bh=D6++q3XbneR/uEL1Ikiy7EOtte5AJSW/Vd3v2f+dPW0=;
	h=To:Subject:From:Date:From;
	b=WKaXCsDhVCh7m5hCFFZ3V2JEhBJlwzB44gulNqiZBSZNovL5r/aLKxIvXHRqmVfDf
	 A76R+hE/pct8wjyjnxZae7X8c2N+2sOHXaQ26e+zVFmIKbWQ6KWOHbqp7nOUPBUGhb
	 +HO8gYyy1gTRdrgSPjFHMndRXYoyxBqAdcSCK3v1rdO8pIoUzYFwc03i06HoUhuo9o
	 Nqxyg9LHbhQHQNCdvCmFBICotupmVRZ8XX6EyHEVIFAd/Au54cyyYaCKrghW33wLIj
	 EQaewlOVuuwweATi0YU1srJ/53lEB/gPqpo+c4fau1mUuzG53juxrJA47d5OluLuHE
	 MuzWeTelMmvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F3C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505103369.19533.9550901514385042919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592047c6cf6302aee32a7a6207f08704baa7e6dd7dd4ac16dd8afa3f4d0c8797
Date: Sun, 26 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785051033
