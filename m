Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B71E3B5305
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783074514; cv=none; b=rqEuboAHIC2lH1YLzxIAwWuSj/zc61m6xqIM73r4xxCWil/dRtuuNqAGzvsRLnSsnIrSTd0RUI7WzrBEJ9cUYRcPJyb13kEtaY2JohJmonG2xjqVEAjvc5JOBpaXQJpxpsg9umtSZ1m9qDzjhgmjxxyyYGLqRm0nFOyKe8VL4rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783074514; c=relaxed/simple;
	bh=ePWJMoXgRDewyfJTCDAIXIfOyCNfigZ0/4krazvXlIs=;
	h=To:Subject:From:Message-Id:Date; b=Z+NhD6IARpt8IZsl/5AEVaALgXO9TBXokQbGc6IedTw1yUhc1S8cRbZU22gIvphvsAfZjsaaNjfAf0CEREIe282ECHopcG70zZ7FFaoRL+jb8HLqFHl3oe3ckWzowAk6CsJyv9IMM8D/EaugFYYo1nLCJa6e3EPZr7Llm5K0sz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx9+vVhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx9+vVhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3480C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783074513;
	bh=ePWJMoXgRDewyfJTCDAIXIfOyCNfigZ0/4krazvXlIs=;
	h=To:Subject:From:Date:From;
	b=tx9+vVhhwaO+W3FiAICjiDLOHk0KvVkNPRbvAKDxp7u67Y/rcPIV1VspgDczN9dUU
	 VxwJXYTL/38q8tZAEnAEdDqYCyhlnLTurDIiRSrsMmWNPcx3p+Th+qIFagoi/r2p4s
	 Iu5lp1YcsnHaZBvrg539M4dVh+Gn1J2DbL+iX269S+GAAAxK9QkVGl/8s0x+xfoI6R
	 A+8wT1AeJahZfeW7y24S3KYSoEAU1REjpHqKnB4KDg/hzU4PVUhnHksFIvl0RXNZKP
	 KK6VbTI4OFGZsuow1xdjY/ebrNTVq4b9M8BrYp6ayb4EtD2wUgrPq9MqJzfEN+ikxK
	 nOvzbcWUa4lMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFAC44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307451368.18466.12462350742714962941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a236b39bf066ff33f58f4ab3bfcdfb381121e04c8f2d79c8f2acf673fb2d4aff
Date: Fri, 03 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783074513
