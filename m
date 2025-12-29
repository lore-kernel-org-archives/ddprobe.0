Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C1B2D6612
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767009834; cv=none; b=jtcVE9gqvxd7uDiVwzS3zXzsobTZ6SyjZLgVrSCU6Eh/yTU3gFpPUqDgaHpHnqhJEfiZzS02zK4ujKgUsMC4i1jNDTht/DyAu/wdLWNljUcqASV5heZulC0ESHKEp/Ru2f/2akbO2fZRRKJK6BN11LT+Q2s4NVa8wEcC7bWs5FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767009834; c=relaxed/simple;
	bh=HRPOv5Laqey0/sf7+y+eyf83N+OuXjb/Iwk1jqg60i0=;
	h=To:Subject:From:Message-Id:Date; b=mnO0WVf1HW+6FSwV+F6MS3xqaMJ87CfIucMDhZNexKRLOkZ44wo+KAdCUNpJUMVb18fRhq/HtpmaURr/A2xB1td/WE3j9/xiYlykI32kY09KpHl8LuA8AbYCFTbRcRmV9TkN1JVB3qTsW91fNBcecxs+8pNjhl4ihMkeqtpCNso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0wUQDf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0wUQDf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0263C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767009833;
	bh=HRPOv5Laqey0/sf7+y+eyf83N+OuXjb/Iwk1jqg60i0=;
	h=To:Subject:From:Date:From;
	b=d0wUQDf8JpdgmBZBBAh5JTQMNo0zUWkOVkuLhxcDv38tVr4oUP8+zCkvAMjxevxbI
	 AM0dHNRLLRSYHL1+IipdoCpoNtgVgyLEBWrkyyE372eKRV2eV2cOZE5MaZa84+2yeE
	 PJ5YcR72V+zAQ/KUB9hnt+ScGPTAuKoXsncmKjY2AS6OZ1Rz822XMiaIzKXJ1tsY0t
	 BCcwuEo4MoOY7Sc0XaysKphDMfUHdgE31EXRqg3CT8YwFsh05CuYuxZqF3o9JwH9DX
	 jovJVlsjbIZdiqcX/eMv17mJEDRTmmWCaePj5WZdppdrvcM2NChd8BlgF6TIV0pFM0
	 kETSn1GsZaQgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD46E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700983368.1076.10213625075381958926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b81f3e87ba37099d7fd00482167ff05dd7f4692a8ce345a2b5b2f3edec68795
Date: Mon, 29 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767009833
