Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACAF380FF4
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778922634; cv=none; b=I8ikyfPMpU5zowTqsZSlpPhLrLMdYf8Q2+ZnK5yPOfR0PYO14Xa40DmtUQTUBYtgnnXQzXb1HRizgaBg7Rtpmo045ZM/u1gDIK+UCmS/YMOxInriTLO51cZVURFbDSYSS2JzbLzT/6qPWzg+efGCU96NmQLImvji9ZQfqK6gxIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778922634; c=relaxed/simple;
	bh=VY3f3pNiiUU9PcYNfVwGXLddWdNS5sk6kvZ0uTk+vbo=;
	h=To:Subject:From:Message-Id:Date; b=awZjug3OUsHOF9zlyRBBwq3uy4N7wfTR+7ruOH6B91q2cHZBSYTXqtUflmB4eFr1Owv/VdGSAU50NPtfehtgN8s3w/8BbGoQVMkj3FUzNMKhp76kyVl2OxA/c8ukHpEMBi3inF/9Eewdjuh32FP7HtoINSXXJN60mySIFfwvq+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hkk3m7Db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hkk3m7Db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9719C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778922633;
	bh=VY3f3pNiiUU9PcYNfVwGXLddWdNS5sk6kvZ0uTk+vbo=;
	h=To:Subject:From:Date:From;
	b=Hkk3m7DbZRKt8e1tkypLonQ7BMDaioFfCxRmwqb0ixA3dsudsyN4D58YCCTf/rcVD
	 UfDSMANpr0EndnegPRbnrDDbTr0lwpla5zoHHx3vthY4kz4eX34YBy8APnjOeId3pQ
	 qv3Uh+rEawSiBk/mkYCB1v4sSK7ASdOWuuLtZumDFVrA+4b82Mszd8jTEITb7tDuLg
	 Fx0nahanrbWbr5lPK2z+VZ4R1vi6bZbTHNzkDqr2mCSByxVsiUPmVV5ddX7//pgzXs
	 2e18LE2Rww5ha44wLSDODOASl9WENgy7Dy1yWLAhbLPNjoMFmRbNLOcdTDBVfEptBN
	 5QIgDPvTT7ERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6099CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892263371.3077.15379184801522687182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c95163405aaaaaf4bb9b2663819b4152fa87447b5172868ad5f1aa8bcd749b
Date: Sat, 16 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778922633
