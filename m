Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7D018BB99
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726182954; cv=none; b=VVYL+P6fNdihUEkOvbV3+FJdDtE2MgpBQLUk50QCsU78oeJVTUYCYSNZeGhM+9ozMLgqEPTJ5g08H2UgAXXbpdEAhUG1hm+8mC2q5mP7658lBIhJAlk5NNmJrkn74R/BXm800ue0+XBqt0Z8tSX9Kx4/UKWfET2snum0CEekfYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726182954; c=relaxed/simple;
	bh=LCvePPcgiYMXLkIp5/WfguE2MyyyQXe0Tt033DSaF6w=;
	h=To:Subject:From:Message-Id:Date; b=WNfApR1vBOcp2sMdDJW/ygdkZKqRoBPs3JYnebapuzpPgEO73mvuTTrq/GwLoSOsKE3da3NWuyQxod4rxWr0oe87uEOds3oFu8xMTR0WWU9UTdXhLdh3x7op96JfQCP1Mcm5gy6jfh58YAtshlfuqAhPvzAcID6jPUv5oSLubNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkO6Q46Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkO6Q46Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC752C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726182953;
	bh=LCvePPcgiYMXLkIp5/WfguE2MyyyQXe0Tt033DSaF6w=;
	h=To:Subject:From:Date:From;
	b=AkO6Q46Z7ZBzTNrMNUq0bkdI4I6cRKEnMlDTfjku5g6V4IpnO2z1IAbG1XV0WF6F9
	 impIOqGfenkEvo5fGtCbvEZmJo4MLPGASw3GG2D4mbQsZxcePrGb0KnZvg0YGMmDoK
	 V8FyMu6vgTaZNqAGJKPuNJvuKiXLbvy1IQcMBnUFU+6bcs0YI35NEmtnagM3I3cR14
	 B06fgJJ7DN2VPO0gYIN8SD/qrPpRIIGiU8vcGKwZnEX/qhQVQqIECEdIpDvc1RqHYA
	 UI9YWBXbE9z6fTBmLcGPR3ohmpaeXY+ttuJKPb/x8GxTPTH+7s1+VZ9qHTmsdGMMbH
	 ydamlnPGG+sRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33B1EEE271
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172618295364.14630.6421617230338833550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26df37004801b267590abcfe597fc691179df76d705e6c7afdb3e86afb12bbd
Date: Thu, 12 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726182953
