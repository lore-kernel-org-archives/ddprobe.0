Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DE41D688
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720974623; cv=none; b=qpx3iOmwI6Xz5ns0WUqqQ5DhJ3hKDg8oMmlHIp68bicpQRFlkHS+cWCdXPMKugS+7xOv38qGt1HtnRQot8/hWnpcwd0IAyqeSZvsLAMQ8VRSxpnyZvAaaospXXqcRKUaI7qHxe2A5z92gHWQNfC1XRkmU9AnUzjqxLTzhj1HGo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720974623; c=relaxed/simple;
	bh=qmY/zIabli7CxRK7CFWG819FpiFqWJ+diFt+2d+7sgA=;
	h=To:Subject:From:Message-Id:Date; b=Ph/PdzQkAXTStIFmOFgNzaLcXpPT8g72HB9upGR0dtGAdnM3hyg3EpX2HTYqA7ay0yAZd/SwpXX/QjJPO46JvDFMtbeizaCw+Io1HF9cj6zpDjCfXhlsa7SyPfxlzkU8G1ClkRddIek58Yl0fa3LauX/2SPku2WgNY6klh6TDr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQA21O1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQA21O1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23A4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720974622;
	bh=qmY/zIabli7CxRK7CFWG819FpiFqWJ+diFt+2d+7sgA=;
	h=To:Subject:From:Date:From;
	b=qQA21O1AdKhbTHt31mf4OvmDzgCxLaQAifW+eyv0upNuLT+BVXPncire49J2Hs8BM
	 QVEHaYDbZ+wH2qZBk2bEdDb0ShqBOtAJxoa0dfnF219O4Iy/1laFlmOTHtLL2QEWkA
	 VFVXj7q6+Xzbi3N3lQhsDsvHr3d0H87hTNtayAr/mqLvmg3xjTYFq7MeWzXAA1DUfh
	 R8sj0HCxX5P1TdUj4V++GguBBWLZELHuUYSee3TLS972HWbPfJiB8zOtdAVxO3rywH
	 0e9xi40ANW/VjI1PihgBVK/xazm5LMDMyYOBGOlEBOdiHlBLQiXiyTClYyOp2yyNCG
	 9w71y9MzSfSXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06CEC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097462277.25784.2441816338123314208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df07fe7882cec94b79c9ed71c439a877325ee6a8b07f22e48fac97b3df85d4c8
Date: Sun, 14 Jul 2024 16:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720974622
