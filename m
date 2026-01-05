Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDE4320A2C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644634; cv=none; b=hzbugk2nTZcfJHuMhX40kKhA4GYLYwLZI6PZMCR4cX+KCkysQ0Yi/vuOYKfzbRsfp6p3wWphG2+2JxGdFmivE2Dwun59t45AMpqsqM3NXEl7/b6xyr8PHFMCTPSwwKqi5L+egcNXWXXCx55BmwbsnTSAzFoZog9GwZNmdLZtk+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644634; c=relaxed/simple;
	bh=B5oJyGTLtruARpGvd6lE0wjVHqyXFqH1y5nIcJvs1ew=;
	h=To:Subject:From:Message-Id:Date; b=lwcxiGNBdvQu6Z+gxGwWsbxt9zlpEGPnK+a5nSkaDzykS9Jnrsu/YglAmwOUL6gOtexD2cfP6WIimmhub9fgWO3VvKt/zLjuzfaxDgvq4eK5yn53ukKsCBFpEr0PpGbzGVojGNYdGHJ7GNCZA1c+bqjjnEBAWnAJdWpw/weEIpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=km4ujKjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="km4ujKjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF6C19425
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767644633;
	bh=B5oJyGTLtruARpGvd6lE0wjVHqyXFqH1y5nIcJvs1ew=;
	h=To:Subject:From:Date:From;
	b=km4ujKjUr3HuuXvZp9+7LBSBA3B2uLoQCzfeB8nYQRwBEZFI6Uc+6JsRK6EHToIOB
	 xL98zI8ovQYSx20tE2LhMS1rpJTlhAGuraoxlWPIHsKiwQ7e8QyRBdyZkIcMLNWy9F
	 Tc+t1KXyShkpToPnZG34PODkpDkd0YZr/Px1jESGqdRi0Nh2MXmI2lL6lDVOjH+Q2k
	 9om5oyN7TPQgsqv2Daq8MlooUg5aCXNGT5YpFmUME4fcCK63dDlM6+Nzd2eFJtMP69
	 zX8UtaQ8ju2YRivvW9P5sYKykhb/+I5ADCS7pgYESYxgurzYxYBKidTEQ1jf+5WvTM
	 ksaZWv5ewpv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D6C98331
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764463360.21829.1298099639315187284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b338d09b4789b89569f5b0aa8b1c3c82177314f0e7107075fcdd3f602b4233e0
Date: Mon, 05 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767644633
