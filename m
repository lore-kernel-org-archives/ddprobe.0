Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CD82EB08
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710154097; cv=none; b=ACP4jlmDCmn963Dx1fZw/XiFXz1wNMpG/6tGcTuMhGaEFGBNwi9FBgZiuN28kc/4igt5vFn1Is0W+FRw1AO6ZA0iKIQT+q8sioGkFnpNvwyiDlxnZtK3Tp2taotIFuIafN9iGdxkMTDr6nm0KzNHex9VeQG7s6z5SGg4IUpP6Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710154097; c=relaxed/simple;
	bh=eijXAXh+SAq3dUi/+kPID15zMzyIriNbobycEizDg4U=;
	h=To:Subject:From:Message-Id:Date; b=gq+d1NvuA88wFdLjEMf9rwQTMKegORfxlz78M/IdVAPkcQ2IdwLX+Y0tVYXmh5e9DoRdSrbEMSqxYroasaNZa8H0/bu99Zia/ktWAe8q2qS19Sr74MiPW1UkM5m1Kr/RRL+I8E0kO0zABKADlg4BteNEMBnJY5keH8zbkhoMKaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8c/qO/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8c/qO/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB12C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710154096;
	bh=eijXAXh+SAq3dUi/+kPID15zMzyIriNbobycEizDg4U=;
	h=To:Subject:From:Date:From;
	b=i8c/qO/swT4kWZPV5eXvbE1CT+thoSY1jP20LXeK+UHjHst+tEphh7OcYTj7Q84hU
	 WRPXxkY6+8408BRpUMQs1KJpTKQEWxex/SurwE3iCU0NFHAasl6WYFGkFNI3IXq75g
	 04GesLvF8VBrEoJJrowLAfHItcbTNVEkXXkHvKD4kTHJQHn0U6ajpPLtFr5+fuoInS
	 GvP4KeVsRNL2Brs2SPdRW1iNHx8IWHD4cgvtnlZHc5390Kp0/y7qv6eXrNuMlTXgmM
	 ZkDsXm0po/SySdc92zJKCmex+LVjQL73Czzf2sepMElYRPjJl2/v04UP09oEc++U42
	 /8LJ9aKU2VzTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 630BFC54E58
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171015409639.19922.10265981924986185953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200e2353f8351cdbfe6bb6ad34c1d449abcc7805f04a4ed3a72cbd83e649ed3c
Date: Mon, 11 Mar 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710154096
