Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352053271FD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784253514; cv=none; b=VM+tHo6Jd4xx2CWa7ibr/1Ku8mJqCFYNKomYLuBdy99UQXt1AjoFet4iAuZRgM1KpJZQokjGuzuCcmXNQoo6FOAZf0P4OfV1XYnyPpOcbl0+j/if9WUB4qVsDxwteSBccfUDfCuFwscwdym0jp1cSpvpS6ejeKQTd/203W1l8Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784253514; c=relaxed/simple;
	bh=cQrwB4SX26O+bSU1tvrGfDBNs/+w/Q0WjskWpnOa15s=;
	h=To:Subject:From:Message-Id:Date; b=pl3XEmcLEZxL9q4Tl17tVqRN1QbYipA6zY42jvwbn0gSg+C6lw/uAV2bStVNUwg0Pqpo7NMJ1n2Sgu58xEMzK1cXf0m8FysOyGF0POrPxTz40/yalPLpBMss97wEGkTDDkhRhJ06xdjRrkgUjhCNQAUp+RvWLgsR0RL+960uFQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvrbBO+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvrbBO+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9B6C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784253513;
	bh=cQrwB4SX26O+bSU1tvrGfDBNs/+w/Q0WjskWpnOa15s=;
	h=To:Subject:From:Date:From;
	b=mvrbBO+fneUcTDKS0pmF2GJlh3IDnChD0mAM8HUYSzXHALbs22zhxgq8H0Mqj0q4T
	 O6BWnZIp9CMZNf7N2yY0IxT1nmKnfBBLKKq/p3UNx6Eg4YUzFSEr/WnfTnfajidrey
	 J0dQo5YhGiimYkEhMvYBqTWV7EfreJV5WEYhUyoxe+FjCmgbp4JztAYBLrJZ0NogvM
	 XvN+ljriqHPx+uhw45yf/NbDBcfVE7IML7xsYffD79/MrgeYiuHLQh5VFpv8oOjYhN
	 v4eH+f36vz5vfXcncFxBz9LrSs5AjbY92VrkQByMWr179439CAbO8W2dtMzgQUnDpC
	 teqBx/dam1R6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA03EC4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425351368.7352.18389412992365427032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c6754567fb53d7ac2b7638674faee073791794c20d9b12b71a224f6a8e2fab
Date: Fri, 17 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784253513
