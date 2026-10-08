Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548D11F3B8A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791420034; cv=none; b=DU58bPvS2Pq/RdHpgbjmzuiXkQWy/eafzIsyzd7v1PkFlSRDvhTwasaiR2WrFxEjzzxk87XsdpNIwT0COAr7q4+8mD9k3BI+T+RdUjl8/PjdRqKfnQmr/CW1IAH3s9P/BMnb5RDevGO1iyXkQdGDBlqTeiz6qXAMyt7reSru9p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791420034; c=relaxed/simple;
	bh=EFcFijUFuDgJ4CQ144V3nh0UCbSb4sgJYFNzLXWIqCU=;
	h=To:Subject:From:Message-Id:Date; b=qkHpVxSxl3VAFJlLiBlnJKYg7gclUAlYBtq2WLiQBgFLXnF8a10gw+Ce5KFb8Nbgnt6SFROYxGkeElhqvpbfVDJzLLf5fee1BVRZhWQJp0Vma38TGKdi9l38QAskQs7G2NN5iGn5Cr6//ZqOMU8rgeVIxNS4BuHbgtdBi4Mp5r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk2vbuzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk2vbuzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1887C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791420033;
	bh=EFcFijUFuDgJ4CQ144V3nh0UCbSb4sgJYFNzLXWIqCU=;
	h=To:Subject:From:Date:From;
	b=Zk2vbuzfMVmqmFp7Qv/s10++L/8Dc72ednxe6JvLAPsN0bFYFlnt5h4hLuBltshb/
	 WWRa2FXPfpFScnZXTr4t4FMfin+35CAPLoWM9esohbnTMHgd99tMzlGpSNBtAx5p2V
	 ALpBw8glf/lywxYFBUlgcHbVjJvIg13btaqw2h8lLg7zVp1cBETqhqqrq6P6e+twj/
	 KjHVdpJXz4MsQ300rQuISu1yxxJzcwwGPLqbG0sttJoeO1JNWA9TPl5nI7DqSipkOY
	 7H1DUWE2VFrDNloTNAkV522Bl5KBzLBVCaBLDL+WJlc3BxN2FfA2/tzI3tcUthhZAn
	 luD+e1vRFzPIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B40CA6009
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142003368.17083.14091996104531034021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e508af2c69524e119536375120f9042908226467251b08270f3a4be601d7ca49
Date: Thu, 08 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791420033
