Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE652BB1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752452994; cv=none; b=eNdZUYOkw8ww1FJQhhX6AothNhJ/tisQHQ5YGfgxZN0YV32h3twPlAQkl5TpLWGSRrDxKXAGyB8TQRNf2vRrLYUZEotL/2khZ+szy1HqDsEOziG+VuSRMwIhvLLd8vSKP1aYlUd9omQpelWeDJFW69v7h6DVYMdPCj6mUxjddGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752452994; c=relaxed/simple;
	bh=qmtm88WnGYZbC3wGkxJBJ4bGElLSbCks8lfTIXSoJbE=;
	h=To:Subject:From:Message-Id:Date; b=RguxglXsCX6a5KkV9C39O1yBBL2Wt2t8e8FLYPHyauRcX6ccJX0CtjUC9eZ04VG2J7rDB9FwMuxgJiMOfeER1NMDeLZaQeGMlDg+j9MoxLG+l2LsgBt98SmtjmYtFIsQGzGnIwIe2bM7KBCB8JEKZbonEK9W+tjroM12myeFllo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtC2iuZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtC2iuZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4214C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752452993;
	bh=qmtm88WnGYZbC3wGkxJBJ4bGElLSbCks8lfTIXSoJbE=;
	h=To:Subject:From:Date:From;
	b=BtC2iuZxGhANgAznyPOfXADBt489k91lHSZsDtntE9DuAJAvgb9sHtlFHfRXkyUHy
	 +6PwYELoFVEgd28CYLiXNvppDzaGvTpqXjEU+xXVi49ZFPeICfme68bWI85kEoXD30
	 1m2xPl9eUtg//1zBtCiR3mVxu73zroByTN8iKgddjEyDCMTCjP2sNZUNvhXPD5k1LK
	 qlOm/wpAZHPkMMJVsX6LG40k61wcdyKvzh3UfbybZfeTukU3SkaY0THJ2lsZneHH5M
	 LBbpUtjk62VZD2gktrBVMjp+pTMThvG26qva2ZW0UY9cuyntHPoWJ4qKnfExNg60nQ
	 /DcSKe4ZV8qdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B77C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245299357.29739.9618903264549165043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6df084905f248e9d85db9e9c1cdbe310b4138cefb07e4335b5e49a9e3289b3
Date: Mon, 14 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752452993
