Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319BB3CF67D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776716254; cv=none; b=jJ0BuouWzuiab8ld9FXRiOBxJaRGLxrHsuFTngnIKPHicIUxlbnKbdrsuW/43g191u9N4IBpJVY0YE+Sb+DNN6dCk1fYMZw304TeMfh1b8H51azE1phnNJLeTfC5/SGzlSA1ZAczU0zIIF5Nq6IWMU8GbjIf/1u6qRj5O0x0hN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776716254; c=relaxed/simple;
	bh=G6bzuBvufhFR2q6RRvHCsh4HRkV8M7pgelsw+KVrb2c=;
	h=To:Subject:From:Message-Id:Date; b=MgWZcCsaRFpc53SleNQYHPf29zp2qNerFr7P0pspPT7jo/sNPnrmnvvUTDT7JTrowoXdhrxepuG2dMUCsrBzN/LE9dKtBD8juH+783Lx0xPTkz30buUUfh8P5Czn+UnZkmuzxypNx7m8WKnQDXXZyHIW4H/Y5YwU5g+Eagb/InE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dawpzeip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dawpzeip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF216C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776716253;
	bh=G6bzuBvufhFR2q6RRvHCsh4HRkV8M7pgelsw+KVrb2c=;
	h=To:Subject:From:Date:From;
	b=dawpzeiphqPWgHes1cru8MXYfeEeazDlE614V5oFi9l66E2mCyD5tI/z2brFYlhKG
	 Vqc3BI9CllcfvL94XoBntL7HAdJXDdVgHZG0NJGaBHLYcI3bo9+P7Zr3b/Zafly2xL
	 U0NVhl55OLb/zLifchTdkCYac3mmHAzW6lH7Zk7aGqmq80377AV6PzwkB4xoMHVAcP
	 sqUsOWmio7B0R73v4RfrXBw+yBMklV3koDhCPnwWJg7oc2kk6fZyh8OlJXFJtjEYAf
	 p3ExAJpZ0ZvggPQKWCoGks2G0otLKxub1AWPn58rfVA0AH5JdEqaQyqTh1O91JgBtN
	 KqH0rgPNRhViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C7F5A8B9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671625368.32494.11447533785317578632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5057176fc74410fd023f95d909949f8d017312b518fefdccb8f0ab807eafc35b
Date: Mon, 20 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776716253
