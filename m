Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA4C3ECBE2
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784301514; cv=none; b=nFOrybkyGTrb8Lwr1ZKlHCFuupRsNetqRFbp+xQ7sY++adbBiKRa+hj6IklAzmlaju57My7c5InkrPJKAApZ5+UpXhsMHEFWLP5sLdIYxPbLh6gwrDpKIFqwXr0TELRM6D/Pwt5JdjadH5bZQVnafkfB3Ven9ZvKzI74P/Na9Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784301514; c=relaxed/simple;
	bh=lA0zO+URDecWIdfTPYOgyWOMRSuM6/qsFkzP9w4FVK4=;
	h=To:Subject:From:Message-Id:Date; b=Z3d4u/YGyVrEK19VkOM/VoOdPXMOMPOFMAdDfcT+pH3Dv7Ke7i4PAvhaCHBvsZVESiBbsMmq56GXjUCfB4WppoPeWh+QKej7RFRZfMwg3EXAjqCAARI0iNr/OyrYua8cOjtlPcMkyECQddFygIbTsTMs4figumGkayTZ0/30shw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRgZ1DJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRgZ1DJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784301513;
	bh=lA0zO+URDecWIdfTPYOgyWOMRSuM6/qsFkzP9w4FVK4=;
	h=To:Subject:From:Date:From;
	b=mRgZ1DJgymfrFqMipMjVxSrNMpESWVgjDbqK0HL7XzFcvMn2ibaTXyOImOLTx7MYR
	 lX22r9WChnGDbaUvulKns+Lno97DOFkxQWV7hOhYRCUw8FAggW3Y7Kgzuasr4zQZGq
	 ZHXVfthGSB0C9HpseocwnIELknksWJx4Q3hfQYFwpQreVKrya3adAhytxr4NulumgV
	 Ia5B7lssmWWSb2/YD2BQjOcYfVG6i7/B0xA96VZn5NBZHUaPjbINqQJQZfJG8c/oYy
	 uPGmL3mNFbdds4/8YCKkw3j73jsh4PawSqY2hrhFlpGS93bz1as6FzvNms2yX4yACg
	 v+/xpB7ww16qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D0C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430151368.29548.3028087486795043145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421e0f1895d103a81ae94e77d484d968608f090dfefb3f7e45c4a0c5d8d0f3e8
Date: Fri, 17 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784301513
