Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE3E265626
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739542134; cv=none; b=H7hjcKco8roO1GTrZEmTb8EPWoZIFTGqGCcVInIMfzEr9nLV7SRXJyt2Am9GLrgf0D2RXzEAmNEg2G7Ntz7nu9rxrcxp0RNi2qtk9So9bndYxAddFeIezCm3krVbUfw5jggqjiksjMrlc6jy5sLgGf4y6TeN5x0YbfN9xcdypHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739542134; c=relaxed/simple;
	bh=agu2oHZRDaZ3gLDKtkVqZ1iNkQ6k3DQMEqGHjLGRDis=;
	h=To:Subject:From:Message-Id:Date; b=LHJBaSVc9Kzilm8bTfJe8pq27qR4sdZnrxDOgDzUpNfFuPQYn+UK0l6YgsqJhiuuo7pUae2b90QNMAwsl1S874aqYM9Sx4dy0J4xKLddYOC/2Qx/6/wCnuvdwz9zohQCvWL7mqe7WXnIbHgu6ZTBBQ+dPli/xiNwwdyRdqgB8Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGUAZwfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGUAZwfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6702C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739542133;
	bh=agu2oHZRDaZ3gLDKtkVqZ1iNkQ6k3DQMEqGHjLGRDis=;
	h=To:Subject:From:Date:From;
	b=kGUAZwfzbf0aepwd2dryvawSYJAFE4HlnOR166+w9gKPz3frZIsRLOG1rKPbSUFOF
	 R3CqRmbL5tYGL6W47gXJIBmnBQcLE0QHLhNqKZqtnSP9QRNaDU1cMqWTFWpg834R8t
	 uiYqKlJ6s05T9RpqAqZBezyiz4lR+gCq4NAVS86uOzAX4TO6bc3+69r6JcxwyLu1kR
	 48tfuOXdwZ3Wb3QfVcV2po12DlqKCYmkHZR6rjLhgeer1FB0syO8DiyoMPKcaOvWUW
	 25dOXsIEunuj4LMIBGOWM2H+AMkhnZEmudzAHMXv0CF6H4nk9pC027ha37N2MAgAm5
	 AfcndItNYN5DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A2C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173954213359.8776.2621747514775631004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0c9e4f402cea3d519ad48186164bafb4657b12ee79fd668a945f3c116bb0bb
Date: Fri, 14 Feb 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739542133
