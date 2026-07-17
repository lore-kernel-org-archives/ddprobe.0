Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D80288B1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784305114; cv=none; b=iAwgAnid1WZiYuT8kX/2KAX0yZ3n1/fmSTkgRhRun62dFSnlP18tQOFVRdx2zIlDNdwiUV/FRoF0laLldpbUj6ipArELs8lUeuz0ZMvF4k1VJXX6dWHoFnZRri392YVVKN6EaX5li0Kd/DwQQKG6qxHr8dj489exfrPCQy5+yvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784305114; c=relaxed/simple;
	bh=a6WnWMTWt7btJUfJvYE3Tb48RT4BnfVWSvswGwQ3CrA=;
	h=To:Subject:From:Message-Id:Date; b=j1ee0aSx91MfmpBSS+iQBBeShjij/r1CZ6mqFeanKNVgxai+kFjf4frCHAmylq7E5GRP3TmtH+6zjG6Ocq1B6JA0c+2NzECCZEAD+2EbeK8pWdBBeXsuVcURaVWPM/H+QOsKE1PFGE4C4S/Le4aGmyp3FzArePFk3VZnfGRQ2HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6Oy6Uwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6Oy6Uwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD43CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784305113;
	bh=a6WnWMTWt7btJUfJvYE3Tb48RT4BnfVWSvswGwQ3CrA=;
	h=To:Subject:From:Date:From;
	b=Y6Oy6UwlXomfil38YjuOeBvrEHP8gOH9F/nRG+KX3wjdBTkGFjM6UeAc+z4cObVaI
	 3ISjerP9Vy5z719Z4DakHT968jVP/7O7kbmAaNudcIXmzC+e58z9URR+4NJPGUspZM
	 yHEfuXWIX7nMTV2wpR7I/KbKs+qQ6xcqw03OwCxR6fanGntDGK4C0UJRBWeIwiv2Vp
	 QriJ73HFzO/FUTGzxUkgDBpupkOS53HSvvGVPWNbvQ+EiFV7zwq2sO+WDtDRBHjJiZ
	 LxHffj1iwxuvxai8lif7358XJ5FR2WC/Go/MZB4fNAsjYk0OSbLp0w1b3602XyoGzq
	 dLdyXsxD7yb9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A3C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430511368.10351.10951760741404943179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf4b3d50939565c378456fcba6e02b8ab89ac3b8588eb7c954b92877510959d
Date: Fri, 17 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784305113
