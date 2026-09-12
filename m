Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A47417BF9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789202434; cv=none; b=bSyALbO8JsmtugLpWAtFD4dJuz4EhsT5+QATPZkDhAPP9iYm8JKcxetMstfAkDXPjjwcodfZHIMscJNYea3mz++KBIOXI0Va6rqOzS2V3r9y6Y+JFSNSNLoZOfTaeOdZ1hWbzDCXv1N9PUulr4TVZWsa2xXyw0AB62MqSicdIqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789202434; c=relaxed/simple;
	bh=k/mti8+QhGCYP8l7rTn5mA6ka6HX+7BD6mFjJa8RlfY=;
	h=To:Subject:From:Message-Id:Date; b=m9BXNiDWdHeKTJ2fZqrkL6srJZaB7I+FulDtw2A8u7iHTlvgk18OAcgGC4EOQycazDTuKyTjtJzA1E1vLSyRsC4vwVzn2RkQ+6o7rGyoP2w98eD9HAHXZZZ4pLu2IsjWz0ognrGJMdi73tzAUdOQL8icMB3H86oagjcWb37NAkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAVdMG5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAVdMG5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE88C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789202433;
	bh=k/mti8+QhGCYP8l7rTn5mA6ka6HX+7BD6mFjJa8RlfY=;
	h=To:Subject:From:Date:From;
	b=DAVdMG5KxV8q8jxAjaVdoO9PLfJ7ENa3YnX7g4P6zLCXNwdp10bt9eIPZZT39blAi
	 p65HuPrMbSIopiOccGA5EmkYbV09eW9E6si5Y4iGDqGFencpnY9YPbV+snIi5hfLKB
	 C4NjvH4GVDzKMDhm2GdAuaCyKHqc8eoRN2pcWStCguc/3j7RnoRkVRcdOz7yG7lVHA
	 zTKl4eEaBgrUoprJXslogSwZpOIVyk+cXVdQA3XLaYLPDVRA1eiW63Y1a5qDP5pMa0
	 kJwYEWIez4isuwx33JUcncDEs0gLRVyxQwMsiMU+zpICSdtcmwDijR3iSBsBLhkmAS
	 xnS9JbS1ursBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA828C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920243368.18518.1130321714438134936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18eb69664ccd2e7b11fe847458cc04ad57c1b34c82c9d09b849900e618720fdb
Date: Sat, 12 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789202433
