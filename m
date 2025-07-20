Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312961E376C
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753011594; cv=none; b=aY5Sp46iYop8hEW26NRszcgCbHPMge6MvS22uZ0eRbKhJT4XnUiovmyEgfY7GA6IUQZPjNwYKk4OeLmJH7UsdnvFnwt9CZ9GiPFLu7hwud+6YcVAP0VtJFupz+8aEh+5iuUc/ELPTwwF3KN7iS2SJXL0IMeNH5o6ARK8ZAmBFVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753011594; c=relaxed/simple;
	bh=nnT4fgvwx+YXhkQrQbyTt5w58yf/Ri6ugyBym6rnbdo=;
	h=To:Subject:From:Message-Id:Date; b=IW96fWX1Npr3Hwa4VHJzfOECoSy1p6PFe6Jfi1VnU+EEKhCbhaZLiRwlxitcvI2cRlJ8DtBRnu4FUFY/x4HbgMN7FP97GgF7uWc2U1kQi4eV+0rsiVjRV/A5ogYQkEI4SqefibFtZ8/NCWt0I8afhwDdOCaWQDMnWckCN5VpmX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck4ZbBFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck4ZbBFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA4C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753011593;
	bh=nnT4fgvwx+YXhkQrQbyTt5w58yf/Ri6ugyBym6rnbdo=;
	h=To:Subject:From:Date:From;
	b=Ck4ZbBFocHp2ehDkcj308WC0gvE0IZ7lQHwW+DahOpAEewipAkykhKZerevpSp137
	 8IFKBD3zjS7l9+MR//3HxpgTt+aBKgjl7ni/a/CqcHh7ihoZi/QKuNm9/5hV+VePAw
	 RkOK3wi18RMKasHqhcF6wMmrFToVeRElByUZJ+AueCcx3sI0Yb2Dx6jbJGGJFuVY3S
	 wVe7hF4DelmeQQw78Lq3jg/j16Oa+m6+on5z9524z44OPMYpI+i9V4Pg+GhEHmeTAj
	 zQfpfugBbjO5JR6uTGj3VuUHX2Vfy+JyjwUjSlM8pS1K432O304E3oIFmUMRGW/Bz7
	 ++FgnygBktMRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95856C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301159358.19981.17736870893603564958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c855ba87974f9109de45d2c0e93b1c8acc38084eea9c1183859042ad1352dd
Date: Sun, 20 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753011593
