Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5152B2E62C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743820194; cv=none; b=r2pZrJ/OkhVBcAVjZBVbk3NMmxaV63nvQCaKGdUXKT+DxywgGJCYpzPg9V+AXp/ygU3KtCPnQKYIc/SL09LTi8hFtZIZ6EZKmF8sb5h/7DxJVPWbmTMY1dGPi/x0jgPe48nCAxKiVTi+hGizTdZ8syXpllZLZTAYpDeDQ54XxzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743820194; c=relaxed/simple;
	bh=1Mv7gSOAl0crIjEDjGwaTb8srZI3HQkO3L8Dd0nM9HQ=;
	h=To:Subject:From:Message-Id:Date; b=IhUqIaUlcg42P/NlCv5Wt150ilDvNAn3DP8JKvt+M3BhiX3FqIvm4tIns2TV+bzPr4QmD+N31PeX0zPz/7saEzI5px01QZXkcDYpjUEC+h3UdwPt2Vf8NK89TwhF+SJiEc7uttZeQvC/VRvb/ruSrTrq6SzkMKKWo/NSbALpQW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMqxrLVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMqxrLVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF77C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743820193;
	bh=1Mv7gSOAl0crIjEDjGwaTb8srZI3HQkO3L8Dd0nM9HQ=;
	h=To:Subject:From:Date:From;
	b=SMqxrLVYyUiv+Cguw4yTTZjD6Xs7E5GXLD2GOpERz2uMcCnfxx4/EMfSHvJejxZGr
	 gW5v7sufdVKPIq2tcKrv8tDM02hbOXvxai+qaAH73kqK8QROJM0tcJjR3E6klEAtvI
	 +MKZHAAjpIMB6sg43fbK0qVaZxZI40vj06Z9xuXESEV53/RjU379+sqgAc8A0WabcG
	 7d7crqlBRNUCTFgnGuahrVEIWcWlkgzGdOGVk2mpFlraZRX3Vm7+OnuNJeXLAGoDpZ
	 6uvrPCaaSU2cKUEaks/Z/RPtrvVNdZr3JULbMSZ+QiJLH8Az1EAUeTNHa4w8QchcH1
	 HiokYEvH5XQ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B1DC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382019363.28321.12716986485523629799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5689c5afc9a7e271e9706d48e963ad3c64e003fa14bf57b41b3854e584b85db2
Date: Sat, 05 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743820193
