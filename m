Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF2137CD54
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776877054; cv=none; b=akcvN1dbayzQO9Q81LO47+mkT9p4OwZOPrl06zn3DAVGtJArHTu6IvPZyIzWxrSw1OSA2mD1bEXFBOgDX7qgxSb+XbSFD7xvdtXVCLkbr+SH4Z2LdVQ+aoTF8nVcDE3gAHOQ/lR2l452krWnwoKr1sRjs65P0uHEFC2lM7kbBLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776877054; c=relaxed/simple;
	bh=DPWcqAfXyL7mk3XlzSC2lhh4qrsUY+JNxjDvxRlUcPQ=;
	h=To:Subject:From:Message-Id:Date; b=OuxFdAxTCVLf6GQ1rog3SeVG0XYRCC0fQqRx+h1Mwrvc+ljY2kGv/PE7fphxHnJL5I6QITqeejig4leIH4Lzo3ysYMN72VifxhronE+RDACmFIccfqcN0d9KJ/OO8w52i9yAir3a6ouqK5YrODKsLUNt/wVWNd6NnZnBYp/HZXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFv0WWUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFv0WWUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7F8C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776877053;
	bh=DPWcqAfXyL7mk3XlzSC2lhh4qrsUY+JNxjDvxRlUcPQ=;
	h=To:Subject:From:Date:From;
	b=rFv0WWUQcP2zNxrNKdDB98AbZ2r0VR6JfNYqAHL+cvDswL8CPz2nNiCfx7MSIJkbo
	 bKe2IPlIjSI5L/TjkuMgjaFr4tIEYEa4D81sFXt4D1suNGAi1R3PTHOkyVwNGfiTDH
	 4YpzWKtTPScIq7vw+8T4DGCykv1E7Qxhmj+JmH0r+oZgXnFVQJVUvNzTI2aQA3En+i
	 +nRSTHVSeMzHFYiZzLJ6L8TsZR33+Jl4VNVbZCqrUTWDjidV7AFYzrAnV13rrW+CS9
	 XcmXXW+ofRMokfM6SFV0w41+0TlE6TSS/hFGRPYDLq4hKww9BI+nUrNrj7+hb86UjZ
	 PGGVotwPgYmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0BEFA1FD8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687705369.611.1648594122561219815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6059e2901098b679799d835f8a7fbed3fbd3d804133ffdf73e47c4e57cfed57
Date: Wed, 22 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776877053
