Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A061D63F0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780376074; cv=none; b=V8gt4qWYma9Zv41LHE1fZHD8hIeyI4kgYP+2iZ4owx+jow/3rBTSNqkLCDArv4W9O2vNP9m6U6eerhhbFDkbRw+ltLHhYbAsiUgoPnmcpCdsm6DAb+ayC7wHjD9mbtN0Fg/mssMa14HP1fjB5ZWY5tH4E5Jg8SGjY7iKxzvTbfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780376074; c=relaxed/simple;
	bh=7S3Mv4YuZLzKv2xLdgK8pKisKf+f291acknMerE52Aw=;
	h=To:Subject:From:Message-Id:Date; b=L7Wq+EbD/kQR/HqG0SHzNoCJ2XX9IFZp0eVEspL9GZLwXLDgfiVLB82368N/VFNuQuSFLnxUzPpyBCX9/63mcdZ5C7gr91valbdm4iXmwoOMS7rxkOQFx3FW+DwAofJllbbomfCPWhN0rP0ZUpK1Ns42Srv46ND4CwDJ8KC0XW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReMGQHtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReMGQHtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F55C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780376073;
	bh=7S3Mv4YuZLzKv2xLdgK8pKisKf+f291acknMerE52Aw=;
	h=To:Subject:From:Date:From;
	b=ReMGQHtHPT0Kh9Nd1MrPjVVUI05IeOgDKA9bNl1CSM4o9p/KN7IdlhQW8qrXIXhLu
	 p+0XbmKbGux9zoKXrnvIJrOaKWTVX/G39+ic3RK10tAAS6wlh23FKmuMv/AL3pnYKN
	 iQpQGlZcQ+0cVUtq0a4TE2a/Xl1GPiHM/yMnAatvTjtcP7jxkjnJFJ76Bs1Jgrh4Ol
	 dsh3ya0ZiG4K2kdj2DYXVafhIdJc7fZ7DBjoS4REyicaGOKJh9DrnMNwmuufNH3xC/
	 VU4GZs/dUuAVCnJODntX0M3ZR0L4mSJbohO4uMuxmh4queM6YMdVTIovj9rvGV7bpt
	 Krszd7HB8V6aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A82CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037607368.16197.14248445971153840920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde035e52f9b85d86a6c5a5caeab0f337cd36cbeb852fee1a68fb3a4bff3816d
Date: Tue, 02 Jun 2026 04:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780376073
