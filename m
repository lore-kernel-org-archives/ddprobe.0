Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F6331FEFC
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758302994; cv=none; b=dhFfEKm+0DJq+5NtOgvzefsnp2+y3T/p0+TlGkp6OjVwHHv4eUDkYmkW7h5q6ijljYUHCknyyGYbZhuQcDJTcbEsgb+A/Nj4sQejogvKy4sDZQosN3vfCjKQ6gQORpwNaK1JxH2TypJz7zmuH3j3rkNiyi+A4EKBmjHFrI0EZTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758302994; c=relaxed/simple;
	bh=KZK8o/KuoOkDLZd0DQrENhjVU12mw1l59BN1Qcl85zI=;
	h=To:Subject:From:Message-Id:Date; b=IjdwRDj8FSLuQpYOSoM66NY+G1OXuyOL0tfQNR+Hw0gm3TqBTX11UUCQqNvRudtdrju2hT5RUeiT+y7gKelB4SZ1KsKXeasD+cLUV62MLsvY+M8/pm8ZQPG5uhbtBH0Euw1qZRufaq0sLiTiOhjm7U+9jHP10IVtp54P/vYRpdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOuXyr/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOuXyr/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A964CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758302993;
	bh=KZK8o/KuoOkDLZd0DQrENhjVU12mw1l59BN1Qcl85zI=;
	h=To:Subject:From:Date:From;
	b=pOuXyr/QfjgzbStvGYLK5mk/M/TgBnW70FEpcga/P3DskkE2t71ZjuQirb3wbip7O
	 ttqrctcuku2WWHJy5oIvblIcfiGhZVWFQKDbO1js6uZ5fC2XhZASZ8S41LXvYX7RWY
	 HYzDLY8GOb9pqOv1U0mtVKYzhHvSwPMVb7l9VN+8et++vbz/9ITJ3je3QTnXXngfiX
	 WC/vyBV0+kUHndAVI7OS1Mga9GGrgiThpfolv8gRt7Ol8zh4KQdFGcgJjlTE8juNWK
	 ECqikPcUKjRZpy9k/j4eQHClgT/tX7HIshYJEec3uguWLBnoEZE2ZSQcCRKtUOzNrt
	 OlyPjA5eARxAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96927CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830299360.9050.5794972643284535409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3057a7dd4d8e77d7b4b9be8321b7fc4055f65cc9c059ff7a0c8626561c90a910
Date: Fri, 19 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758302993
