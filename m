Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161678472
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729353354; cv=none; b=EuO5OoKwWwUWx+goSs4DcGvUYFKFdGj4fNonqtGRPth+QjvOyCzHflURNgMHQSJrvpNX0LmCsORuZKB5JwNmD51oDiR8IOSQ/zkVe81QMyz1Ubyb729mTdnmy6elwCKJFI+V8rhRWZuUCJLOPWD7mXjmNbpzYNOQdKfudYCQVLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729353354; c=relaxed/simple;
	bh=aviGH5OUOBal+6J4MYwomw4Tx1umBeKtZ8kQHNzhlpE=;
	h=To:Subject:From:Message-Id:Date; b=Ulq4X1hFNsXKQPYpUtayVnIqFbtFcYC8DROrqFy++sRLBDSymkNGcHBJqnzIVFqeOYB0lJ3oQQLt3+nu76RyN1CtDt28HOJPP5YJ6TWlY2Zgg6gkR4Yr+MbNIER3miFIiVMjzvXTTrXJNJg1iLoreBz6lHicZKsW2AmFe5jqAXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhDaGt+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhDaGt+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A3C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729353353;
	bh=aviGH5OUOBal+6J4MYwomw4Tx1umBeKtZ8kQHNzhlpE=;
	h=To:Subject:From:Date:From;
	b=JhDaGt+jsH+VV3YaZShgYezhtL8meUjkZCXCQGCU3Dw6lvsbUFJEjpKQTjoC7kjgl
	 Yko5GmOVJ4WhQIulVN099+R0ROT6SLgA7HHmgMPgbpSMorTo9rJWUx5gn+9dP8ubcU
	 KeDvfKD0onY6AnO81HVnoJ6W0GewlD/4vrF8pfVcrKzQqumsSs3l9EzxiNqP9pYwLN
	 okOnzUQoiDPNwEvdviXhx5n2ofmTpHYlcxPXBa0Q4eXfFDNkwOBL/My2UVKR4LLb46
	 r0nAiVlt058cc13tWStw59iqBJ2gjpCuMnl+CBJGvV6MXxt6GRj5iZJU6g7y+Vza36
	 /ZGBGzYNjAbxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665CD3C91C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172935335360.25405.18359768600474826916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8696b89b37d476a08468bcad15b4f9f0575dbe44902b11985f3f19745c5e8183
Date: Sat, 19 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729353353
