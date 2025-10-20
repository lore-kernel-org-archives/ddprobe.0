Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5781C5F10
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760939994; cv=none; b=RATpJYrAAwXCQhVi+8Q9NxJZHnBHWLAhbDLgy6NFnijZZj6cxM+3gxBI31e7jYgMGJz1Uq2BwFlYQV29LDB3emIuSp2WvrYNQKIhhiornNy5wqL8E+25QlBPmrkwMdqMBpjrEcVlGL00JlD0eN/3gL/MsT/fIONpNtteU7xh25o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760939994; c=relaxed/simple;
	bh=xM1Qu9Mu3grNR1JKpwLxSWwpF93XR3amLeysWVlTVbA=;
	h=To:Subject:From:Message-Id:Date; b=iqnzBwxb+8lyUJhItyRK7UHSbJB0WR94Szjiii7Q5ylbsVqLJtmEostXzYviMdfOdg3LnTsU0a5h8KQ9BLvHMZuHFGdi5dCJzsvQrJwq/R7zW4pzWLkSsYjc8yOqWGoxEALG6dZoV2lkzh2j1g75cAF7pNUtbC2mc0PihxqqP0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/Z+X+CE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/Z+X+CE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D79C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760939993;
	bh=xM1Qu9Mu3grNR1JKpwLxSWwpF93XR3amLeysWVlTVbA=;
	h=To:Subject:From:Date:From;
	b=d/Z+X+CERxwc41lgb4sgTTECj0nZDaGDg0IrKDFwxWbL2CdsyKtZuHdidB/HOKaZp
	 +4lVStkYceAvTyGajCD3FQU7GIScPZywN+sOAbDoHZKtOOPOtaTRylAKNzP4/UiEvT
	 TVWLEvpSQDJItDbH1TsjEmK5po53N5tRvanLzc+RRGVz3PGoqp1E+fPC233y6Ua6q7
	 IIcGuKOvvP+rrfl8U5Co1Ba58IVg5yPCS1d3ix9u2UFuyf7CJoOodGfddANW27p3xR
	 2YnNY2KjsLGs5a4rl9J92xMyvycviXBREXDCkwzvOgnvpNkqNdRoVRsgjYNcuIZZyd
	 kQyB29VfrH5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D0ACCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093999358.13831.4014858401747560565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d1932c0f7490961b1de6da1869bbac9d4eed159ea0450cb4f95693488a12e8
Date: Mon, 20 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760939993
