Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1374C25B0B6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783771714; cv=none; b=J3LkkugQB69siAvPDvYA1WllOxiBUbLNmHB7/avR2Z9rSMI09A0t43AkerMWgkkcyILhTUdd5lRTBAGXPJi+97LVo0eP2/epNuVIG9+CVbjMPUWCuhyIenQ2ScCMSZsDIzA6k3llx+COUggSE5cE8xt7kRyfk4VB3UMqsvrQC50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783771714; c=relaxed/simple;
	bh=PQg1vcoaVcaTrvEd1hRg4a6hZ7Eptix1DQ0AL3h95Bg=;
	h=To:Subject:From:Message-Id:Date; b=EpshotabKhb/sLCDa7K4BLDXdqtR2enszoMfIW4dH5F2RJ8IQI7eHhx+s+lOVtTi90XBY6vKvug2tAw9hUH4Kv5K5RYXQ9IQc/QPxbJVrUPVVUgFTD3mxqFbjNlg5OuEuRDOkDkRFHOh5hP/sDkEQ6EkiS3+GvAttGWjUqYQVeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQ8CNkaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQ8CNkaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA30FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783771713;
	bh=PQg1vcoaVcaTrvEd1hRg4a6hZ7Eptix1DQ0AL3h95Bg=;
	h=To:Subject:From:Date:From;
	b=kQ8CNkaziaDhJ/hWPHdV73ywHmdkVsNEwMyZ44N+kJQdJXyFD+67fexY3Pes7yOE7
	 Xg2GD8T/+I7SwMVMv3EIBQBw5NMCeR3GQ5Lqxts9G23f1yN9qXRlIxeEgisRlnatHi
	 rS5xZumyEOGN9fscf182FYBZGVnOGhIEucyEgg+o9zCm7im4kD41AIQtwz6f0MwWtL
	 95aMxE6PMFw/i2MxAZ/IAC1cwb2D8IfvHb0fxw/SavV5ZZwnGLpXb4gwxp1pcqZdi1
	 5c+nmGsf2EJMXFnOq01ImJ1rRbf3+hOR0VAujvL8VaRpvFevGJBNQHKVN0CyHZaZi5
	 Z2wUJXpzSMkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A963FC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178377171368.8308.8849443790736973661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a29c9adadb6a601c263baf8ae92ce3ad86bd51de9d15fc5fc233ec6558d951
Date: Sat, 11 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783771713
