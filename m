Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB5D1E515
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748732994; cv=none; b=sXAwLCy2pUHEJbD8hQmr4JCS9Z8WVTH7aLnFfsQkhUQ5CwghOgIvgyxVhMSVAExh4Q7MG9D7IGMPCDGrnSRRyQ0qPnM6DkpTEqaNtfJJ2310YWdCO2z+PojIw6wXd2eNIEDIiBNBzY7xWPoNmd309PVZr01NZThnleUd8HIYQfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748732994; c=relaxed/simple;
	bh=hP3+pbDC/KvOAoPRfb3leVgR7HW2kCkL1K8KyxEKTU4=;
	h=To:Subject:From:Message-Id:Date; b=sM6D7KMT3dDEIIiOR1S5jkQKdvuTXgUL3qO/o3oVH72IAs2P1usAsnxF3i07ItENJcH1p0ehCz47QIEPBSZMcl1rx72Y+3kXHkPWqtGkYwUI/wc3F1uDa0WExNZ/JOyIzalP9pcCCn2+7vNi31ICJgqcRjY9mtP0zymACQBP8Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgoCpjsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgoCpjsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F6AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748732993;
	bh=hP3+pbDC/KvOAoPRfb3leVgR7HW2kCkL1K8KyxEKTU4=;
	h=To:Subject:From:Date:From;
	b=lgoCpjsZJcgjTgO76OUeaQ9FKZRG+fCWDEEHgO93jNNWujJi6uVdmf4vzT4Sx4R7l
	 rKLj2dSTBjzT/p49InFPGQBBfrsf71DVBeoim+19H60nsa3S4ItPjV7kRRIzu2wVF1
	 LZFdxtK33q5y7ArQMa/2dww7vdQyw0XSHGNr9WSc13UTJ4BC1q+xUv668PgtB9VyD4
	 wkROWfN4+Q+r7AomPTlsatLdz8BirVt9NurWTdBHTDnQYgr8V08WYZOqt/YGMCfIvK
	 61R/E49/ebR2X/6MFk/w/qGc01EyqiqPUwB/gsa/sZaxwBYy0L4Q2jW1wQFxjKZfDa
	 Lbf2alv83fQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90296C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873299358.10019.7124374372712552568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8189cdd770832126f0fa8fa5e76c1b266b1cb9fdf4764967e435281fcb33f9a3
Date: Sat, 31 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748732993
