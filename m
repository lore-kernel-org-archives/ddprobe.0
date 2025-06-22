Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A7A155322
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750569594; cv=none; b=QqVybI7zwa03D0HsQVLi/kCBoZZ7MQKM1hmRi5QXP69YL+FtBIo+p6g8HAWqoKqKXjmkyt7bltPlXvpHOgEwe/OQPLAwq1TgSzYDuwMs5aQj0XDKnScu9tkoFPEVTkK+EGfcTK0v9aPrqS0/UMMs6IfvSJYvb0sZ/d/Oy7pCQFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750569594; c=relaxed/simple;
	bh=aK4tf0Qy57lmWGXrE667LLjlk8zOSRoTiXpDJGlUbjg=;
	h=To:Subject:From:Message-Id:Date; b=C1HOA7MG4dvx6t17ZQpTkeBtlMJD0Es2AJVG8CpCvJvNXd5Lp/7tS8ZYpNh1EN+Orr8BaIn2p9AUVqaL24DbWw9+UKeutX0rjZiHX898xKtYYiZ15N1zL0+6aQrNjPPJLyYRI4vEXSUuzCQrfwpuEeiv6GC4lexDTS93ev8x+Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5hFr6vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5hFr6vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A92C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750569593;
	bh=aK4tf0Qy57lmWGXrE667LLjlk8zOSRoTiXpDJGlUbjg=;
	h=To:Subject:From:Date:From;
	b=k5hFr6vz7lnbCzEvtc8WvfiFBBNKft0JjniS/rfrG1Qq8govl/f4+YI/soZDEIyYE
	 zyI+MzNCEoZwm7FSOp62AHn3wFGFxU08qnBkMjgLT6bELx7Vhn9p0B7GSO6C0MFL1T
	 JM9GGEVdVIkzgxlGNiyHizskBTGgabyAqBcj7x/YjSkpOkU9M+edt6V8TuJUwkk4F6
	 Vw+NzRtsLgaScA/9BoteNMKM6Wq4DtA9suetAxA+qX3rwhpb5pfghLdWZD4mZ9uRsA
	 w0MUggb+gbZN61R1KV2leYuyE8U97SFGC1QfzVJxs/ElllwuQ++huGYWlDTBhSkf+J
	 c8ZQ4Zf5CnRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE7C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056959357.17130.17608171175969615559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782cacfe82c59f80982ab8719f61ecf197ac6d6894868d64182a2fef45e7d7b6
Date: Sun, 22 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750569593
