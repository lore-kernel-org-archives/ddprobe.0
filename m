Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3536E1DDA18
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780194274; cv=none; b=mIFJ21PzMNiHapai/31bnGefFn0wh0HrJgTK3YNY3eYhr7kD7eqqD1GzpTVfh4+Io4Ktz8J8Bu4mDT2trPnO7GVNt546PdgNvRTpw1blZmq11b4Z27aSL/QTHnuk3bTpccEISTP6sz/W1fPxZNbC/JbrR9PcmrUGROXROtJxbhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780194274; c=relaxed/simple;
	bh=opm61v3i/8c2th+jPSiyzUlrCDtkGutuj0ZR6ivaze4=;
	h=To:Subject:From:Message-Id:Date; b=H2twQilJyGwsCoZakwQbbUyDswFRqfraUSB0tAmmCf41kDOAvGh9M9+19G+v4CRRm2P4RMWahzmJOooJqxUheYQgbOFhH1KDb4SqcAzNnu6XF6dhx1ZaDJDJ1ZqMo7Fuu69B11qfXifiKIBoLtBxPM2TibMm3Cn0n3Pgt9Co0QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru1TCvY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru1TCvY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65F1C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780194273;
	bh=opm61v3i/8c2th+jPSiyzUlrCDtkGutuj0ZR6ivaze4=;
	h=To:Subject:From:Date:From;
	b=Ru1TCvY5MM09A4d8EBzmeat1UAfQXSKfFBirmM727LNq/4BoxCacJjgdBdamO92p5
	 O9TMQZYYIS6H50w6HrCoQxsvKizBbcX2PjfGgw8uBC6+nZgj76vclWZ3LyDMGksKDz
	 4t9fsgSFG5+MRh8PQxRu1UH34ECTMfyasouOzp+Rbc1TGAqHIYLpuwtaxptpDejY/v
	 1tTvjlA3Ola7Wu0HqGOLetALVHAcXqPh8KmhR9LhBTHG6mAF8ExAxTELAMvmCU4PlH
	 R87hd+D7IQSBXUbagdyGiM9hgGtyhNTroWC/GSvIhPP5NpNl/MI6tS/kXUCL7U2ayV
	 owJlx4e/uSVkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2AACD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019427368.4605.3398128636054332528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0255e6aebc04948d7359adfdf5842ba03a8a3df2d1ddccc073a2a9487f378b79
Date: Sun, 31 May 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780194273
