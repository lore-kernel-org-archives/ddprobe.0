Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB90199FDC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728534354; cv=none; b=QpRyT+u7Q5c4KzJHcPJmVbI32JiBlr2oL94jkZn7s/4rMm0ilSvJwNVMD4TYaZUapz6ORA+kFqvywbkX7u4Aszx1zoDzlWOXGMXYXyyg3gojyEiM8u1F+8TyacB4xyCMJM48ph2HP5eSFqP7IP00Y89Brz2Wko4+e2eYpHxgELI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728534354; c=relaxed/simple;
	bh=8WDTCTzR5f3G2D40bviiqEvNjOWETAQ1EFeRdSB/Y90=;
	h=To:Subject:From:Message-Id:Date; b=s1H1wTuzBbctyFDdEXFmdgsYmUV31jhDuFSiClDFiO9P5HO/0rzojQIEK+lBr4GOT5zaPW8aK/+1ABiSZf0+yRobC1Lsdt6fi3KFv3VM/ZeCJXo8UkwPEprCtDZf+G+OiPMJXOVV8TAc+Gf1glqQcEdPkCSJyYi4MKWBOzzMfTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQOCDiFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQOCDiFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF075C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728534353;
	bh=8WDTCTzR5f3G2D40bviiqEvNjOWETAQ1EFeRdSB/Y90=;
	h=To:Subject:From:Date:From;
	b=BQOCDiFco4tjrXZP/9lyHZJuRD++A8gmDNDd6aOr2jVyz/9+MdYpsq89bPfFD/C85
	 yKIraiYXWJhdrJvgKX2eY6TI1cHjSQjI4WsEjnEZrkNwBF+db0Zzp+wfXxKKXvOM5P
	 jRDrEEBdAz3N35Pt4TKbye8KO6C4aWNhbGB2gqAsB7V4pjs8+0kdjgktKa5Ew7/l30
	 3v7uHm2apu5ysZJzuA2qH7Wme/Kr9M6M1aH1ZEgAAOO7g3U1oZzPay3IQg9dpKJj3L
	 goRH41wTLBo/sAE477AxVbZCB9Sf4uNxh8ikGRx8eC1SG8oGYqwVdXZNHcfs47I+AS
	 Xy88txwJ5kFaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADCCCF07A1
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853435367.16744.9598932549843721702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893cd580c3e4b5069c6f670f6fc98aca2c3d67121cf40f671f0c376532425b0d
Date: Thu, 10 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728534353
