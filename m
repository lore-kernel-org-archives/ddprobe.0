Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E14D2980D4
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744363794; cv=none; b=i4M6XfWbgnxQpr2G9CopWnR+YOdbx4c8h/i10PKz+5Cs/iR8wxiZBcEhLH+0ER2AgotMvo+2NxASMXO/M8ZgQgZ0pTXW8PTSqoq3Xpa8CI781rNePP6BfUB8jcapID22P58BdPMwbWbhSTtAI/2ZoA6vAGHSXko4DX/Py6sLFJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744363794; c=relaxed/simple;
	bh=5/izpCJAqnvSorm3Z9W2EZPZCot42Jprg2PJscKavFI=;
	h=To:Subject:From:Message-Id:Date; b=bG4Oo+IMddt/o6Kpqj9U4M/E2r748+PndTwmNfwvsKfbf43fdc0EJ+038nBni1v1dguGkCuhnmdO3rWMYphxJ13jxnKf8fswLiBpWTjUAm/2NcAjXve8BcBwKsVEsV6j41pXRLmrxYdQXrw9B7PjobKQSNvLZKGZOIhRQph6R3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUk9br1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUk9br1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F3CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744363793;
	bh=5/izpCJAqnvSorm3Z9W2EZPZCot42Jprg2PJscKavFI=;
	h=To:Subject:From:Date:From;
	b=VUk9br1HnwJ2TPQCxz8qUerWoLIHDJxGW5NENTMuGgRDE9RU29mR8RoU3Y8B8Ds6R
	 W+tJMSRMpPFiFglMEnQ1pYAsZRMfZQSCB2gVU9/PYDb4z0nV583Y7H8/WZG6+rpgD4
	 20JKG1dsZ4uO1gX0uqL2gpmveESUmnBoj6Uaco6Pq0OcwLwcYCATeTyvU9SEZS5A8X
	 Mc7ramDZSYDduqjeftASHfQ4MmcNvq4RklDFBp0fEGSoNAnTpxlZib7UVUnIvaXohi
	 DdxssMkc5LMMe7a0UgC3Xbqi4D3rniQur72ddqjdrGyKlWS8glS8acqcRuZtjdtQ9Z
	 6FndUDOtQQVYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91727C369A8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436379358.29272.2354482288345028422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d8f4eb4776bab8df22fa7ae8e206c9084586e2c080433c536785b13ff95510
Date: Fri, 11 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744363793
