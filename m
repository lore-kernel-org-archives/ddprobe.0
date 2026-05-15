Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727D83016F7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778828434; cv=none; b=JVXNj5NlP5owaneMkAEramSd9J8MAEn+QNZjE064N/xpw5KCoHgxO9mbfrWLTuJMCfl7Lq/cyoyL5Fn3F37jKvIv1O4DlZEStbOweuzSesDVCG1X8pbO2NE7hIfnnRG4MULXldYWlcpKnyL7F7ksRmlcx0LpGsZHRdQRQGhkGt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778828434; c=relaxed/simple;
	bh=gYpMaIevvGt/8es8tgxblxD5A3tsFMnSppGiPCrT5/Q=;
	h=To:Subject:From:Message-Id:Date; b=LbwP6C1OiBWMsp3h6i8K8VzFKvFIORpw3zM9QOBhrawF8tsS0X2XvSyxi5410k78rjmAOk1iy1s4AeftFDXenVjvNalwyzbhcPMFQ6s3R1NiwdyViMV13iak+mbEADqfIcgDaPrDr9eV0yXp4nv3J/HuG3rVipGWpDvrY/jSgQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpP463MB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpP463MB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA324C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778828433;
	bh=gYpMaIevvGt/8es8tgxblxD5A3tsFMnSppGiPCrT5/Q=;
	h=To:Subject:From:Date:From;
	b=FpP463MBqAnf+hm2o+Hhphx8rkv+QdRCYcFE7kk+oevWX3zoHtDDbQTWjQdrqky0K
	 qo9KLPbJ6eXSFdXAhGiWBsi57ms9wPy0guWiHIwUHdqD9epgJaaXPE1zttUEOsVvhi
	 kzxuj6MXJflBpcxzKjZgN5/o8a/J8WuT8tUFEgKzDZ+D8hYhN+dLYpPZDAOFSH1umj
	 +FHiujqSikDqfiPI+e1oT6IgJthEwKh7lsf2xnf8CUHnCOvMfnI0XzDYN5AVph1kp2
	 mBx6RMry8S3egzXZfsZvNdexDQ9T3Dey6KC6NzBe3Dgksd26qKAKOYO/vuWrBBZeuC
	 amHJHzK11bDWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3BECD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882843368.1882.11287650523746549164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1e12853327d205d476e02fd023c873d60983e97fdad2569400a250f620fe5b
Date: Fri, 15 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778828433
