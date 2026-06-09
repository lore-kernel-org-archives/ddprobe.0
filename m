Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1BB378D63
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780976674; cv=none; b=B3vGTqrHfJvrizNPLEHWFwHewrX9L/gLiNe66y1WHVPjYFqpHdMe6cgNXytQW91aObWg3QMzTH8GZDECpOsoU3SLv99sbwtwgRRf1c7caGy2i2pyMcUKXXIFLOnubcNAUrh6z0BNsxCBwMQubeY6UnzzeQAaUJ42QXEZiwALUnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780976674; c=relaxed/simple;
	bh=5SMx831/kr9HOP16mIdH/DWMmK51ptCHte9idBVrclI=;
	h=To:Subject:From:Message-Id:Date; b=dMnffFJJa6eX32FEunTGYtBKcgdnzQqXlJZUykuxeuVlofyKwlZ08FUB5zIB5cO16/inQd/2YoZummeHApEWz3wkbiaCwd8yKFo5mvWl3d5F7kEcnZm+VfqtWWpOk3H36G7wFZF0COzuKXu/RPjZRhPUA3vxrJyp3QMheS3dPa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVbzl73A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVbzl73A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3311C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780976673;
	bh=5SMx831/kr9HOP16mIdH/DWMmK51ptCHte9idBVrclI=;
	h=To:Subject:From:Date:From;
	b=LVbzl73AEiCuew6dXi9VTpuFQztHM9gDmfPOLSiCNOA0S3mgVDaxZWagxN1Nt/Q7W
	 V12qTo5T9MFgPczJr3Ewgt7JGrJaFPYIQEM4dmbxaNtOrYWsJecet3zTafIi3tJr7v
	 g9RtyLg2uN9lLT4qE9nmBuCLELOz8eKJzjjpR+l03pNHNUGJeEgJisS61GIrt7eNFY
	 sDtpqvaj5AXbjX63yGnOwDicN5HrBUG3n1FPOycQl3FMs6i/tZ7nN3JzH/I/pAniP4
	 oICBux8e0dD7bmoKwuHyybyOHbrHUhUIEREqE2ag18HGGGGEkYnJhv0H4eqDaUcZn8
	 tMf77rGtme0hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E24CD8C85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097667370.30522.5626543344208939482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abda3bc5c2b15bd53095bd07699d41c73acbb51b9bcbab9a15f4185a1b78d244
Date: Tue, 09 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780976673
