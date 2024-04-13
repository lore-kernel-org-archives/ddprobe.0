Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB3C3DB91
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713001163; cv=none; b=fblmzl74dHodpcaHEFA98Cu9np9O3lNFNvxqAGOG6mCKW/GZCkp9WlJHOQhPBEo9xHSQcdEpdB4ZR6zmJuAREl1IEH2/u2YNWLp4KDP2ib4+psELGC/zT+B8TywkJZTOsXHvNXLnB1XqCEnuJYstYHG+tQijyvDta4SukxvPNJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713001163; c=relaxed/simple;
	bh=XaHtGPbdmdLC0t+hzaJcsIRTYMtzNSz2QiNqwNO/dco=;
	h=To:Subject:From:Message-Id:Date; b=t6xFkONieGbK39hiAcFhTBkjiohU3cNUX7zRQw6uTTeumYSAhpBsr1fhaH13jrbGuLEM0s3Af3pHukXyfyK79eu5TuU2m9oZ3YfCgo0DgV10bl8QuEgv1w8EfdmpU19GWnjYnGPfXI02Ym4SBHXJkv+IElJHhRZ+nxGwyjgZXA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzD6JOJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzD6JOJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6252C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713001162;
	bh=XaHtGPbdmdLC0t+hzaJcsIRTYMtzNSz2QiNqwNO/dco=;
	h=To:Subject:From:Date:From;
	b=YzD6JOJiqcytMcg/kRSKOlXPCAmtVuOatCkJLOdDSla/HwCDzxB62MMECNfrtE8aJ
	 2R1L+w4beRmreQx2VrOaSSLRvkvKBYaD0D1RPCa97ik5z3+5KmN1el4RSY0XTeB8Sn
	 GMIpGi0CqXzPyPKzK+vgY/lFW8XjgEwvkKdaWJNT0Bqw5W+lsS59UoxkS3qKpxfPto
	 1ObzON3Uz7yfE1i2wdoYeXpC+OdqklommWHAMxI35M38LF8Sfcd4fsMlOv4IPkIjxj
	 YKRDQxbY3EpjP98e3r2xILxk3o5HFjt35X1jUdyDIaooN4CbVDghIA1WHzoDwirE9D
	 EfV3pxMyFeT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F5CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300116277.24600.3929028030354072531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d486f20ddba068b155aa2245322713c0053975ac720ac9c6f6c263ed779402
Date: Sat, 13 Apr 2024 09:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713001162
