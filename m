Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350EB24C077
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757200794; cv=none; b=On5DVpy7Buu/DO9P/gqIB4AdiTj+uygX57Lt6mDuMcAb0DICvcTy2KiKPg9efGYOwHBUX9Uf8FhZZMEp6SfYkYCEhXDiF3bVFSvkzrsx/UL+Ai53pB96DCRa78Thct4SvdSrZKj6h6fbZk7rPWMmYF/FcaEV1OwDLSsj7UaJ310=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757200794; c=relaxed/simple;
	bh=6H7uV30Ub20mddJ5NYj6cuuAqLwDFSdHUBDV08KadLE=;
	h=To:Subject:From:Message-Id:Date; b=QgZoN+apw5q4L+EwE9QbvebSl752bZmltpIrLxguQfbl+vtq6R7iRf14qi+QcmayG3xbAPLXpm01vonidpjLsQgwLDwdVOF2sohPOvy61PzoPt2z1pGIxxNCXLn5S+s4RVl9qwokILSGJIGAtyTGlj6rtA5877S8Jn6iKR3BJko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAr9XGs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAr9XGs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A472AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757200793;
	bh=6H7uV30Ub20mddJ5NYj6cuuAqLwDFSdHUBDV08KadLE=;
	h=To:Subject:From:Date:From;
	b=qAr9XGs6KnXuvNIVzIyP+opx8aSAPBaxw9vau1hg2NaoRHugXS4D4KnDCZdWHxek1
	 RHPnluUIma1W33UMMgL0CEJPenXY18sJAUi2PCvDq31j4vy4wfRfqQDkKsqWkO/Hxs
	 UXzaFFNFw3ahQf3ScNJ24M4H4ts5jgn7lovLCm3r8emk2rotmXZljfrxYHidm4fmJH
	 45fI9IfzimqqawklB5yZfrha4AdnTzaMCCAqsMhnZs1EfmVU4vbg77r6Z0PRnSespN
	 znlP0Eig+8x8/nWJN6pRPxKzGblCNsRcnd1YU1Vg+RWFVtMMwm/ld4OVuu93G7iLnZ
	 dQFKap32NEsiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB8CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720079358.6682.14998299990643629547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358744bd378ec553d02892ffdf23a1e7d481330345aa447f51f60e7866011103
Date: Sat, 06 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757200793
