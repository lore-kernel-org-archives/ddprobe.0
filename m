Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFDB3A380C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788385235; cv=none; b=YRc1Ep3g08gWMi9HiUyWg+UHV4TQzN+1Jv2OYmJgVyduRG5ezzuxvXT+ND8RkRS7iC373rIjb4WpXGUKDAuWSw+5xwSmzQmYG96tyCyHlkUYOQOqt2LbdpkiTBhFkFXvwvqplGbyv/R8B4eCg9b7177s9LVF/qD4/xYV7fgtQ+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788385235; c=relaxed/simple;
	bh=ynxgf/qgZYdkTcR6DP0aL+6KZfi6R++5Re0rD0irQ/0=;
	h=To:Subject:From:Message-Id:Date; b=shhe6cR6f0bKFjAXlKDpJjSmXlA7CeBfmToV9nCS3nZ6RFDqhxHjxYtEUsSn7Sm1pUD/oebukiB+EViV6I5WNitu7m+svHgszhgcSteZGOPJJ6w1aMpP7U659VqgXgSahdNm4N6SjUkAYU/YzoucmicZcOLPT1Tr3Hx874jhT0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7TcXLhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7TcXLhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF73C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788385233;
	bh=ynxgf/qgZYdkTcR6DP0aL+6KZfi6R++5Re0rD0irQ/0=;
	h=To:Subject:From:Date:From;
	b=H7TcXLhw90Cnn2lJPvrYdmDREh5HhxcuLEvUv7sJLEB4caJczQ4eaxIlQPwd6OUIk
	 nCh/unI92fXU9gbr23i6KWm8/9XQCR9volZ92oOshXZbhilBXzymYm8OEnUGLdnIG0
	 Y1puN1CO64ld3ZJs60Im7LTmEX7xGE4eOyA6mDiRWzVmKD/Zb51TyBZrHam5VAB6Ps
	 fzFDj9V7SF43Fya56FhapU4TDOrpF8g/Yu6lkxaFFnhBQZ5Vdsh/A9A7lfBaWNyeJZ
	 rMpvqPktBfd45apYx3p7d/j3jIRz8DoMBeXzFGhmoyBVivJdQwz4q9qUroIW0Rsa1A
	 PmJw2Mp7QQKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA01FC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838523368.25471.11202340507999228388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29532c887eaec89b3e057277b06b9f8ec971d33e744c249059d1dde11536e9ac
Date: Wed, 02 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788385233
