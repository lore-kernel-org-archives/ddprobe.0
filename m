Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A621FBCB2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750885794; cv=none; b=RG5taTGtMrNdIhIj1V4kCc/sHWiRGJcUK8J2OcSwgR7eRfcz/jY+BrVzJn5Ee6/d30upJ9dS8q5RmYEPltinE/UaZQBSUSZTy3UbptY6muZko10Gcv0zylHwy0JDhwqcxlBvsMGkhN6/ib1UwrDgMKaWyem+RjJPpJxLSyk6Gp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750885794; c=relaxed/simple;
	bh=NyrwcHISpR7nW952hQ16dON1J9w+2qmAVwOoS9kGcrc=;
	h=To:Subject:From:Message-Id:Date; b=g6qrR8xdPqaWeqH2ZK6CzP7UYujqb0n1JWQzSxE2H+y8RJ57yNn8nD+/xo+DTXiv3CtL35P45ouBMCaZIVcsFG9S+L1lBqDPbvh3dSQbdMHr5JBgZOaWDIjeqVVZ/CFoOpzTZusTsMphx1rACJ+GLOHonqBWJZK1nbrXRj4XtrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=os2yd2xN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="os2yd2xN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7059C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750885793;
	bh=NyrwcHISpR7nW952hQ16dON1J9w+2qmAVwOoS9kGcrc=;
	h=To:Subject:From:Date:From;
	b=os2yd2xNn9MuhMX9LvM2Zg60Am/JwGBFLcVo5pa90GLhK5nM3ToT2OM9/o8zD6zfO
	 GPro/JDo62MwoD8LQWftnZWnPmpcXpMExRsXIkQPheWGT3RiWHhhlYnSx41ApYHZUi
	 rw38jGR2eqg+7x1Uz2b0i8bW0VAQw+MCiMVAzxmtmrDf/xalnx2tifx2xsmutkigCF
	 d21IGVZ2uj5XszP9x+pP4v2S3FlFoeKH+klgWgCkyrgrF1vai/FglaOqX+3UUZCQRj
	 1rmPttAzLzg/COqKt3bdNpFrHGhL1ywOBQCpOJKYP6RzqA6Nr+UegcGaMxXI4yTtkn
	 m2FKhwn5k/doQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286EC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088579357.10257.10768904146625200439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf54e20625c3d379d2d88e3ba89e56e0af564d9e270e405db58e80f81a7dbd0c
Date: Wed, 25 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750885793
