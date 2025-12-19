Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204FE28A3FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766181834; cv=none; b=DaR3gjf+3EpOuFxUmdedBMjMl1QefBo1iwKtUJs75wd3a8tlBX1sGBMySCP19IujNTanmW7ELn8W2cCMtjJdxJBmuSpouucDQpuL9JWbtk3FVy+0p0qcCu23g0lSCCDIkioyIS7TJVeEMt2kUgJShHV8/wyj5L3bJubb7rGdM40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766181834; c=relaxed/simple;
	bh=TPZ+5pVOcs1Pik36+FBpoOTU6psdg6p0jh6Dshb/NSY=;
	h=To:Subject:From:Message-Id:Date; b=ckt4gMITx9Z1JGJKNVlmdUL4earOq50l9lZJl3TAQO77LKcKp9Fb+neb7CqzsY8WmRM7ZwJSqFqfig8o7oJeadDBQXI7+i92B4LK0tTSAmlxs/gTg5q9le64RpIBLfXwgV1Syv4X0B9LhIDmUC+o6ZcMJEWIjGaKWm9C4Z7A0Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOEbStyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOEbStyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34BAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766181833;
	bh=TPZ+5pVOcs1Pik36+FBpoOTU6psdg6p0jh6Dshb/NSY=;
	h=To:Subject:From:Date:From;
	b=eOEbStyQzHycd8AQcLzNZEc1SQQ0DyuY7n7nc+0xfPvB5c8tE3vWAWkAawU14gb5e
	 2TfjA/3QXdZ61tvzb/tKf6tyHI4NwxuvcHHzkeCpftuspB0YrRxRmtx3PFW683RriT
	 qDfc9j6ev9jy8tVMChRkukBO4nVYdzv70Fw9xep+xOLql8SSgmDunnw3bd91vul91T
	 USkPDuMP9xECMm3+CxZJVYcrMAjzZGvxqZImtOTE8yiJ1DwNn0ogGv4HgZAiA7VOtY
	 jVCCowhvcXARIj7mAHfMIXqOtllLf5WR4WX77g8W4wXcA6PMjqb7w17EbqxZ3XK6vm
	 GD0KPu8F7fnEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151BE6689C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618183358.24302.4053917083044928058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7d1b04896d44330f48d475976a36252e465813c86d5c7d3bbc98ef7dffd725
Date: Fri, 19 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766181833
