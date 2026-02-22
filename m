Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF8F7405A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771759494; cv=none; b=oaJ51aC4ZdVAtveyt+AvpnKfI3kG15Bh7RUAxcYgg1KPDy1SUPpmX440NywcyfNXAZq1vYIR9J1VKe3JC9s+j3wzyWrRcdxQyTkqlHf63LgQO+EoZHIKfX1/v/GrxxZYah8btdN32MZiFrXY5bOz2Ek9RkIABPSh3wcUetf8mNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771759494; c=relaxed/simple;
	bh=5/4HIV23CkQI0pMx4r3VTU9Fw0MXpAdUNs2ThFl9RIY=;
	h=To:Subject:From:Message-Id:Date; b=e1Nm/EyMIu7YR17CslSwOxpnyJClhJcJVRU5ghqHubWIPOlpZh5ZWDU5RD+u+WuHKrsgVG/pBuLzmL1xWZx7/AqpQ9+lh9RM9FiY5exdRi9SH2ATlvcQod33DP+fDIm+Z2FphGcRZKb10RvVtC8fIMCnGKWfVyYg7u3YfeD13jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrlhuNGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrlhuNGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CD4C19425
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771759493;
	bh=5/4HIV23CkQI0pMx4r3VTU9Fw0MXpAdUNs2ThFl9RIY=;
	h=To:Subject:From:Date:From;
	b=DrlhuNGy8j0nHc477fbyG6e6X/f/mVy4SP1l1++R6nhqYTpcZSDub9VKmbQE+L4ps
	 LkkMHIzPz6NGybBkdzgcrLU5LcKKVDXteg5kiP47Q+6Y3ojBqPqSSqnt2hgfYLxFul
	 xXdPI5sLnPOZYTyBJE90jQOwOVyNODfJCX/LM6s2aH7cL7tlNF6e/D7/o2kQCS/bdK
	 T1COio//TO+vOp/psMxaDw1ext6SyitsmwGBrskwnAmH5Abw4WF31HJNAjNg1PtOn0
	 CNbXS7fBBlLADUandZvKD+FWxXO4312oZCboDBRR5ELnf7SCp2C0O0rB1iMe9BGAEj
	 ycqgaSW/b9tkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FDBC624D7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175949359.855.9886873356800856655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9902c2883b340cd1678de377a45b3a9b686336e016e1b183c5469f75db1cb0
Date: Sun, 22 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771759493
