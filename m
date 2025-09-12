Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1AB54758
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757642994; cv=none; b=KPNYcQvf2sI9qC53KcWoGltlsyk1onOkBtHWzVpuOiyxmbAum0AUldqo+K3qeOz94DZubR/Fv02e6nvf+EaOjppdGkWpNquAV/PkxO0df5b9wGt+QoZwYl/pTseWySPiOg4Km2JkqfIJPCm6bAQa8VvEcNWiHBJl5r3PRdF17L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757642994; c=relaxed/simple;
	bh=DwxAk3jnwOOi6/91In2EdXL3SFXCuOkrVZKjoWPYkJs=;
	h=To:Subject:From:Message-Id:Date; b=X6bRUtuZYuenCZDrFJqKhO2ziGU5jygLpiNw72++e9I0w8Od9pnqVIq7b2f7O0eLNj9j7jU+FURIBzIx5fLiotvTbefjJIGW74vKXyNUiFXL9yifOjtQc+Z/KRu2PEBOMyFQagmop0WLkDl3HTE4lqMtRL8D4SyGJnUKUnttcwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeI5jB/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeI5jB/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECEDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757642993;
	bh=DwxAk3jnwOOi6/91In2EdXL3SFXCuOkrVZKjoWPYkJs=;
	h=To:Subject:From:Date:From;
	b=TeI5jB/O6H+cZO7PwgZU/3Uoj3w4dzS24zsERgpEXxOhk+TTNPb2F7xiY6sdZcERJ
	 HK7arv9aP8S2656qar/vHehptGeByk5I0lum062WoFY+yLBvZVP5H2vcM6bCXwIe1L
	 YBn2K5Mz4yMHCajGabPyaMY8or4yfnkcKuzv+2Ez44aAwUM1kUVa0uW1+qIsTijcet
	 Js76V5pNzMlXbmR8DtFsgPmQlFUK7f6COeWd7+g8QiwhbZfH8X2ouTcoaDrP1+Uqyj
	 OTEwftOAurA2D1NhscvYScSsSatRYntn63OpePQqDK7zSrSx3BX47m2+RmK7HOHKk3
	 YfKWjaPX4JXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF13CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764299358.31467.11528979812764823244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0ff407dd1d64fd876ea489dba3919dc0cc16ab5f2d79567c4d3d06b5d4a4db
Date: Fri, 12 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757642993
