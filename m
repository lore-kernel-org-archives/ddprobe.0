Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286ED4431
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735801554; cv=none; b=R3uLwhhzIXbD+Y/Wz+YSIoeKWRalPnXW38EaSeFnfrgZExm/pPsyq2j2ANOUwhiFZ+6LDI16hYEUTnfn9ibCXCLsV0lsv0Kz56CHpxb6U1XMjGkoCa5CL3yLzd9JEUV7bNa4I3lBffkPsWgdiwNGHBB7x2baWC+Ap563tgndEVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735801554; c=relaxed/simple;
	bh=uWUct8OTA1rQ1AlebLAyX75yRWtCKsQCgzaM8KSfBVg=;
	h=To:Subject:From:Message-Id:Date; b=tM42s7ufIkpJIo7LkA09VGED1kQnYo9gSL2m/53RCXT+SmPCXjh+Q3SJNr5AvO9arKajGbap5cWsvk2KauY9C1aE9zUEbG5cjsJvNHVGn6gPE4O9f8JHfHqnUq01FSrrPFry+SBPyQV3JqjsItjfTS2j4uTqTWyHz7WFZ/3ZnlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBW8JBPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBW8JBPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9BDC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735801553;
	bh=uWUct8OTA1rQ1AlebLAyX75yRWtCKsQCgzaM8KSfBVg=;
	h=To:Subject:From:Date:From;
	b=NBW8JBPt4eAaemRt6GmdhnznafKbSTcmo8vNYpbMjb35h/r0S5+o1nnmX6C1zZ3XW
	 GJgBgsDIxjdDIiaHcVs+ukM000ws8mkgGAeWxM3utmP8DcqSGJE+kOUn+/cQllQdno
	 TfwzziC/m3pXm0+unG4DPr2xUuAUk7M9gX9RN7aYA3GeQvhlr8h1ITBKws8ZT9zT/t
	 MPQxu4mgkI2LQyUt8lHm3+M3tPpTPKdYvoc18FFeB+TZc7x7O4i0udV2u8B0ny7m6o
	 EpWoEwdrpLHARHO43rfKNc2E7wgrNz1eGRJdeWhFTgoforzT4TMo9nzqA92OEAqCcd
	 swgkkOUmlu+Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC8E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580155361.11975.18155464010837250761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516f71130d6577c2b9c24a8a66bb86359bc18bb94fcedca192b486d73b9001aa
Date: Thu, 02 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735801553
