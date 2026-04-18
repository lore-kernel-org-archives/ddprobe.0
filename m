Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7290126AC3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776545254; cv=none; b=f+Tf7bbdftGSfQ7R5/GwpyeS6QSFtA9ceMojXMxrsEgdKs/LwP8Jkz29AZsQO6SMsvNFfLl/tT7YlO5Kg9M3d48olUsQ3zZBXDd3hklHF8urW7f4kxPjOTPbvwR6W6DgIMdZ1Qo7RbkxhlhiqMSS88qrlHxCkKmK+dlYRepZ700=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776545254; c=relaxed/simple;
	bh=7hpY1CIvBpLQePLGocezSTy+PTci9G0rCcMTqekGmgo=;
	h=To:Subject:From:Message-Id:Date; b=SOE2XmH0a3amJUHDuKkuug6xxKNxBZ1t/00LxmquaQdn09CBF9GdLvKamCTKuIqHaVXMzbmsNfWra0y+qUbNTbO5Fh6GnW8+TXpjIW+sEGmu6dCU83D4QmqBeXXbHBWnjWghgST6WoaUkDHEApXPladaWy9Z3+WAfq2fcWi2guk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlOdelqt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlOdelqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EB3C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776545253;
	bh=7hpY1CIvBpLQePLGocezSTy+PTci9G0rCcMTqekGmgo=;
	h=To:Subject:From:Date:From;
	b=WlOdelqtzJ0ym3bXIbSFQE0Xdu+3AfXUs19JZq9nxF82pRoLVl5FthbCAhENNqAFc
	 zYoCsvNXySvduBagdDcOKl6Hws0U3wh2RUhUpQK7m+DQDT1T5b48jSDCynZWjrkEN8
	 s8kCDO83shdcObvEvjhJa/6jcuAx87760TKaHQEzMUoCyVLKHbstck0yn4LlrJadgp
	 r0tJUQQViXBgzKzDF6giu2HJR/f6WZ/Xus/Br8Vj740RxA9VrsEOUR6EAtS3KZ4h16
	 alqLeJpbJN8eqjPFiuw7tKPI5hWO9ryqw++jLWv1FOVcEH2GYZmA+6shbUVzedRBqB
	 L8c3f0Zfg1Q3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFDF99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654525368.31358.7831803343324715026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ec56c30c1e5f1685a04eaabbf3e97453cb98d6d1eff261a3b14157655862ae
Date: Sat, 18 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776545253
