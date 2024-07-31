Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13199208D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722460554; cv=none; b=kA6iMjLL18H6TffyrL3sqLG7p7YTV9x2mdQeDfwQfU3nbjlCwNYHUiKtC/h3+/RJe15XGAgSOW0c8tjvvybgpV7JYA5vagQdafsKIZnfcPDTKFLbWgQCZb4XBLkyI2zQTgElHRH32EgCrC0ZyTJZI14ui1ehZ+y43pR1SEHmyJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722460554; c=relaxed/simple;
	bh=R3LseGclnL+R7gXjfV3SegR+7Ub3oq/NcFgQifWaq4s=;
	h=To:Subject:From:Message-Id:Date; b=UfaIIK/rCTnSEBAgdZb8bmUZqSS9esmv/4x9k1TgckptUenejjZB3paow1MhNf082pfbKcHPK2QG1wHuKzA6KoEXRr0HmTGzH28mkA3hluEBjmp3HZy9g783fEuYtoHq/gLN8P0Qmx182ceJUdVVqqo3k85aKHBoHrYFqV8O69o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dz0c8Xzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dz0c8Xzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB17EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722460553;
	bh=R3LseGclnL+R7gXjfV3SegR+7Ub3oq/NcFgQifWaq4s=;
	h=To:Subject:From:Date:From;
	b=dz0c8XzzeY5JmJQkdRiAYnzvf/g/nG7l/2VDWoazqrYMveBvg2qfdtypp2S2RgKv0
	 nATjUlLzw4ytHcWmbcSlBPEseAtdFigj0xUgwuCNn0FkpDrHbvn1DQYnDBdTKET8py
	 bcQAfNmzf1yofm//aXMxsLHGVdRFVtSkE+Uq7A6tto1U+l9svQm2RRz80ACiZ3JCA2
	 KivBftCbhMuU7wZ20JJGf5XmCOPVaegliZsRvbNiCpGStdXg32l0Qp/vTikyICCX46
	 4DX+HUQQYtkYxQ2OtXc1CO+u5i08f6m6Ewish4Tsyi54rQiey0lbG+ewcnyNwywunz
	 Y6Nvbba6mp2PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9227AC3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172246055358.28041.17987466557867967059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07207286b18f46bed80c46d357ce04a74a627a1d027ab24157832c60f342b3b4
Date: Wed, 31 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722460553
