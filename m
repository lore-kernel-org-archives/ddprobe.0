Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161FA23185D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769858034; cv=none; b=DeFi7OcVNEzR4QxcnXeDYUbvcpGky8aRFSrD9A6H1d0/NoBSlHsajPPnBcE3VxyxD3KurcnXaGopcOyUIxyNcqdj9yV2laFXTsa49VFhQi6S25vYyqndaXjkvRAfadDDQIIkv5DlEDCdZhKHNZHfLoITkSQ/ppEaFSDQyiuQpws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769858034; c=relaxed/simple;
	bh=6hSoWRKf2VM8UnorKyaY/JwDTfLvWoSaqKPx3OwltE8=;
	h=To:Subject:From:Message-Id:Date; b=OTfWyXTcSdQI7nzKuZ309BLoYY6GdG7ThykeK+CUXpVvD1PAu5vNI/HKyJFYNwIn8/EulpbkhXkVu8I7fY0KGsuYLuyhVqmAWQ9r1JoGFBvHtlzPsBqIqZHnHdBlondjRMR0xsaJowFd/XyoePgxCNmLla4pXWAuuwDkBtMnypU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWobbMq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWobbMq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5423C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769858033;
	bh=6hSoWRKf2VM8UnorKyaY/JwDTfLvWoSaqKPx3OwltE8=;
	h=To:Subject:From:Date:From;
	b=pWobbMq7hrs/0Oh8vT2yF267rwMO41WyQW/6xEiuFaP9W5LipHa9h9HC61gb/Jphi
	 IdFDA5Dm8djEaWB+GS54XIkEDrDFnlRCWPcVZSjK5TNp2i1nqY016XB+vAjhGGHR0B
	 k/VjzCOfAtFlb505aCmLePeZrKJUWtbbHKvO0NWR10NfgjfUGoKtXdxioxyQTneKpK
	 pj4s8ocspfmQ+cvyK+azHDy9HbtJz+EL6yuulOogXyHj2TjDy7aW8aSFIdXsKyNNLL
	 9mKAFcgglrPdstDXbK0Yuec7BGXi6KxW6m9IdtxEsS7WQ++mq3/9bWRsTKLGNRHMws
	 CcHDqOqC5bFow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CED79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985803357.4942.15928165017242040836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c5f0b50d4f7332da685ed2985ff05eab65dafd446a436a216fa3ffdf4b15de
Date: Sat, 31 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769858033
