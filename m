Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3C633086
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752922194; cv=none; b=CypJ2WoMSbMzX+i2dGHj0jYaioOwGaDqrbjNwzqnGKCSkJKhxttRdkDukU43Q8IghWFf9pP+ZtjT+mvjZwZCH4fVPdQI7Isrk+mIEcBtt+AKHz+Swbl4LYzs8uwmX8XZQQfxDwCbImBEnO1en2/GX2lsKfyRCveon80PjHo1VJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752922194; c=relaxed/simple;
	bh=fOypUnZ07Vfq47/xAm//SLEltxqKINTyTFl4wLFFaa8=;
	h=To:Subject:From:Message-Id:Date; b=nTnLUWwiL9HUDTVrzPa9n9j3zi6pwLHCTNl9z5rZV35NTC7BrSqATvw+v8eG1ROYU+9lmTQecxfIQHSgPTvEmOMht4/2mSaeF5/MuMKuXKRow+W/XH2KjK5iFg6/J0dzC2hTPIM5cvGgOWX5PTjVaynXMGajY37SNaAqSWH0C/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hj7kP+58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hj7kP+58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752922193;
	bh=fOypUnZ07Vfq47/xAm//SLEltxqKINTyTFl4wLFFaa8=;
	h=To:Subject:From:Date:From;
	b=hj7kP+58Bpk11XataMsx/Otmi2CWUddnnvlKQku3P91WFYdSACkH1RRju6JT12tlB
	 UxK6qBRtxx39L233syRoE4f8GL6n5dxNSHpFrft6D7dhxkjwWzHhXxYZAm9KPHme/G
	 CT7X/ndM3y+hk180wL+IZvubqy5/igZ87zncVZQrikz7GX9N7bI1MNGJAFGXWIWMZ3
	 pkgijWb98cjl+MLZQnrCwclsJlBEkLCGvIimrfUtoPQab1GMmlnRJXHDhjvo7/27WP
	 Ky1QcQQaRn4JH63WI5/5a4uC6mHsLOyjf/ruzJXEGYHIok7iSxoNjiKKMypmkYfjgm
	 0egWeSTTKhkpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139FC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292219358.7988.18139988305107928934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c285024432f008b75107f85374ad9f0578e5b83a6e6689aa9d9f4e5c9762c081
Date: Sat, 19 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752922193
