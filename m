Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB8E2D838B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769444033; cv=none; b=RhEvLiqekIitroebeJiBUgdN6rknh9l1rfeGGBxPcFLcLE8XA642zP+gaATPlKcUwAzwM9tPkJ0hSj66wLKrfSlS6UMNo0ZAevCb3K5mk4+cXNfJARit7zDNaSxV2ptvbq7q+ug13j0oO+GoOuiziFr4HwE9L5Xcbf6SmPg0yDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769444033; c=relaxed/simple;
	bh=zBux5CXz/LSSeNZtsVXbqSDtnT5Zg+bPVPR9d22PkAM=;
	h=To:Subject:From:Message-Id:Date; b=uIqoOG2aXKcfWs+rG9O9Qi3CJ524j9GFKL7dd6DdzPjCtle7bpifOfTdxGa8O7kGcrO4ypEsf3lNgOSkpiI8RCc+g8tOFiFQDgJbPCX4kWt4xU3sXq86/Kh8RbDKRT3khPZ1Tm2LKCIoH0WnWNxJiCje4wHjR+FIuXxhaJAwPCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ve+CgoJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ve+CgoJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44CBC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769444033;
	bh=zBux5CXz/LSSeNZtsVXbqSDtnT5Zg+bPVPR9d22PkAM=;
	h=To:Subject:From:Date:From;
	b=Ve+CgoJIKsFYwg4B4z1A6leNZe623JIL7UvjVA5/Fq9rK0ACGVRdFCQmr0i6/kxSr
	 Y3GuS6MoeZ3nQ/KMpzQm9uqSiyXSc+NhZ8CGJQsPQkwpIXCKlnfwHhK7ivIX+ksw/0
	 zJnvLeenc8W1FgiHfDroBg6SRArVjZ2rLQKjPSg0PN6LxLKtgsEUE2iu3CIoAFKKW7
	 HECYNXY4gPKVAtXCC10saG2zExGUBX19Y/yd/VqKh2IAUxbnAvXtoQGwygTbeA4/4U
	 oCWexr1fALpBwnWWfQDHzqukubB2t5AH+69kld2cFGNUV5wPY49h6p9wfAkjUXpdZj
	 mi58H6PMYju5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DABD19500
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944403358.11764.18439242757395024770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bbc5c774677ad11bba8e08111198fc7e9b2bdfa72fdaa445030c520d02638a
Date: Mon, 26 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769444033
