Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318EE2DEA70
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764953574; cv=none; b=LbOAqycM+FE5dJUuZj+garTxJ2Zj3hqr5rwB7A1N0cq8EWpfubE/FhvuWeOz7fYi/sHpOw1PsfCJSlmkDpWtbZKOQq3Vz87kAxhV6eBnNd6F3kFSmlvb9sPDsDUGPk4p8kAswEUrRJKYOxbeXQPAwLqXn10ULWNRg/eWlSzYuDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764953574; c=relaxed/simple;
	bh=pyXKgf22FiT/4d++QXFW2xr0zCuiFnFcIAYDrWN4uh0=;
	h=To:Subject:From:Message-Id:Date; b=oUwr8TjC/F9NUvZK6pgQFACyzO0HMH8vUkia0UQK4XDvOa/O8oNgiT/11a+ax+REgDSPxC/IFispQE/YtV9LELgZ/IxqMi/6c4Af7kpzqolNghupjIfsY3WmH3R9XTuqliVw2XY/QI11hoHRMYskQu4xEEWTfl348uKbEgqfbs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFmgUNwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFmgUNwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764953573;
	bh=pyXKgf22FiT/4d++QXFW2xr0zCuiFnFcIAYDrWN4uh0=;
	h=To:Subject:From:Date:From;
	b=dFmgUNwTiy6ujCZZDXQuRBX9vr5sw09nPHzdQIDbaEWWv61a1tKJdbKE/qSz7IO9W
	 6tKcjbxdkyXnNw4Db7v3dCc2jYE1HDrlk+SxMl5W4DuxHUWLrujiAPaAB3KZLc18Sx
	 KLBaKyj1Ui8W+5mwoJsWE9kV0euRPyJQAb5gRG0rfj9LsNnj7dDgWeXomxt93s9Bx5
	 d/SNW/G49agNFUDyJ1LGfKmxJXVqx70ZFX8hzxq6++U0wepgGEGflh6yBSeOgOzxDh
	 VmmyBS3ORDXZxj9/LFiMi1LgMPKFbeeNP1mUQRDFKDhtdHpr4Fhguv+Mhrokz2sMo9
	 TYQ70ucDdj5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99972D33994
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495357358.12539.12424233375207418622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de6dae93d0770fde4d6012e7f5cfdc1708606bb65962f53014f41b405569e77
Date: Fri, 05 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764953573
