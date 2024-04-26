Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8E47F8
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714094543; cv=none; b=Kha+Jk1S/XFUAnKXHAh66UeMCmq9z0y0JWq69+pgdVx0plM3FLmetdM3m0Cj1+Nn2k5ZAc69QxkvQ82H2p4KW4ulbdKDqSNiE/A4RLkUVX7J/NfjNWL6oUAHfxvs5p5NMfH1295TuCeUTrSuSMLEm2dKiSY0SBk5CLOD0V4htBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714094543; c=relaxed/simple;
	bh=ivuYH4q6y5vqsJdur1n27jdUdq0HChv26RskFE6YZjg=;
	h=To:Subject:From:Message-Id:Date; b=uHpiEdaPzKE2+7raGasEVDG8j8uDrhD6SbEfP4zYiIFSL7yyK/1OVUaml+tIYzoi+k0etryIpngy79UzULyU3h5vL9JRSTXL0IGnQj+sOUVq4IBpRu7qiysLHhEGl+6yXWZSsJ0NSvUDHM51bvookdQJnEt5N1gfeB4RDGGvy3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GV+Qu5d+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GV+Qu5d+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CABC113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714094542;
	bh=ivuYH4q6y5vqsJdur1n27jdUdq0HChv26RskFE6YZjg=;
	h=To:Subject:From:Date:From;
	b=GV+Qu5d+6cGyh7pfriW9UoDCp3MIE1OMHIEDiWUn6p4nnKqWVBo21GlLIMXuXpmz9
	 3cLPiO0q/oh7cFBXPaDTrGOxnbQvXST4I7yEF2vpkbsTPCx11XPbGpwLq6ecwFsHl7
	 FjjYw4ONlTEX5K/5RxqG2g2FINVgDaIXXhQqA2HPxOO0sgF0jer+ajsERWsr7JvRyW
	 HvCf/+0h8uqvEJkzE0hiTVtygMNdCklC/oULQRcdRDQ0FjsFxKr2yAlLlmdrbxY95k
	 w95FCQ/rYOKf+HoFSAkx+y/F378UIeNVPtoITFNbb7RIFpnIpHrOvIIsF6CH4LuEW4
	 32ZUm/mr4nTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF558C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409454277.31933.15913332232977122488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea3a5a179b288287d95000ec2ffd3652b914902a7ef222c25689e1af4a89fb9
Date: Fri, 26 Apr 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714094542
