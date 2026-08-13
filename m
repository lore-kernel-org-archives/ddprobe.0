Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496E0485CE3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786634434; cv=none; b=jNck91oyu5p0TgJ1ltmhqSBANN6GRiXn0ReJMZoupWFFiDUdaI5JsVhwq+qOuxS7qPWBXLbVqhE4Avdt5yr3OjShZbyti9eJz0SZ8+ke0sH1uYdPMLL7m5ALqel8wAtV5TZTIrFSme9DLTeidVJ/mqsIZnVZvBdpmmA7Q6XNYJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786634434; c=relaxed/simple;
	bh=VKLm7OMPnGeLtT/HgmAChyJ9j/74BwseH6KViMDDIjE=;
	h=To:Subject:From:Message-Id:Date; b=kDNeOU5E1FqDoQHrCqrC1yy8n+0OVS91miTNxVOjzCwkEHyHw2vE7sCMZtnyorlj+Rf96TNLkMsSuh/5VSek3npaIVzs22W+TSXuqKX2WxT0ZazCwTAqQcdtesbdmKhrUXN+FLY4rP78RxfRhG1CnnvbwZSZVJPt6GOOEhiJDJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2qFq+yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2qFq+yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA609C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634433;
	bh=VKLm7OMPnGeLtT/HgmAChyJ9j/74BwseH6KViMDDIjE=;
	h=To:Subject:From:Date:From;
	b=U2qFq+yokYfR2Str3wLyhDSQ07BAuru2R6J6I7TP1USI7iwnAAOO4IxEUobhtQ7qF
	 jfOJuz3nM3Tk8KGoAGSvkAMEHeDxvJ0EM00z+0BiVwaCeDwj3vAL/c7EwEvACJPZZv
	 hz+i78vLRPDttNEBQEC4Ojs3d3UTnzx6mY6KA0QkkMCDdR2H7fEZp1trgCTXxhq9k3
	 4APQGHHwXscDpkKbKuncMP2L7ZEOf3CIaCpeBd+6xk8yOlkbOTY2Vl1OCHRsZDz73h
	 RCFE2JGF7ULsXpfvNdhviczj5bSP1e7n0DsZkSA4xnHo4FF8+GN0OPlKG8D+bdWDoR
	 kHQy8cRxCUUtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9983C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663443368.3467.89016104203576176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32976a1c7097cc8a8b7cb4dabb671385cb22ed6b23206bef360e559d17e0aa4b
Date: Thu, 13 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786634433
