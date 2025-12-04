Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEEF398FAB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764886974; cv=none; b=HMK4xS+1SbBOqrpm2GG4Pi2TZE/d2GS6jK6MlKQ4M9mbV34V2BS91o8+btzQIgz0QZbRBDL89njk76AnSB6FE+GIXYyHhn5zOzxMav+1TRIixkfCwfvqhTj64LLPsMGCSz1QZST9ZTQ/O++ZoK1cwtFoGTrTSzGj5CdN66WzaPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764886974; c=relaxed/simple;
	bh=hduFGuD7qX/5ztBHtvB8pUMUqzj86E0ukGUTRoW9lmg=;
	h=To:Subject:From:Message-Id:Date; b=XcbGBC1an3SUAp0rY2LRA2g2qJkxJQh/zTOEXecOhk7Vag+88D1xZG7v6BLBt842tiEprD/Bn2Ij2BtZiPOPpBnQJJLbRMIDA4On1G23TTcGjI7SIBd72T3chYhSzFqKiKX4ilC6imsDl4TtD6JAbCtPPaLl8ewfxltLLn1OWgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJu7iCxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJu7iCxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D56C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764886973;
	bh=hduFGuD7qX/5ztBHtvB8pUMUqzj86E0ukGUTRoW9lmg=;
	h=To:Subject:From:Date:From;
	b=cJu7iCxh/r1GvlJPcivNWAztLymYDdLuxlyOyQSWgluxbugrQwaiUPje+XQSkv9X4
	 jpJAZPQtPbMtqqEATj6xznDut2FcqHMscWt1aNNgVKA3HRbNdlbLD5/YxdpXh82ESY
	 JFqtNDLeEf0BaKYAL5JfLTMLGJ+N9ITNO8etjvGTMDn+fJe8bqLiXVZ+FP8gS3JotB
	 ApbMF77wQUivz+m+HrQtgnGkx+5hwfiA+nlDV4qCp2BjUNlEFODEcYCYM2D2VDk4hr
	 0ghMiJDwBONm7nmddu5VIDcKiBGywHKVLGqg+tuoHO35s9vH6fahCJWVh1VeJm2ZwC
	 d96mCScxjd8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91664D2A54F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488697358.6612.188561534837641723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c04d82f3b568ef9073ab49f1c02da0c56a31815cc1413038b257514b98d73f2
Date: Thu, 04 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764886973
