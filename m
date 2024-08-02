Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248431A83BC
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722615354; cv=none; b=a+qHPqhp070Eve+3QORm/4CmuSE6u+XqAQRqpCfwmIdMEd5w0QHu+wlUBUmvIbfGvDJE5Te4X993JFZYDjFLtMfCIl0dZsxH2xPUMpf8uIBoZkY4v/ocSdbHtvEPdiW18Nx6v59L4CfowL2DOjVVELqcA5d8K9eNyA1kNvAau4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722615354; c=relaxed/simple;
	bh=uyUgyXM+cWL/0zSlWntk6qPN7oVsULeookg3y1vnD1o=;
	h=To:Subject:From:Message-Id:Date; b=YxC6ZVFHlnZMoG8XeXTSYkoaZPg8cDhUB+kL05HCneOpYsatsLRrlBRGRX8Vt2KMIiDNwZonzKLUYDWFpcOO5W21YlN7dbsIi4SgMqpblBsv71SpLIGl1IZI/aPKW+AKnkwyn9ze0Jyu+ADzPRXAPH7gJvyqZsJvgQnLQ2DPCa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkS/Eo40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkS/Eo40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B179AC4AF0E
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722615353;
	bh=uyUgyXM+cWL/0zSlWntk6qPN7oVsULeookg3y1vnD1o=;
	h=To:Subject:From:Date:From;
	b=OkS/Eo40uaV5jcF65q+gonAJSc+wcWESHxaRQsEFOXTnR529ey/8i1fM/x7x3nrAC
	 vX7ViAnHDrb/3PpnXAaAFUmNXEZUH38myPSRTLZwOav4BCHAlq2UzZ6Zs3S1utJPcy
	 7PBfdR5wsxHj/s4k18WJKp7HWN+Nc6g2wI99tkHDNT5bBcuKR0OeBU8uvAFszsQklm
	 vIQqFaCrope4fnqOqaKPu5WwwAGakuoyMOrqvtLRdZyWyjFZJdBqqANavP2BNSAzD5
	 tiMUFEmCv6xyRNhy2nrUn6lnAa7ucauXn6kWHvptp/K9wc5ItYysTZxHUIVk4ziEpn
	 6DVGGwNZ/RIDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BCFC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172261535360.432.11896713728727752433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb7cc75f5deca43a108d976ebcc7d9de0325aa5cbed77ff5ae1f00c516934bd
Date: Fri, 02 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722615353
