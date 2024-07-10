Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC8AD535
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720595783; cv=none; b=PBkAvn27+CxwYaBFn1OVfcFkrEepcTaD5LGq0GtLzbpmARPAlO8Y8HHrhZ7yBX2Phi0uqyPqFYyILMXxhvy1W4EyjTkzAh1sCiPNt8TO40Z+xV6jB1WRLCnJ7VvQXxnRGMUNR3DPc2ysHXuljXYorkcbgvr+GmFNtcxTFDbVLIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720595783; c=relaxed/simple;
	bh=qjLBeKsFZiSN+qfHO6Ne4ABf2B3at3OUOfN/2NmwSxA=;
	h=To:Subject:From:Message-Id:Date; b=aCmK/pT7tSeIgNp2SMOkgUhDVblGd5giTGBkbV/iin1b9P+GkWJd8TmGyO6M4CM15+nrafLCBzjq1aq3shR9dnUUzjSq+U9gbS94sBXMdtSYQ0+AZDL9jGlBR5xGESKcgdvLfB7Ew0njPCFq4MI20Wv6pVbU3MdkLsUA4WMyht4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmUqA8uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmUqA8uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C965DC32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720595782;
	bh=qjLBeKsFZiSN+qfHO6Ne4ABf2B3at3OUOfN/2NmwSxA=;
	h=To:Subject:From:Date:From;
	b=qmUqA8ukYyAjfojc+e/QsmG4nm/ie1xFSyaPXhRUtC7XsJVC1BxVLXKB9Uuls/noT
	 mQmMS3tEfRzyKWjb+U97uommjzb2xaPoqdM+L/fj321xQ81TQ53zgXUzrcl5gMxvec
	 qfkJIyp9jOUkK2QNBxrcLKtBpxZMIjE3/sfPC1m8JI7kguKCGZA2TpzWqgrCJg+1dM
	 zx6+WWaFJ2LoEZQWreuJv66/6WD9V12aOQ0X6NhUc4x3RIVeQRUyDYIkvNJIpEDcBM
	 jFTpBw07oHCi7USx0HV9k5d8q3kpVrmeb3L6h58R9+DwhNAShI3zzTsOUer2b2XIdb
	 Joacn4ajez+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB53C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059578275.5004.18255613348445977472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1325dae429cfc7cf128f576f2b276379410c5fdbe17973d256c724bbe78ff950
Date: Wed, 10 Jul 2024 07:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720595782
