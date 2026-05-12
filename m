Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264BF385D6D
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778605834; cv=none; b=LyqBrmWaQ4gTHc2PxBp/KgLnPPjOWivLfxpR+TeadshgnJGopSdVYCkGs1CwSIaYrdOaqoqXZNWLAcebftEfUCGMYdQMFICdVjsp54ZsM/ejMXOZceNaTp/6bKBSpxd++kqsVoembVwx+LFqnjCl0BuMP2EdIs5kOGPuRlUNkfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778605834; c=relaxed/simple;
	bh=l2iAzd+japXcczFogjRi38WwsiXmn9fohmaA4Pgy2C8=;
	h=To:Subject:From:Message-Id:Date; b=TjnuS2qbjf/mjxCzd9Cuxvo5T2T2l88Jer4n2JjMmVqEA03fEi2Rbt611MRqJvUI3HNj07XnXVzX0usK5VsrFVQek3nI3QizKQ8f/CK0PFcmU/8INsymXaFXQ7h5fI71c2rfTS4b/fCEhWDaBJ4YUVlyH5BPRFQLD9ypAdldycA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5kKqUO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5kKqUO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8393C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778605833;
	bh=l2iAzd+japXcczFogjRi38WwsiXmn9fohmaA4Pgy2C8=;
	h=To:Subject:From:Date:From;
	b=N5kKqUO+Fp+vPjNRdsiWRBHDxHQf/EvZ5CxKDZrmGb1zMK4CujV0Fo2LrNj8qAHDC
	 GL1HEr7s0TWbi5Pdn0RSKRuII1Pf/P8sFKvZaiQRKYLWVdMCqaRwMRJBJZlftDS2gh
	 LG/6NetHjU1UgtUT1BKAMblS+4BHStao+LjbUvOht/R1dl4cSASckASj7M/NbVYmhc
	 T//yHde/BeAtPCvQySMbDs0HRnEi9BG0MOG1O4OOXVb+xyTxGfhbv8AQeljU9GpCWM
	 5mE2fKTECb/MfkuaQtfkS6NQC2UkhuYG7fDO4dHpCPHDaxlywvd9XxitSMcHVA2MBX
	 +aiMEhoy6qzYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB114CD4F25
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860583369.23161.16447892898380979379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a01725d030d0c386ab39da545dec86440d09ed203d0c641845af3283b637e72
Date: Tue, 12 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778605833
