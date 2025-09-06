Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A066118DF8D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757157594; cv=none; b=KPJQm3TgYBWNlJS90EFDszhJK9br+LGwrnkBl3BdMWAfZdAg6LnvzTxGoLaGjU2hox856URDjknVbI63GqwvxALRUrACX5mo66jjOB2JvbsLKd11ZmbSB6z8kC1OtClvbk84sEHzhARVnSc2tjplrUvl2bRoLsZlOOnu3egtGO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757157594; c=relaxed/simple;
	bh=5ZXPPdkjRM4OisIhK8ixUwMmuA6y8Id8Wxw/9nCtlgc=;
	h=To:Subject:From:Message-Id:Date; b=scQFY3XcEgJKpYs6uGDu9M7svl5w1w5w8TS6RQsVPlciW/arbosrKaKa1firnFfyaZNwbth6ojiO6W6JAtqvGOTHqhVS/3ztx5QETE4VuVM95LNukMJigWd0jPnBfKDPv69EKCaEQodEAOw7QRyXJXwI0XrsKuVt8hF3hbXfwsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFKcUpM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFKcUpM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5859C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757157593;
	bh=5ZXPPdkjRM4OisIhK8ixUwMmuA6y8Id8Wxw/9nCtlgc=;
	h=To:Subject:From:Date:From;
	b=PFKcUpM6iLQZmRF9TCvAZa59m2TyqYHn5PQB8qUqecvyXEjsxbgJBCkeeYKEMgZl7
	 wwY1W+DLT7ATZYOv02oo1XMtIRXTJWFX+szfXYTqK2slY5crCuHuly5bh5KieTV/Sk
	 +bsov+IDnoGXyhg27mWraqxssFwg9CWoQi0zOVuXiSteGVciZLJL+T5GB27SUXBD0v
	 z+ow8wX+vQzQnr17DwkxvywfXohOSHbAxkkNIqLxA62I8hGXTsz3y/zlR7xTGVviJn
	 YI3vTTs2d44R3ov4cn8Xh/9GWiOn1QhWx6d49b54QbqqhM5e67GuoYed8np8kNf5WZ
	 35olP4x9Ak3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD0CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715759357.17244.17052009130170180814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd3065d24bff419dddcb69f8fa0a2709f1192303713f572932effa4e8733de0
Date: Sat, 06 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757157593
