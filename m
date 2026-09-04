Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4639F3B8120
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788538834; cv=none; b=t5Xm4HHFIgSMFhUprLxq1DIulaoE+K6A2bNmBSj4J0DucEQWQWuyVNlUqmnqBSuW1NsXeL/Dvgfq7N6eIuCCkfl7ETtxW3LNUoru+YAQOg1kkNNMTUnHCg0Xq7WKIMmur+qHdaeOaIqAVUdHoafcNPRAYmRXhXNvCFXpiZeLZOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788538834; c=relaxed/simple;
	bh=Hoki4aRB6gUNcGKgREx/J1DCgWy7IXXQFqTM00NoZak=;
	h=To:Subject:From:Message-Id:Date; b=K7tnDloQxE9CIJ2txPGUvUSRoFKjE5bYVY7qHXV5v2RsiokMMA65Txjy/u5MOURvrNK4UycvWFEQ60hdhUd1EVvTG1/FP2Lj1gSGZEBrS3lc8nIusQcQTk6XhgARZUrIvoiQkaLnIMqs0jF9jPrEiFGn3ZMUTxfmWNbjgWE3YTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yv6J34XE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yv6J34XE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BBDC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788538833;
	bh=Hoki4aRB6gUNcGKgREx/J1DCgWy7IXXQFqTM00NoZak=;
	h=To:Subject:From:Date:From;
	b=Yv6J34XEtOxCOB5IF9AJEIjHeIdazKkmsF38zSiivIabUt2srevy/6JVG+WcWeXDK
	 5RYPVw+S4eQF9G/VxGGaxC3QpAbXBxSQHGp9ZogTLCF1jJY167MjZhmWMIppP9o7sy
	 tcZEE0F0xcDVoO8wg1wYa018YwBWDo9DK+ioqDYUN1KyoyZLEUsLZtxkL1vMrk4VIk
	 Fb0W10pksAmWfvhIMpX2gPpShv69h+VkBe8YLIP7tpk5feC0IicwLIG0taWHYDH8G/
	 iKq09bMvGkihRT0rFzEb1gVnwAZ/zevAPbRCvWw9trkJcEkEMhzrn0hQCoBRbGYZK9
	 0Lv+fMbiAseow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC389C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853883369.6893.18000787482228748648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29e6b0cbdfdec70c218e093e352d72d6fcc7c3897fe35ee9d4d32d37f1458dd
Date: Fri, 04 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788538833
