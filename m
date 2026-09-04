Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A103737A83D
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788553234; cv=none; b=mIGUDREazoi/DfUR4ykuZCm7pLAGKbd6dnzvCM8uLV1WOaiiS6yF/bVfM1JltR5PUgy89nxuxYdMhCLipAx+uUrM57r1kvURP3EKQjEQ9Xgwk34T0QptF+NRg87jGMb6RaRicmDTNVS/O4TaTy9YY2Upm9v+5VWHj0HqaDMoGgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788553234; c=relaxed/simple;
	bh=A7gN5jINNOfAbk2MIB3nixdGNW8rOaLJj0GXpqySU8w=;
	h=To:Subject:From:Message-Id:Date; b=avqdlzQLhdvppT6EvQi9QQyNI3c+FbY/RFMDa6z9ce6rhT+42bXXjiC0KjK6X+nARUqP6g+RxCJ/ioBUqm9QWMxNVsG65qFJ/HENgCXnKaVQlWYLzrBZPWOQVEIVy8HNGc65t1jTm+Xrr4VIqcnGQ4H+Bw80a8EVeAq9JBDfz+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXztn+yD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXztn+yD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55F7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788553233;
	bh=A7gN5jINNOfAbk2MIB3nixdGNW8rOaLJj0GXpqySU8w=;
	h=To:Subject:From:Date:From;
	b=dXztn+yD8mXJ5FIra5akeNHLreY9JtxhlLym8ijzivyP1HoXJWoUjdUg9ukavu5qS
	 V735lI80jC8Gh2Nsa8iKmi6xcnzN15RzZRc6aXZdMdbrVv7HO6767gkxZGUM5fDrp9
	 f7XDTEW6RwG0WxLmw5bgfZzi03QQRY3agueV6+5BC+oMEjQ9Yk4SmSScosVN6l7wLI
	 hLa7mnOAWBFeLGmvoI2bN4jdjkD+CdlCiqW+YFVmObJTh8lcziOAs/B/1CgtTjxPEw
	 FSfd4SOGtL2kSZQn7yIRxKqVUD4F3tMtMbVDg/thHofOC8QtDRZruNJGM6p2mrF1hG
	 3i1F6/YHu//Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF10BC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855323369.7346.14924785692291195340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc300b9bb34d0e0860bb0e5e101199d917353f35c534aa0fa88b837c025bd8d
Date: Fri, 04 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788553233
