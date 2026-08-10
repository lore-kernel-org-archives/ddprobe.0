Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C732339C632
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786349434; cv=none; b=EhKuL/5vrayXzXN4nRMUpIc5yYzmPK3b+pGbd2eClnomd6HLvMHcUyOlORquT+rKP1dVU3AXSKYNUAz1SZeCzio+tA1ilDdFeHTj1wJ8fuUWyoR6Hr3smQRpX5GH8cZDmLMsvpGyuijevn71AOZ0J8dD6hNqzZaBDX149ZBXgC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786349434; c=relaxed/simple;
	bh=QP/LxBcEM5udbKGEMVuUWCNYUpnsdEVF5DBUDNKQNsU=;
	h=To:Subject:From:Message-Id:Date; b=bJv7edHmJpNCElI2Z8aGqzzlqZm7qejnTsYY5FzlAVax/7QtGq5Az4o/IWGoRT8hIDZ3RHVkemhUc+SaFDfZxfl6veAD/YqbsSI9PTi3q1+sR0ycXGBil2O6ujUDbtI1C/EVlBVQXKRe3UVlflfF89TMPvELXDLTPAenx76MpqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZ3TN/Fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ3TN/Fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB511C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786349433;
	bh=QP/LxBcEM5udbKGEMVuUWCNYUpnsdEVF5DBUDNKQNsU=;
	h=To:Subject:From:Date:From;
	b=QZ3TN/FeyX391OB4snwo57a5b3lAPmrw31OoW82J8SOQ9B1uO84khP67sm3pJ9W0q
	 CSQDQsP1wo3AD/MadB5q/7aNMO51vjqy+2WT8G/GpKBjcYqjaHpsNY+U0ogJ4dTZAO
	 STEarkI78fZ4EIPmCfcEHn8t4mMzeA6bKMlifpLBbZUQWPnEAfOuYsnUPb8pFHSpKg
	 MMX4HgSoAYwcppOAM9NTkwCT8O0sOQmTBPw0lEj30qdeTBPfeJXx9YhPBEaSSmh2cC
	 f9Miu2MMxB2EWEAxyw+QJqXDbBBmiFoiWIIqt1G6ylY1Qk/G/nYoe2A/wgpAlFwK65
	 /wTH0rU/8QLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74B4C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634943374.8484.11201298712156274230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be2e57fed06e9226c2dcfd18f5e939a2ca1283b11a76dc23320e0dc4870345a
Date: Mon, 10 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786349433
