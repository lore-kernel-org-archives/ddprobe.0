Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467441F30A4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777180654; cv=none; b=T2YixOCut7PfkxHZICpvLmt42NfwkBnLWhGk14S4zSQoRHz1TF+ugpYkjaJmx4MwvTdXA33zk/CaIsXQv0B2AnLvGEskAJZYjgrbqIaFaQyYJdT7X1MH0u0WSRbS2b2Rg3SuT+wY9V98AwsKkUvbfGwR56Bu/RD7rOLXGlbSk4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777180654; c=relaxed/simple;
	bh=0I0WbLr2MGkzCaqu48fhLQkoyLRwT8oknwwPvls4ThI=;
	h=To:Subject:From:Message-Id:Date; b=ad2FhecZlvxWWiq3OHYCKybgPE+VP8BVVb+Nf7hLy7/1MSGrv2fwm+yxZeG3f/H4aPiTMRYd0CAAxMiu95H1eDS+doCM65zxJzfS6K5ujPkVgcpHHkn+XK7A6rbSmr5hBPp45aWKtXvf/tKbFlYydeOoBEMvZhVO2/cvCspWIDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ2/DejC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ2/DejC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5688C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777180653;
	bh=0I0WbLr2MGkzCaqu48fhLQkoyLRwT8oknwwPvls4ThI=;
	h=To:Subject:From:Date:From;
	b=RJ2/DejCA3t46ZRQUFAPO4Vy0MEQ/KlHje4ndyToYug1fzkhGa34el5yTdj6wl2wr
	 yWEppdFRwdbJJFx3BtAlTj+yE3E4046FNoD+ZyFRy5MpXagNWVrizIrRwGnfBJ/6P+
	 aARR3w4FApXcV1/v1o5/p0IiB3ZifWuipViS0aq62FDjOWt+vnNMZv6dvVB8HhDNzc
	 L8Nx5TrhVlCbOhmnwHgXDna5wXfOrBAhwesDJoY30VPz6ObbzwajkFwxvHrGMF+wp7
	 NgPCh+XhJX6qbHpCGNas94xlJiB5yZJCw1z4FHw6ozKU89GA8TYTAXwRcB9QjWbxhz
	 fXixmzMEf/iXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FDEFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718065370.10773.7678044561706036524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcae5128e63ba59183e6170ff66c47261e8a0bfe90a198c3be63f9c09438a77
Date: Sun, 26 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777180653
