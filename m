Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD032673B0
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774102494; cv=none; b=f8ZDDvNVCrmhhsk7+ZtGeG/YmAGfeL7fsnU/EUFeNwIZ8sORuQTXev0UBYSpc7JqceIeO9yth1EIgGFIkqr525ri8bg/6ofl8yovx/U58O5YKT0Fjw3p6POxuZvtchYqzgh7kjFCvbztZJlT9eQygAD7y+NmWULXKMEmwmgBmic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774102494; c=relaxed/simple;
	bh=RY+3xePqNGc+t8KOvyzD5lVoN5i4+Bo2N28lEBd7/dc=;
	h=To:Subject:From:Message-Id:Date; b=ThCZxDr6FajKWOYm103kjMFAhsLxbno4di7LWKfC6gjZSQUe+fMmNwcNmPC309OzrFeBTIPbiNxcuVDkZPkZA+lpqHGVcI+bzpTjpbb97rriJiU2Z8/4uKdCWh+nD3qbAC+AQHHLNjSm+O2Vag8G2mE/rV7dKmfGUVRkU6vGDnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0Ucnn3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0Ucnn3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1778C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774102493;
	bh=RY+3xePqNGc+t8KOvyzD5lVoN5i4+Bo2N28lEBd7/dc=;
	h=To:Subject:From:Date:From;
	b=T0Ucnn3haG6nz6NTNCUI9uF5SEpleubpSiyfasuMm6ZND83jRxvn5Z7NBdtLNDNU/
	 nVCwmhjeM7hZMv8Ft2/pA6SxXUQZNFCX7LVDslrnbH1esh7Ddqg/0054b4puQqKq9D
	 01N0phxCw70A+/gjP1kXUZ73rX9HGZIf/EF/6/kloCjVBuGcr15C4xKBLU0P6uilKv
	 TQiAhvgQdyykezyX1FBg4fntsmAvAczelPq+0PkBgTh8JaryVX2hBEKS0k5hrXiFx6
	 ngXGroOC6y3fMbz0F2+DoM2KWf6pZ2di56z0/w6tcw/N+NXQbyT7WbD6s8UHrS4o4k
	 CFbtJ0u62oUjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47C109447F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410249357.29114.6899039277485465066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad6fffecf3b3e84115878ad2e7518f3799ad33ed0dd97dd1ee53358adba8813
Date: Sat, 21 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774102493
