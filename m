Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E43049BD69
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789516234; cv=none; b=O0Lpie3QeclLgsPLnhlfRxI7LE6iE7MaW7sOQ2voxgRdKaYKGfzUN6LstaFfIzinQBWPlpNO5+gOiQBSfgqoYF63JZCJddNsK01Oxsp14UQ6Zg/wBSWUefypE8mMsy3J3tfF00CVY+fD20iQtyQzJPMccce7RToPqO1fR1nCwjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789516234; c=relaxed/simple;
	bh=bY3UY7sc1ZdH8qlRVwm8KzftboHpFIPvjk/wURINjew=;
	h=To:Subject:From:Message-Id:Date; b=aLNpPPEFtMSbggZZ4cxgX0P5WzZLSqR5m2M8HDNp26tqHddXly7rC4lTEWgaZstm3tJr8Wd3H29jV4DtET5MQdpYNHy091N71R1xJ2Dj15ILrc+rlzEzpmf48b2mgiM5PuJOqGUcnNMlZIjaqV8sd0txUQQ4OtuQEglDc3fc19U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J07dKacM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J07dKacM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8CFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789516233;
	bh=bY3UY7sc1ZdH8qlRVwm8KzftboHpFIPvjk/wURINjew=;
	h=To:Subject:From:Date:From;
	b=J07dKacMvU5KClouk1I5r4yJGBoZxR60P7iryzSO8UhoNSH2EgcSzfFbDeP1wgzDK
	 ptRY8/5KaUnriT9pviAV3HsG20tX8SwUWzt28peHWBl4FA9ysnMFGV+XpjaCbowtCO
	 ouhjvdLBcHpdDMJimq+vj3tte0hbqyC3UW/3ZnPjsWHU4i4d6f3x1N+7Xxu3rlSSLq
	 7jgXxYpFzEs3wrr/TrCuG7avLw0ta9/cfRVBCiyNfFYDLivXe+cJUTrJ1t4af3uyiX
	 8p7xTW35cl66WnYaB9EOGtFyTKM5n9Adl7lw6y75IFX1QIbloUqcfxp0Tp1xZCvqff
	 0U35acZkemdXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C6C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951623368.17968.7025149969238134645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8e66054986598438935027dfeb5c6ea9a0141c21ed58eaa8bd80fa429bddec
Date: Tue, 15 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789516233
