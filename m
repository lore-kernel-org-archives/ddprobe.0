Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164ED22D4E9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774234494; cv=none; b=XudUQTV2XpGuza51+FWQJHaLiWMs6nzKDYAQiKTn1zK9kWpJHKuCT8yTZj2ErFgH9SDZGNyElfTUqIJu60ZKEAeoYuMTEXI1GEwozYxI3JQsJCkoTTTCB1OnUnDS2gxdWfw7NiC4R3yMlTEjBlPdej2qI88qNOEtzAPpLnfEEQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774234494; c=relaxed/simple;
	bh=I++j5UegRExG+lSpRCmlt8poVdTp4DUxFHQIy4a5znY=;
	h=To:Subject:From:Message-Id:Date; b=Qv9M8vSaqqovFkObsoN71fVOPOrN+zK/IT/J4b998lrCAVdblu4oPj85DF/LX/H+wKiN1Wz7A4CruE5AbM9yTTAr494Y1U0U8HZnrCpxzUPgBAe8OiLyGG5tfJ0D+CsuO5oAjDL67aFqF8ipJk9Q0GJLwA4/Th987VjuzVyZxW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzexkK2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzexkK2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61C8C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774234493;
	bh=I++j5UegRExG+lSpRCmlt8poVdTp4DUxFHQIy4a5znY=;
	h=To:Subject:From:Date:From;
	b=PzexkK2AEHerajxvvUCHYCwR/DHeORdmrpcb23eqphKs6ES7GeRMu3X2uYkWFou3l
	 3GXB/7vqcPuMm3W38F0fY+ddZb8obdtUety36ddmhXJzQtXmd+RYMU1rp+3WMC8sZv
	 UsklBCSmcxBxrF8OZSmE1Kz3B+h4YalCgpusnn3plEiLkGcGAnHu/YH+pnlzKCc3i0
	 JkMaat0BDyJgNQQd4ysq0KzV2YQ9OooHtWZf4q9oC4iuqRvwc7eiuAt2/5NzJamF8m
	 utBS4sMOpElDtcPP9BtzjhT+FBQLwwXjpqRDapH//AuZJCO8JDf8GDOjxoilrl0RDd
	 s3xljA5Syl24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175DD58CBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177423449358.6356.961793179829306495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f781c71e258ac2dafc93496489ebb36385a7ef28c6d60e77bc996bb1d38e1e8
Date: Mon, 23 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774234493
