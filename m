Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15007145FE0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775589334; cv=none; b=dwBnIZ4MsNmCwQIXe+2yzts9lYwPJfmShneZALkYSnfORU7N0jhFcywwTGks/1Iq8+lpt52tApS0zwVu54LtNBJ6O0e5Pj26Hcyy6IWcJDjDDS8hy/Hpf+E9Kncy72XvSt8Kvpcg0RzEIdaQ81zdqAhuhv2SS8VGqjr/H8ihmEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775589334; c=relaxed/simple;
	bh=34CKosybuMEFBCQhcOvv7/pq2h0fEokh2D6jk4UiUbQ=;
	h=To:Subject:From:Message-Id:Date; b=Xh14rvx0IVVlwwQArMFVpA4xnSN766jNK69NnuC3iiplDO20MqD/HsUMm7oSwEU+G3QzRRoYssDHL/5cb84PMgip1yLFDTfvXqkwQoPGnp3N6vstb06Cs8TTuVvCxhengpLdwNzG9EqT5kP0cu5/fHuJ7V9TaFIxODyVIn1cg1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz3n0YS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz3n0YS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC7AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775589333;
	bh=34CKosybuMEFBCQhcOvv7/pq2h0fEokh2D6jk4UiUbQ=;
	h=To:Subject:From:Date:From;
	b=Sz3n0YS4vuPjBSzMlXQ76VLPvwWGHTZO24Ti0lJOWJ61cYPE6+rLWqEr/f0aT+7PJ
	 7Pa/KCDSDpl0vVhqo9ejYDBsayJGDqIHaqyOfEa2UiHfMlZfRqiCnpPpvi019nfKYw
	 PvXrZuLvKMqtE/dZt4TYCS3e2Ra8Wc3j1Ug70Cic2Lyi/L4bKt14EJNBnUxUwLyr92
	 ZcYK99yh/UF6yfaS7IckhJrfyAf7QgLVNkGp9GwP6xCPb5HPJyaSY1+fBRpVPqbjZX
	 KHwLSgz4lJumKDKTUC83Ldww5TcCKSMnxx4J3CmP22qApdjRF3lXaLfF2Iw2aY0rX9
	 EzaxNQdIwUabQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACBFFF5136
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558933369.3842.1118441977397267389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683941d79cc8e491a10eb664ec13b3de1e98ea841db43a10775f1a5711412706
Date: Tue, 07 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775589333
