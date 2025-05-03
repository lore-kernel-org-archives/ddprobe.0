Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF7B1E0DE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746278994; cv=none; b=WU+rSJ7Jm/YcWNm7AfpKvpxr79KQuWZD4JcAzZBIJARHSx8zuw3n9NQ60+heLbSndbQnaVZ7VSN8a99pbXUKlvLVapz3O6ud3CxKsNLGkasJR4U+RHPVL/kilacvqbS/R9EzCmsgTP7SaUrEdg00ABdAld34jxS4D8nnYzmTfeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746278994; c=relaxed/simple;
	bh=dkNCiNUU7uEz8AAmWvCFFwz73IR1X4PLN4cXYF64Yn8=;
	h=To:Subject:From:Message-Id:Date; b=Vc995Js2XXJPUTM3eUXu7j4hSRZJoAiaghhuTGfDaHLoKHKtKt8u0rvK8Ptpp7q3U/gg6owsV3WXUj6ZBNHz9hhFzHcvrtrSDscWAkzfdAIkxuZEBlKuqS/gs3c/3kYnOZ0+w6cy1ZrlTrU+Sa073ROH5O7Ka+KBbHfvTgOV+M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QW4EOxde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QW4EOxde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6984C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746278993;
	bh=dkNCiNUU7uEz8AAmWvCFFwz73IR1X4PLN4cXYF64Yn8=;
	h=To:Subject:From:Date:From;
	b=QW4EOxdelYwGPqiReuxzcnLR+rUh2obbeobuVZZNisoALRnemKG4Yb5HiCmipe7nj
	 aYWD90Dm9/Lz3Jc7FxBLmvFPFnXNdTQiYKq4hkRjO0r5ar4wi8Zu4ewN5FSoUWce58
	 2B9iw29esP56VovlQh5iesmDWsutnCk4+KOs9ZAag7SG5irL7egzG0tlPulMFkyikc
	 8AbpZsI55A0XUqR7eYt0RDKB7gzFK44bq6OGFlig6Zn1sHoI/mpaSoXPhxfpomd3bb
	 T8H3/aIgEkjXe+FfEVxPRlHJB4rRtKzLH/xc6IlUgqQwMXJOLXxcKOSZnUWIYHt02f
	 UozIx6Px67Wag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94736C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627899357.8956.14615881729350802249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b77f915c1db32fe24c1bbb7853af34f09f5517c3f9320390bf8e98ce740c75
Date: Sat, 03 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746278993
