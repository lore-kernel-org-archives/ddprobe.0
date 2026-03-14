Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B40924886A
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773488094; cv=none; b=C1aR+n0ZWTaTx/y/AeYgpXVv7FGnWVTWnSuyWqnm9+Dja1jHel1BC6e0Wjq+Tz3ZrZIXfr4xOPxBtcypsUZXPPJG9Z7leBXi5Y4niiCJT2cWvtI04g4IGFMb2a8Y7vQ9Bi22SMAxrOqhseIeSS8gLT72Pc1bkDaVpVpBR4goJEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773488094; c=relaxed/simple;
	bh=FKjliURTqGhpfyDvwC71u6HOtef9V6uY/im77n+pqiY=;
	h=To:Subject:From:Message-Id:Date; b=duiDLlYTPAgzHlnoRgkej1rhQ9Gz+eoi9XpwzWh9tk6bnoe+njm6st3dwWN/eA2saxqZzwwRzop8N831rr7ivyCGC2Exx9de7De9y/XTzpJ5rr5xdjpBcLxR7+ds6frv8VOgGMj2sGQxrm5GDaTBBYZkmfuMU5R0B+VKXTbIUfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1595hJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1595hJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FEDC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773488093;
	bh=FKjliURTqGhpfyDvwC71u6HOtef9V6uY/im77n+pqiY=;
	h=To:Subject:From:Date:From;
	b=I1595hJL95Ei7MFfV4Y3bLWYtwhAY9n8gFTdRV+FCW8Anj6XkaSp9by/CTDPO+cDr
	 bwPn2D5YdVQaxc5lGJPzRaaPXe++2e+vQPDZbXo2Py82pXs6m4tJIwUFGTZlBQ9o7A
	 Y5vdr/1VBQtBaTHPfYtZEAkJ7znwGEl5B0QE9ofImNe+vG7QE89AsjpxhREvjk31mN
	 1CZsEZAujH20FxvdctcaNNJkNNgKIWG+7ysphMana+MU84PeJT5tc87C7h6m0071Yp
	 vqJhiEY0QGiw0Qp2oGVh00ay7/L1iZUwoJbQid/Guqkd81+3d5ENUhJc1r+ucrvF/2
	 cuir4Fjeh50UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D6710706CD
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348809357.10738.10177500492283421463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f28749a4694fb09e877ca8cb561ae4aeeb2b43b379b0708964b9f497e072018
Date: Sat, 14 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773488093
