Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387541EFFA6
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743502794; cv=none; b=eok0cR5h++KGXdAnDcn06epOK8DOciNsTmV2yOUJBrqnfkYne6gEj88jIfXHAB9lht9c2uuw0faLpIBzL8A9hhABittnMK2rdmKKJ+1xrBOsMyYmMlikXJKtV1CszMcCaMEultVGKjPqE2U87vdTDl2eSlf9wtMv8MEVElILi+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743502794; c=relaxed/simple;
	bh=yfk9e1TmRjleZpZoRWS+TMQ3DA4pMasDQVzct81S8q0=;
	h=To:Subject:From:Message-Id:Date; b=e4XHEEY1a+Qd8LG9lHNjx3QvacPl+c6jZtIS08LYEvfG95gHb8WigO5u6MvOXaKNCdvbQ7M88JOJ6ydmH/IxCF/Mz/M9zXjxvUTJW3oZth4A6NQXeiStiqs628Sb+l7utDzHGmlMiAYl4ehW177oEl4cQW5a8D8DjlIiI9CrqnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyQx3wUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyQx3wUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2357C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743502793;
	bh=yfk9e1TmRjleZpZoRWS+TMQ3DA4pMasDQVzct81S8q0=;
	h=To:Subject:From:Date:From;
	b=uyQx3wUWO37h1Ri9Iecz7d/NC+cQwj2KGiIOXBxhzB2kkl+wS7oFXNZip0W099BiQ
	 nVYxMWQG+Hwktv5Mjh6qiTrTRE/TcA93UMcNoK5fjEquTkm0R1eWGmjJfCe/4YNbFd
	 CEKtcX6houRXDmAytz7ZJCf9z7NzHRwsrqs7lLvhdejivwPr6cKCnDYZ2f91W9Pglk
	 wwiL0CO67xO6aTqjpfCxUYUVYWjxfswL254CxxnNFubYu2QrDRGsbNcMXy1jAJbYeG
	 rR9c5xDUYlnEoOKuIFFDeTn0/KZ76inuZ6/VsaZ5Pg/HaqeSbvrq90GuJTW7eUBkBj
	 RdQGt9pCZOBeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E13C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350279359.10359.2089027266784624917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdc65b9ed666bded69236dde4effc1dc7e3fd5f11a83bbe2b86a4ffd4dcb58d
Date: Tue, 01 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743502793
