Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBFBA59
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753314594; cv=none; b=BwX0IgR4ybhfKqnV0jb2O7Cs0mNu1TdE5jAu93sADwAzYChkamVErqXJ8Eg8R2dKYJrhxBeYMiX/xVfaNV7svdFlL7hvA1wp8HpUyQ3hDfzD/FPCYjJrElTTA6mUnDtr60efDiUQtDrwBCJVlOxSBWAnls+eHI4NJcLCFdAu0z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753314594; c=relaxed/simple;
	bh=tDidRGXoxBpZ7OS8lG8ivLizVzZfFze2Yjgu8UivZLI=;
	h=To:Subject:From:Message-Id:Date; b=HOSEYEX/VarUL12OMJrpO9cbk+zAdBv89CdfIwh3PT6oBWCaWJymwUa6HZSdDVNkDy3QqDb1Mp4FD/pBFZLkuW1lvKWR3pR9hGf9v5CBUeFOwtTo4hxic+VU1/wQ/YEvUoDulz3p14TsbB8HR7Na4rBBW1ff3XgHJMkGmjf9ZkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIyXtc1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIyXtc1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1626C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753314593;
	bh=tDidRGXoxBpZ7OS8lG8ivLizVzZfFze2Yjgu8UivZLI=;
	h=To:Subject:From:Date:From;
	b=JIyXtc1rTlSz/Me8nZ9iTc4nxfMJeLw3YcTl7WLpwM+8AxVRAlhYFvBcyi1Gvu0lC
	 uURxL9qRfS1zPUZg6iur2nirGv+eO2oP1Pg9l27Bcb/W5ijR0PCQlMLNM9W5ZMrQC4
	 oDXQbHf0OoXJ7i9MmGZ0mVo/bK/r5/P3AOA4Cs3SZYdyly2vySNGUG8E5Ba1ekuzIa
	 n8axqbFBGv3MVJsx9vCQdAJM5BLcTBla5ukMMziZgx+TMA2M3ILcYCrxZ3TF/fcaTi
	 bwoIBDsHSfm9fVmJZqM6PGKeuL2Sgx8x34s8nZMC09ty4RlFdIkXAPV3P9c/G+pNr6
	 7QEOjIuqROBlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A8C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331459357.27882.18197155196968060290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66d50ead8bf53f48f32cfa748315380f2d4cb17e98a4997d644bc00ccd9a774
Date: Wed, 23 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753314593
