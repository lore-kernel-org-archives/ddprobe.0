Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B598368D45
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789473634; cv=none; b=tXU9MYmHQsDazfHYgyLdaqj0ouD+SbUPvSgg3xjlv4ajdR0DWuPoUUYj8NtMsLBFNTL6rGgnZTVyJVEI1QS/ijjqML2gjtiTr3lsHogtLCtpuG3EjFjRyTASILheygQbumm6pnfnPn0Vy7SwnPWcRyi4+gYIT2/Jv9LeBTXx1r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789473634; c=relaxed/simple;
	bh=2dWlkaKQ++6/ClhWh+LzK6mZQZdqU/CoZqlmD5ADTXU=;
	h=To:Subject:From:Message-Id:Date; b=KXUF27RnHAKI1PAoy/I1Mrbzt5GaOiC2Fx1ycPaUv2ZLslLpuqoUNSLUGTKIm/R8sNLdRHXvTcv8zF5BMbGOwSr9lUCdpT7lMoOX4byK9iJ1usgB1gDYC5/cKwZH6n5HCxltqr3SL9VyOD5YEnxBEF/6kx+muAd6WZz8FgGGnAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3Z/Cv4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3Z/Cv4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0698C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789473633;
	bh=2dWlkaKQ++6/ClhWh+LzK6mZQZdqU/CoZqlmD5ADTXU=;
	h=To:Subject:From:Date:From;
	b=P3Z/Cv4vzDxsT3v5omEVOt2psY0Cj8dso/cY4mJI3eoiSFg/1zVfpYfrJuQVU2kMe
	 cDLntWAHKhzTrhlRcjZPkBZHzaQnWgy/w1063G0FsL5PVGSEv70J7CUYGO3szOkqJL
	 +0jXJJz3plKBHkcgEdwve2C/i99vk98ft1tByl+4BjlfA8EYIV1NfXPyTH1IZ5Lmkj
	 sCNPICMvkKWHTveVWCe+1EO6P2TiFi5Yuln+VRe5nqOcQOPmMryhI2T9sBFccITUOd
	 tXS5gMtON9QGjEMdvd5wwfm2ec58INGe6+YO2j3Ae2KwtOnN2dc4mLUXYhlbTvAdJB
	 YYg8i1PSSwUrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB38C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947363369.28160.5261976126402400113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899cc98b7a1900594a635b95f4bd7ddc37632ef9044bd9ee53391e32006071f3
Date: Tue, 15 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789473633
