Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31268347536
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780218874; cv=none; b=OnqZxChsuMTs0PEgMNJfyaCu+cdmwU0Wy2C7W+LZDK3wyqHMxrP6V+p3FG+0pGcEawQGbnl3TS0XLuPpYIX0v8qhi1Xnpkr36+jrWMnorqis9zLEmgKKrKW60JzbHAKLANWeHS+/RJWhBSUzv0L+YUAR33tkeltvDYFWuGmJ0AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780218874; c=relaxed/simple;
	bh=zEK78m3pkSJUJFZMqBRPtyy3X38Du41ukM4hS+xoC3w=;
	h=To:Subject:From:Message-Id:Date; b=iFidX+7UEcoj9WQjz6yUcPCwrPEmdipcnaRBDNF+ECfbr0iZfpq/Jrr8nYQJZyQJd3UkTey0rSCsjt2a+Mc7ELtQQtt8BeWuhGUz9m3hQQ6b6kYCqM0uLSOmH7ykNvHBUcyot0mLLeds4KNBsTtDq1/Pl9Sq6W78qe4N2FX8/Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBSio8s9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBSio8s9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1660C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780218873;
	bh=zEK78m3pkSJUJFZMqBRPtyy3X38Du41ukM4hS+xoC3w=;
	h=To:Subject:From:Date:From;
	b=sBSio8s9J07I+8BuCFzqkVjUOLhXpdWuOF2PLm512yif1LsYqi26OGA/vZd6z9hOC
	 uWuJBiYni/e4x+gpEyRXW4fI5hReIsx9+85rxesap2XI4BMgV6fk65/b28BZt8LhC/
	 LwFpc/n9TpLMN9MNTcSto4Ss3K+5Uo1Wb5cHsm8NFJQaZ0Xn9GTUggtUAHUsBcWA4/
	 0s6Zjg0Qm9DL/mxhzIt/syqvx5ys7RBvH2HygkdFZHvAtdKYpF+HbXCI/lOfQrhKBV
	 9kHl45NIpRYzeAcbao86+eAVxeCNhNet8h608UZukbA9QRKG2PzLnuiPwUlxuakLkc
	 aMyyxCcWkvdaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEADCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021887368.5507.6303465852604188300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e169bdf25954ec26b57a11e19de0c30b614f810a0535a895b569d922a24d702
Date: Sun, 31 May 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780218873
