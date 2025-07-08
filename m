Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A913B5AE
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751951394; cv=none; b=WlsUt4imrvOhDSE/uRPWdJ5ObTE7SNwfhr0wR0KhfcXaidctD1Hy37VQIZpey7jKIb0nCAr6S6rgG7fEzwjS0gw4H+GtZs0v871CiB4dcqFyRbp+57E5cKVam7ZYpPJCtUtjpBiD9dh7iz+8FDBLimohnUtUZ1N3qIvNxiRJnKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751951394; c=relaxed/simple;
	bh=xEvUJUVz8d/EtA+FtCL+ETuRoAvPmxr6y24vt1KVWUU=;
	h=To:Subject:From:Message-Id:Date; b=oAZl1Mtrihmna++PwaKZk3HD3daws82ML+L6bY3fzfkq2B5HkWmV2mBHBFqNpGihDsocy8x8Js60mvO5rCe0NY6ZxPeKwoPBXuje8LKhAj3INTmyM+saLEwWjAEzNMGsJICwTc5KBKiQyPV+J7W29sv2Cgngj9EGxPbmZa/l96k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxABB38t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxABB38t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751951393;
	bh=xEvUJUVz8d/EtA+FtCL+ETuRoAvPmxr6y24vt1KVWUU=;
	h=To:Subject:From:Date:From;
	b=nxABB38tFxMAg3XYGX/sjyvIVPl7z7ECcQ2BByc2c2vPAKILF5uQA0X46Q3338vVZ
	 SV7jKxEemNOUOn+Nv2yTPyTIO/N8HDamYsk2ORpQOIljIKUA62rFbf4sDndDyIdZkW
	 gmh24TflykivxEHjyLKwkfVU6fd2imrIPplrsoUzfSKklkNS5X+SLUaF0QbGOgf94e
	 Zf0AMnBAN76fKcLwlCAYRvYJEAC8fOM4zz9I7VtEEhUVdhRTK9saDw2RvUdAYavShK
	 ozw7CiTJOoLX/hI6QikIep3mvkKf8fm/2ZEaQKv0WJm+d/RwuBycZlL0D/JWYo88jJ
	 HpN5sU/KSGn4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5C2C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195139358.28176.9216376398199130046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d678286d321092e98d76d4803ee0daa8097e4964e7d0752dff04307dad17c3
Date: Tue, 08 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751951393
