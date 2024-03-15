Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8423DDB1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710473297; cv=none; b=I7rgiAA9UTLGyHVBGJ6wEVrLpmarmk9l8xXsDvP1pH8LwV1fqGvHAWOyBMyo7TXT8HljxKVnYkaTptN+0EEeDTADynriTZrFieAc5eVbb57qJ1ZGeQrYKlqRy4EK+jQ5tQ55A0ilN1EwG2841SNqE/ks2D0OacsTduGoVlCpIKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710473297; c=relaxed/simple;
	bh=RqcskRVwI4J8lWoOWwqi/aPdg/A/mOyeoBeSkxPxDAI=;
	h=To:Subject:From:Message-Id:Date; b=b/MlEoz/QTI1VFu73PdbXd7o1j9t/uDAytrYdVs5s7FS6GnnS0/IVhvjD9cDLS8FghWuAJl5DVy/vfwiiP+o4NqtCfmN3hLgrnMHb1PmodtIdZ+Kh/ByaD8McdMBln5mJ+b1PoD1GoZar9XPJYrEvDmsJQoJttDDZP3WtvEb8Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAl/gVtm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAl/gVtm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CC6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710473296;
	bh=RqcskRVwI4J8lWoOWwqi/aPdg/A/mOyeoBeSkxPxDAI=;
	h=To:Subject:From:Date:From;
	b=kAl/gVtmrLaAIRN5eY+GJL9and1ZsWKaUwQjuZnxZzV6+wQxRhqvUQbTxNm7Gd/as
	 DUZLBnophOa90RN+v+8VYsmoGvBTMLx/qjhYeAnNbGtAu8/fzgNHULW20rY2KOA+xc
	 RWv4a0JsxXt+TULtXiyRLFOxc2LEGxC24RbczQSvGc0zVJvs+q9RhyV66VTIh0yrPA
	 Ouf4pfMcRWrms99g7n7yNh7e4u4b55n0sGY02S3x9f/VDGRLQYuZ7B8eRVC2MsKqri
	 IbotwketHYSTCXSjUnSMi1m3PUD6RFQ7aqzRP6n3OVZwSKake6+u9tTA/1HtuSeEbt
	 cqVl8E2Ya5uow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6777BC54E60
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171047329639.27140.14941967914495908459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a090e3494c6ac77bc2394db2a0126cdc2d23cdd198eff71650de922915ab9a9
Date: Fri, 15 Mar 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710473296
