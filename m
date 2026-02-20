Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271102E0938
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771605295; cv=none; b=V9dK6MWI6ZEunybu5dCylC2OnJyY7skCsB5G6zNnFSZNAyw0V+9h/eTefrDwPA9gQL7QIIh1bZp8DrNjc+9p6ke47hil/bzMX3D7d2PYnUamvtuWx7yEs36917CRh/WaSa5hKb0dLc39oMW1omhVqqF6di0za4YAPQwsoZ/7FA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771605295; c=relaxed/simple;
	bh=y6/5T37vGCAEwIt+3NW28QRyryQA8BCMgAdoBoPaURI=;
	h=To:Subject:From:Message-Id:Date; b=EKpSLjMW4YXG5Q5NOxCXP/dC9P86vsoS/U9AxtZOr1Ab0FU4xxqE6H1ryJufLp41sViQmAYpAqKxrFbcNfRoWUuw9+qNwkSSSywQin7/LKRfVHonxEBS35dNcBWheFFQTSd1NqV7r/gNUErag+DCGa+Mlqr1BCg9bTPZ7CyhZro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lt2Z5wWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lt2Z5wWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC93C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771605294;
	bh=y6/5T37vGCAEwIt+3NW28QRyryQA8BCMgAdoBoPaURI=;
	h=To:Subject:From:Date:From;
	b=Lt2Z5wWFMo5HNF4nnTe1hnC1OWShWBQPPUtNnk1PV5VXfgAeDR1Uxa0D6zl9n8mZw
	 667mIzEPXUgvQuHda1UdbYPM6PZL6zh+y6VG1ptfMdAGLbDNV4UKNm9I4ysiqtHZ7a
	 uXh1f1ngGm2VIAXIMXJsetXfIqEo9ss/HDS5kng3FrWaAdntGomHAfeW7vB/C5zSK+
	 pm32X9IPgxaKirFjGpn1aJcpN9v/ySjvjL5dcJ5c+JCiuGiFcFskNuTuO7auODSD43
	 +53ljSFWJecqGtvPBzN795DbCIYQtQlXeyuHrmAXaVl6/6Kee9CG5DINVQsUux8T+A
	 jXFH4VOAABr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A5C5ACC1
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177160529360.17863.10510605227592627266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3d2cbacc363eb1a9ce80ff97c6207a580379f027ebebb4ca1e1f664027d1db
Date: Fri, 20 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771605293
