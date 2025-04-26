Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37412182B4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745671795; cv=none; b=AcUsSnbHJ9Rob/KeLnIQ/ZJz/glmkBrQFZQoO5cWT0zzM7QfPxMHJlX77WCQYpyinix7/yLaaZKMKw05VsPg9YPS3+iHeCB51vTM6aEDGV+diCMiBTR2uw6JEnjOnSsMb3hCFFZ5I+9tVlvKy3mfTN8m/bTSHxtfyUlYOgEBuKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745671795; c=relaxed/simple;
	bh=KwaQt1svNEpQc7gWpOT6FpaX81WbVq2uB0b7ANqwwHc=;
	h=To:Subject:From:Message-Id:Date; b=oyG4ChpLnS9sUwscrmI//wsd8k/wsUi14PPoW58i6dPVTFXu/mskyh+3USW6VPzzxcLRr1Zm8m1UoN3FqephTuiaQz9pZy9HOGeeCtwP2Swkcu71QB/Le84gXoMG+hD/DmMS6JRGuw0ky6ACi5dO0bsyGjMJ3Ifz6ydS8vFpVbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtTZhUSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtTZhUSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4309C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745671793;
	bh=KwaQt1svNEpQc7gWpOT6FpaX81WbVq2uB0b7ANqwwHc=;
	h=To:Subject:From:Date:From;
	b=DtTZhUSfpyrmWbRNn8UBEAUJ890HLV7CFTCny82cKXZjk4Sws/BgVAIvv3kip4eKT
	 JmhBhnEgAry7p4EfeGracHq+V2wGcByYuAHIxrqJCixf4O7cZkTpv2abjOg1+ISIcL
	 HoFzReDihuY/O+5NvVA81OTbo2wbFTiSOh+4+1SP1OtfdlIatgSHnjHh8yIfdUjcXP
	 gQ/cueHosx0XuZKop+c1XsxVdL/N5R+sBtOdjLuWOCmEqqLD5aHL8Uik05QZZehTn6
	 EETnyMZ0J02aidf04VZCs8EI6gfGfDOs9FSttyyERtMd7CMHkJprIFjBkaX4ZDGawD
	 FddGMtwIzLqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E9C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567179357.21096.10582189369186561967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999fdc609e26fc28691e390539f220c8609442a028faa9fbe46bf617dd344b8c
Date: Sat, 26 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745671793
