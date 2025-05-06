Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233AB27C148
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746530994; cv=none; b=ENKrzHBxMnylSi4+S+k0P02EsPaLWZwNIr88F3CTdCYmCkfc6JRn4SrztDwlRP+BxnbfOYfsmcrU+sJj2T4dER1wftXlEQ3l08V51RFRoz66V0xYTDxetAJpuGxc6dETmUjNdQEWGMqXDXBhDItMsYhgFdLZrGigcw7c8RHCFE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746530994; c=relaxed/simple;
	bh=Ns+/ZehfrD2ia46Sc7fvBVKIAcFwrYoQ1c1+Ua2e830=;
	h=To:Subject:From:Message-Id:Date; b=mjnibIXvvwtTvl6ctUEtRqoS6AhZDkaaqCFtIancvM6jyg0yhjndZ7v7nFIuQbH5Py+eFe/0R4eDuZcxk1YsXuMfkRw18Ctb0ml95qj8WteMsibaoAckyOR6M39MBICg+Drd8Bi6ts3MLrZDksUxu3K+4Vs1hyR6UufJFCIYbgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWUCm/GL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWUCm/GL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2012C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746530993;
	bh=Ns+/ZehfrD2ia46Sc7fvBVKIAcFwrYoQ1c1+Ua2e830=;
	h=To:Subject:From:Date:From;
	b=pWUCm/GLJD++7YJcQVi/iJW/G/+gs1L7Vr5jJFGuZkHzfoyOHRYLvPDGluJoaTYXP
	 KLbJ/RjyXh0SfgNJoTgu/ElKgzcFoWCzASjqMPfou0W6vWao0w4o/s/XUOI9f+nUgK
	 Zgq9ZE4/FQ2NkahbTgG6UWb5IzjfnwqbVqaNDPPnWS9U/6qoz9GjH2D+/OJleOiSHD
	 xw0JcFtmX/nvCD9WNZ/1pSrR5fkPFRagyWJFJBa/UgkpzLaGksDYrKS8ICHgrsPcOt
	 FTT8tHRu9nxG3wzntP0WqZuKPiJw4zFE1FNfmcMFkAABBEP+/6yiRcnnUL5cp/Q0Fx
	 3CIezrVTZ6eHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB6C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653099357.20141.2528639162457000179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6116769de9265d3cc95d5bc81c9184cccd22c6284db63dc1a3cae4316a828a2
Date: Tue, 06 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746530993
