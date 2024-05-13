Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7592D4C81
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715563943; cv=none; b=NjhwVgDkSOBJcooaRt7R8DTsypmhXvTxfjyET2DQJNf1wO8bdDEHp6zcTw4CgszMGHnHz4mvGxVMnzIqbVszKvCaIKf8Gwkdr9wc420YqcE/ubf+JXTwUuhYekosDVIWJB6dU7tYEVXLSvWGGG7ca+l33lysOkp4PkpiiPK2iy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715563943; c=relaxed/simple;
	bh=g1LhP8tBKfatUcECIb8MWo51rzI8QI6yhePbgaLFJcA=;
	h=To:Subject:From:Message-Id:Date; b=BZje56dRxWRizyq0NjaMVdAcmoRb3Cp3nFnh83QAhq7KSAP38oVjxWIIs/jgs79HmHtBAXlcx17lN1LaE/uiQ9r3y32m9m95BP6fGRkaYtInllguJpkia9aG73ZFsB4S/9c/UUiaL1Wk45qo39I2vsUkX10qo5FSBr4RFJQS0ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZ1AjxGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZ1AjxGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E31BFC32783
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715563942;
	bh=g1LhP8tBKfatUcECIb8MWo51rzI8QI6yhePbgaLFJcA=;
	h=To:Subject:From:Date:From;
	b=gZ1AjxGBhKOKvOgENWFXwUW9ElsTIJ44tMAMuUJWJ9FArIMzdKZlkT+njzD2KHgwD
	 ZTpCTK597BbfB45r3oFMoGbX/M8xs8nPA5kpIKPTApAJnT0udG9Tt5kQ64ZjR3edYI
	 bMmqxfDYIVB75XnWnenrTK+KENeh9wS+E/2z+MoqtVOG6Ii1DrgzpJXhOj8g2QpNVc
	 Sk+anW92Pg/bWZcDvulKZDnX35NH+CpIohjTB+awWYW7cGWspkqC3FoDW70+y2wvy1
	 s0ftP7q3neGUOZfFkaLmF/IcwpiDhiTqRlTn7Lj1gGElQ0o9/KRsG1qaiVpy0Wv1ul
	 I8bE6tHpwJF+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5F0C25B4F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171556394281.14953.14938631029351002858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8898a951a2c1cf2df5fdbd2e61851700e68573713b97b44eff0e91222cb6ccc9
Date: Mon, 13 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715563942
