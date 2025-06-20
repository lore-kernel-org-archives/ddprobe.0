Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1575B1FFC7E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750451994; cv=none; b=Xsszlwo3mnXGhrMYIdjgMxe1lNL4lIkDFk+vWdUDho/T2MNzmzEI8wLcMLwAAm7QbO40Wna01EE2XVZpVS6/EE7d1B8os4gnnnogSkArP/Z7TfMA6L6wv5Q+q50PRbJx4NCAIZtkjuykZQ2jvnoeQZtUx4nbTpTW5f2YSgWTcVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750451994; c=relaxed/simple;
	bh=JiPda5DDzNfhyI9BwzYXPhjCrwZuf9hQvSE7EhQ9b8o=;
	h=To:Subject:From:Message-Id:Date; b=VtkLHWJQ9JghgOW1eOTRS8An+iIM20tq87cnbyzYtX5i4T529N+Bm7ghqX3QI6rJcHvYtXY7LZ5yGTq38feZ5ZAVfY71MqrsmrviKaLypB+YeZj2nzOljy9yGc/zRl0eo4kZEF2kUY3n+h0WhdUy9nd1FGe19oo2r0oR5tPmRgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acmdkxFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acmdkxFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A43C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750451993;
	bh=JiPda5DDzNfhyI9BwzYXPhjCrwZuf9hQvSE7EhQ9b8o=;
	h=To:Subject:From:Date:From;
	b=acmdkxFtEiyJjS94qzK9sCaddlWQXhfzWxZ9M799m0WpXbkJpeBSkYzkOy0lX/ec0
	 wjJU6wKb8L6n8WVT2WaU16E9+jwxY3BzLz1hmVZsokfIN58PHMfrrjduze3NeOQU7q
	 QVg0K/yEZ4CWDQuMJz1Vzd8NIuuJ5fojRpFGc2oZU758QTQM3V4oeGcUbK4y5mNEAo
	 SHvkdCEBndwbsq4LApvyTC1lehdomlylVJdOspqKMUwzoFApfVnDJAFFBpxWom6giN
	 PoIPMUbGAT+TErNWHf2s5/Za9e96V9VUxWLDculX8O+eTG6DIQny9eaNe2eSL9nc0/
	 x1PtQl7Ewrg7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E605C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045199357.30091.11285695304102825917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7fc30f1bcb774416ce5c4c30b2c943841f2e20feff5fd9fcde5f9050f88805
Date: Fri, 20 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750451993
