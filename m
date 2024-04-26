Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF0013A3EF
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714111943; cv=none; b=CTOdlVfu3C5NUN9kqaK3/6NZO70I0LORpbDA8//8RzlZjCCG+NlR3/casAyserxHUcXnVPioJZNwbbSiY2JeUqBL1Fvib68GLt+K10eRyeCaFI7U5yl0H14Z3OMPjgSSsTvbhataxgvndUnqqAaeH0MCcUb/oePjV1yO4WEWocQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714111943; c=relaxed/simple;
	bh=zg+Ul5zYMnYdPMvJ5/x2dzP40Cir0B+UT69F2RcDyQ4=;
	h=To:Subject:From:Message-Id:Date; b=B+lQfMq2JVJafhgdhxkmms88EiEMWn3Lbmsya9IZejrh5ociEVHw2FxW+PNBb76hxIe/P4LGvPa1GUep2PaulNaoW0i7/QFyJiODPqtC50gMzgSbqzrlLKEUSHTQQd8ZBAx4RPePWOSVbiSWQiuwP8L1tQDEobs9DC8VMvCTxro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tzz2juDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tzz2juDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE52C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714111942;
	bh=zg+Ul5zYMnYdPMvJ5/x2dzP40Cir0B+UT69F2RcDyQ4=;
	h=To:Subject:From:Date:From;
	b=Tzz2juDqPA38LyZRkiQeKS8MdTK1EuIb8zDGQgT0/VHQpJ+dU7tFBXEtNT1fTGdmh
	 lo+NppZIKRCAEHWU+t55MPKvNDWsP+IWdFD0EqJmTxvs6exO3GR7JbE/UpRE9VawbG
	 zwLGdPvuQ8wNppyy7LRKfgYVEWCR1r7L8tzUwk3Un5esHMikCNmZaD1QFvlnizTUeb
	 v935uOaU/qCrjzb/WuFSyl3eeIHRxjTOAkJz61JQjIa50ZMclspJVZJSEbouLBfdkl
	 Uacmq7qVMogNB8tTUndfMSImGI+uT8pMpybbS6d7ohhByOayOZgE/tOthJIvkws9d2
	 BbEL/ogQqzn7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5705C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411194280.717.1873553334639111623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8112a5bc2c442eaec82c8b0ed600c269b7ae257caaa0b88fb3cfcb590fee55
Date: Fri, 26 Apr 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714111942
