Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525A273518
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713518963; cv=none; b=KerOHuscxuLx2O7ESvdoM7Ak9DKYL9PcmUCvOiU3WlMD7XVcys7ySNxJ6GhZpu5drzKRiQS0apE+J642N6G/0nl+n8gFd7oiYV89sMOgf+rfM9b2TIw9v7903QH/QXfiz13UH4vUE4o2mtpjIbIakQjSodCo1VxMFH7kbvo2yRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713518963; c=relaxed/simple;
	bh=GfCwYlV78bB+csX59ikvDcR2Tu+1KDthhGW5VCLmUpA=;
	h=To:Subject:From:Message-Id:Date; b=ia5pRyafFgD7USJRaIA54ktdR1k+CfQwfRPj/yFSX4R+lh32fWWIUZomArpCnXOYeYtukNbX+uEIgD00JL4p9K6FKYpxMhwFwHaq3RB9UpElbcUD2CvARkKW25VwZ2ov13kX1FV7FrCn39mID8Tv12VOOwDEvjn0YEcB5GoQUvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uADRs4IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uADRs4IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AC2C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713518962;
	bh=GfCwYlV78bB+csX59ikvDcR2Tu+1KDthhGW5VCLmUpA=;
	h=To:Subject:From:Date:From;
	b=uADRs4IOqRNV2ZnlvSB+EgAnOJw6QhoCOBXSCTUelvXZmIFLkID+aWYW/G7Y1eX2j
	 DKnOAMAKwsX8NaPQK0U7BvwoSDZSYZykj2SyEtI+7G859zSjyl/q7iauh2pxxFcqOX
	 vFjUdPwrtpV1Y4mPYJAvuOKKpB2fjggFT5JT97W38MH/9AanF94iaxCu8kub0zuLfl
	 sUy1ho0NgDHCTf29ZNPraBfqfqy2odK8HMN6aNTQkpxUMU/V3AZJKGZmK3OtfnOtwy
	 wwzQEjALafsQfPLyPPv6UgEeAzAvO30t6kGN7HrR01TCS2u+gdRXZMhPrqJtKne7ZB
	 WNa2yb3VoqNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3516C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 09:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351896277.28825.9129980821325287800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723665d0e8c8845404601037a4f3833ea36693573182721f4a99b4f0fc7e22a5
Date: Fri, 19 Apr 2024 09:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713518962
