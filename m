Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE7B27815F
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754769594; cv=none; b=lzvrzIKO3OyGTTzi1FgcWyL0msXV4bnOr4Q5vTvcmvrU+biTOPsq4djb0pdEu4DtPsfEuNAIuYLuruvDPjHjcB8CPd651SpPZx1cnXgPv2K/669DJMFUNHTXeiV2bUxe+2rmlnyj7kRL60ANGHvghviWIm/E+X8zCOEFlVXkWLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754769594; c=relaxed/simple;
	bh=vG1DCjrc+Wt4Jf57c81P0LcdEEGDjOMX7//Zqw4dPik=;
	h=To:Subject:From:Message-Id:Date; b=A4EIwMVFiRw7QtLIHb6Y7iISI+enaYnMLGkFEfOxPH9SDWkcg+j+2N3O8TCflTVV1wIa34cC2EeiXTurCtkZWCPcrJse3GzJmQY5x0p3fq0BKwVOAwo9S8861lZA4XYig6m5P6braukTMr2Y2yg87i7dG3ctFSi9s3EMz4lTw94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zxb+C5H6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zxb+C5H6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1527C4CEF6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754769593;
	bh=vG1DCjrc+Wt4Jf57c81P0LcdEEGDjOMX7//Zqw4dPik=;
	h=To:Subject:From:Date:From;
	b=Zxb+C5H6AYfPXZhe1P9JZ01Tk3rB1vijdESSMo8lCfrykposYiNrMZmQH9w6ev5MN
	 8ukeHgINiTI4qZXI33QMmweZAlPSAA3dnmEXxX+g8TQM2bIWjAtdlj+mNSCrr4dzfw
	 J2whIVN0Xi0KHZY3U0NXDtusxTmt4iqxa12oBLzEvGojaEc4MDDP5M2rzPx+1cRB94
	 DMsDkCOA3CVewrJvvYoZmQcfMh5FHHlVMOVH9xUeDcZd8NS7YjKTQCBqTijNTf//FP
	 hXEV8t7XKzJ6ze9+f6/cAJd4VRcfvWLwukILR3xoAYFDuLFIE4v0IREdm3nE3m9JJ+
	 MDP0e6Qp0kPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDDC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476959358.24303.17518525450525583149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3944a1cefc2557d6491f8aa854de855bb07e8b226c435e3b6d3e79912e14a39
Date: Sat, 09 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754769593
