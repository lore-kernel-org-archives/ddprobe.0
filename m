Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1E734C9A3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788592834; cv=none; b=h4T/Kg3JOq6AAmWdUNga3amAIKDtSHRMyE6qcYU0O7x5hxWgvbOSRQ9tC/L4LgEjQNeQEpEKafrCVgSBR+GwpX956C8gVOZ5izbJI46e8QU1yipCNrjX2h5jppNU5ydcFZGQjYepnHUlZxKH8WJZB4jsrliEZeUwcFYlE1GJrgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788592834; c=relaxed/simple;
	bh=GT55n+mwoTayyQyOklb/oc2igkG3vnidcEyZZK7Rlms=;
	h=To:Subject:From:Message-Id:Date; b=EKg0gas7CHCjI/0bued/afpLo07U5TLI+dDkSsBxef2ZDaofSmbIp6KEqJJWFASdujot33tlhG+/ses88RNTJFgKpeD5KFcrgok6ldD9NxazhnakqZvEXTGe5BQ/KHBTkQRKdggcRLF5C5frgR6147PvbmP/XF7LUYFvKD/agyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj0BOBhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj0BOBhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD15C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788592833;
	bh=GT55n+mwoTayyQyOklb/oc2igkG3vnidcEyZZK7Rlms=;
	h=To:Subject:From:Date:From;
	b=Zj0BOBhksT0ehdG90m3T0nFcqqKppWqLB4IUDYgVz/JkbyBwH/ZjZcij7WCrPNNLu
	 9pJUkerinJib0JFduKd8TVrLRQQXmPouRRYDOP1C5cUmfAuRL4pq/ZSISvcUIoUxTq
	 id0m4nDeIfveG7YZFjRGOw2m64+7UaebyTcd+mpWgU9U51bxV3D8pHkQpPfFFVQwsf
	 aRuGXNPTXKkNPbsfiLY80iG2gPZo+Uc+HZ70zLv10b028blcTxc3B9Vt+Qc7K+cMgt
	 jvlqmqg4BzTkAvn9h0YGamZJvt4ptrEs6hmLyaLbIQansxs6mcrTkl8dVNNz2YsqqU
	 i/GzX3lqknxPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB365C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859283369.21972.4663269687734438208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28513e45d48a46f4d5205c89f74197d36155b2727c886e2646fa0c7bd825fe79
Date: Sat, 05 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788592833
