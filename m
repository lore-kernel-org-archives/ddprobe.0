Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A8816F265
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728249354; cv=none; b=i58wjKS4ZsHOC0KQclh/C49ntBzmicb3BT+u5JQ3DvIedyJB6F62ylSwiS3nJlrHE32YdVM5qUYVJ+UkUvZEMi6I5ZcMK8zxIA2V17pTW5zzws4OosJJlGzb7CxeL/GDxZSYZSW6/gHOPK6H6QOLO1en1yCclNxXpcLGvp5nNDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728249354; c=relaxed/simple;
	bh=KRItWSltPDILf7InBlktVMGtm6k64hCxPboQAPEZdG8=;
	h=To:Subject:From:Message-Id:Date; b=GJ3sRDvRYhQwNcxxMKLv8+bN6amOi7ONwy7hNY0wiXuO6qseb/B2UlsCGIdw9Kinf/ZAyZ2Ndqi4GM5pW8O5KuQorv66wpCkjIg8rq6k9tLeod7s0VgPVSeTgue0uUDBhGLzBgSUv/jz6woUaL5+wBm+rZF4N+lyKQATCj2XZHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe3DiPa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe3DiPa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC079C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728249353;
	bh=KRItWSltPDILf7InBlktVMGtm6k64hCxPboQAPEZdG8=;
	h=To:Subject:From:Date:From;
	b=Xe3DiPa65dD/qPSY9e5ng2GbPS8qnGoV5VKS7/qUlpmBYCXwrLU5ZfQZedpB4O18L
	 eST1pIEGPsapuBJkJnWKsEiVu/cP9Jc8BGykjZuQrLkdNaR9sYm17td+sv58OZtGt5
	 u9B59PnvkK68WmUeG/C5ljQP8j8hQwPociHuyCBxisSJjJPZSBdv5+jfJwg7rcFPy8
	 H8fP5dxHfvyqfxbw8TTlSd83OnrqQpQyVGwy8RqPAEi/RE8HwSQHmY/Y4xwinRP85T
	 LzrWphjfwa+4eVj1kQFWE9rN3UAedXj0VrzwzcO7V+yCknVF64glQcpxhyFGeIDoLB
	 aT0ERqSgjDsVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF1CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824935359.23304.3146547222034357074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c4125f05b347ec831b2ad63a9bb9c66d79bac9a89f274387e4298a64b06c79
Date: Sun, 06 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728249353
