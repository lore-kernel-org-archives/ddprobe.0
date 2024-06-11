Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C24D17556B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718096303; cv=none; b=l8kwFZdkK1Km+qSwfrjdGSizzF5//y8DKrQcOOuRr8r2MLp9+DItaztSFPAScF7mfzufk3IrB3JKK8HU2oUAgzeULxq1M+OzyrH2O6yllk/lJXdzNvdsm6MbctJ0+v8YG1yep5knTmIK2/nTaDUvTL9ychU2Xd4aRS5R5Od7Bw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718096303; c=relaxed/simple;
	bh=NoYaeChGrnDGeqTKW1VT+0pU9dZ5meLD/ky0rvyoBmA=;
	h=To:Subject:From:Message-Id:Date; b=CKBKSUt7hdArETMUJPa6cUbnCuxVLk/8Fn443tPwHH1N0wxMp5GgLmjpTtt+XEqwdh4HhyhrqgUnGQK9Yx0PWNT3n+CldJZAL3QSalZ8b8K9LlVCvyqgzY+mYvrCEDv1sinL3i8We2mdWYuTWo1b45OoXUgjyO7/6p6fVlSfK5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBpMGCMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBpMGCMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA268C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718096302;
	bh=NoYaeChGrnDGeqTKW1VT+0pU9dZ5meLD/ky0rvyoBmA=;
	h=To:Subject:From:Date:From;
	b=QBpMGCMiFs8MMHKxeHR/6DVAEVIldtR7SUpIxpZXMQltEMvqavKNkWLsPmkoeCVYD
	 N2iP+MQyuU7RKpuruMNA2wFuAKnlc8TEepD2QPKxVIv2/N4DVW7nxryesGrZmQ7ppV
	 cyZNMnuDTmQJtSSZIvGBWVaEd3tk3wp9zyaY3tjUrCrPg73evmzPX4yV40/6aMa52c
	 /uy2cjITKrWzJdwyTtLtAYiJ0wxErGknWyw4gqQ6L599biJKH3boGz1I9IY+Xpih8r
	 nO+sUeUIwXUNbjizT/KsvdIuBxvO05l8uEd+E0XSoLpcdYHPYi/Cy5akyMzRaXzyCm
	 f+u5xZo1AvmNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C891BC25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 08:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171809630281.10698.5075085880568647556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219bd016f7bcf69eb3f68d7e345d5bb4d3133de69a596c2434e4f6c0bf6a3a7d
Date: Tue, 11 Jun 2024 08:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718096302
