Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2341B0437
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767660234; cv=none; b=oQHptBGnKtJXWSpTLb2M4QuATLw2tUOUT7MkrOFSpzXHPiU1xVTC7pneFeIHprr/bBMf3d87vxgwKXLGvSM7wCjwPke9sasY37h2TYCGawG6VolVemBsm/pHn2WR5OhJDViMB9o6Wovuw/lmoeTtCWnCXbFSJ8AhlzsCESbXJgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767660234; c=relaxed/simple;
	bh=gKPQNaKyqPz7v2e1MELVg1eQ9FLF1GuVOZRrY6Q3BoE=;
	h=To:Subject:From:Message-Id:Date; b=fdfAeMlIB8v1WzQ6xZUUI1OYqZFS8teARMomuvUMSIgWf7onNsxqXd9DI71yj28NhZNgCQgK85GdsB+1oLHEja+2d/pJl//cbHBbule3kTmCAIrB7ykpq/B5ag+Pb1KkNNAXAJ7/iC37slorHr8oqVava429bcIjlUKHcnN2XxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq2jSvb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq2jSvb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A101CC116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767660233;
	bh=gKPQNaKyqPz7v2e1MELVg1eQ9FLF1GuVOZRrY6Q3BoE=;
	h=To:Subject:From:Date:From;
	b=pq2jSvb3rcWK2iLTzvAMifnhNt93+YSI+iL14hUqCLm6nQeFTZDhh6pudegdJgTwF
	 GZP7unBv5Lyg3rrm0gPcyyItWSM5cbbZC4A73c9xHPzObkSmRHjXMd98BPSH7MLG+z
	 E0KBDK3Y4Wi8Yu/1KPnnXU3kwphiUDUwPK0ZMtUquK6qVtyYfgmJ5nIgJksVdCKqB2
	 xrydUZTNSTEriy5G311DJ9UEC0sf/oAAgPHiqUd3uaVuJzecU9ZjPbALKdLd4/V12N
	 XmEx1UsZ2iGCfrdz+pyHXaQn0g8F5x+sTABPbGElP9x/5JYM0J0GpjUeoJsY61mMEd
	 wrQzHmE2o7TFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A45CD0429
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766023358.17883.17391017339713641214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2b3509f758d4e3e6078633be3b1039139d34d5d508e694d97a8b0f39bac7e7
Date: Tue, 06 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767660233
