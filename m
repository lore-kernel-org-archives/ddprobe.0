Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D72C2B9BF
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737233154; cv=none; b=l46gkqqgP+kAl1wplS+KMVMBVr1d0tRhaqVgsLPsLboB8Ccx1Pt3xlvyUp4JwFIOyVt3O9bEWwiLoIQkBO5gBw45dM7veq24/IvOzWSJizo2Q28m7oLakEz2bwnxR7f1gjb8EuNelmTBhiPwrg5eWEROHN86UStwpnAuJePcHXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737233154; c=relaxed/simple;
	bh=72q2SGNFWiMRYqdgYx2pqY3IDcI0ShoLTQOearwIxJ8=;
	h=To:Subject:From:Message-Id:Date; b=UOa5InQb0a6fOBYQY3aJEjLk17/AbCTCMC8/gOy32ocCHHWaATog+N+K/kGUi+w6XSkIjFoCGAIjFoG3RjMTNwTPqCgndRZ0I7y8TWvSiRHujL34DrcN7Gbdtq3KAYNXmvzZsBhGWzhmaixcfNCcPM3oxaeSb07Fqba1ftXg4Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlvP7jhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlvP7jhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CEEC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737233153;
	bh=72q2SGNFWiMRYqdgYx2pqY3IDcI0ShoLTQOearwIxJ8=;
	h=To:Subject:From:Date:From;
	b=NlvP7jhOJ6LN5l1vGbro2Jyv5R9DqdlQB6IAoIDUpZKT7HWeExP9AkLVtrMMDe88z
	 08+i2K5//kBQBH0cMd8ozvVYqxpBfXGq0dEsK41+kywCroIvZ9xjrpo17FIzHb29Fi
	 IRbi1ZEvw8B+p+UjfW/AZQzWbHC7/SJEyJBW6zEnGddng+czExuR7NVZA/3qg7CLpo
	 X3CslMufon6OguWMSB6i0/+3j748kQ9+x512BspVe+UECXBZ1cD6sUpLYXiWNbG7Sg
	 nqYl2szNHxpd1AbMOtc+V2sJNe/PZVv5ClY/2vbxKOXtSTAo3+hGU1pUGOwEyDOS0u
	 m8VWmSfLkLd0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98076C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173723315360.26216.5710341944033995522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38464da84877efdec2d3e78e5dc6be82d146ac13ddccbf0172ef60468edcfbf
Date: Sat, 18 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737233153
