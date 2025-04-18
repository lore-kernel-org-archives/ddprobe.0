Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444EA26FD85
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744978194; cv=none; b=TfNJAzPhML8aPD3v50ZDM28nidFOUnDYMtenYtq1DuDbIgpFfgQqYflSvgm1kT1pXxaT1gcpjh0cWNMPLnwcFx30EDzbc+EvIyhiu+8YiamfwzRftrFySxcyTgPBMB4DVTZxNMiwgnJ/nPNcFJtSpc0UxY2ProUsRbjcjWY/Mic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744978194; c=relaxed/simple;
	bh=YhlAHdf/V4+EEVHCPtsO81V13i9Q3iTMwLoCKwyLUDY=;
	h=To:Subject:From:Message-Id:Date; b=Bg5ZLkGNBlgs2VOFIL5ebWOYmCKBsyxnk/1cGKgRMWFNFF0lHryLDJ8AO/8LID9RYwrJP+gOtZLyAbxbPUCYbN8WQRWcG7gmwPxCO7X1EpmS7YEKIu+YUrysq0KbL/hvQxF84yjO0/p8gCg1y+hi+WRk184zVTDyQ9nujSe7GKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLSJ/zPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLSJ/zPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3755C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744978193;
	bh=YhlAHdf/V4+EEVHCPtsO81V13i9Q3iTMwLoCKwyLUDY=;
	h=To:Subject:From:Date:From;
	b=hLSJ/zPyLDG9Hwe+QelLTOgvpdcG2/mxFJ5Ysoa16ZTdtS4f5G+eEX51TQJZDpPdc
	 XXM/Ti9rxsSIf2og11Hfo+fco8qwsnK1DhnAc4ChO8AP8MYyVGnNSxqWI/QAR/JVl0
	 1lKcZsDXRWiJKIIQ07GM9RljyCUjNwnaA1T+3FGAkKdgX/SBU8wvGFyjmY5i8f7o+L
	 oOTgbH3N9TdAmkWWLaab4SKkMOJ15kzx6lvRYQ9ANEuTD90nINlVp8xkF6mW0ocK7X
	 YH40f5bxSxejOOlYBr97MftIUceM6mnNPGMaxM9ldblq1BwkVazxF5BlUzyhAwitka
	 pG1j7nghQUmRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A098FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497819365.20554.7222750604203652697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6d38c6a9a0976981374c0e64b6c1855dd716dc8836b7a160cfeaa8fe06f012
Date: Fri, 18 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744978193
