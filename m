Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A404271464
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776206254; cv=none; b=GxS5icQVHWh92QFubyN8GV2NZR/ftzxX3OOM/o3aQ555qa5xJ+B7pPSLodk4chyUlUU91KCw+dENViO5c3PjDtQyzxUC3WOjhxDx1nwTi6lfqsiWRdlJKEbB8VPgs7Wc117+3RNxy14UpZLjEhCTebfLGad3QrT+K9rqOUBxI1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776206254; c=relaxed/simple;
	bh=dasfjhBmNUxCsNpGYUPS8VLfWGtHUxVsfE2n3dwGy4Y=;
	h=To:Subject:From:Message-Id:Date; b=t6yox9YOIN14EBvjAbgIWU8fTq6ie7m5x7dC/7Ecpv2JnGLmu+KeeqnWrLZ0E4VmX0j7HNfkcPtXCTsrFUkWiWmL8/0IaoNgKHMp6iWxcuZPW+/C9kYPRgbcIfMdz4keuElQ9cacNU5cM4R536ahranN2GWnhgWe5NQGxNdxpiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoBTyns2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoBTyns2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD50AC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776206253;
	bh=dasfjhBmNUxCsNpGYUPS8VLfWGtHUxVsfE2n3dwGy4Y=;
	h=To:Subject:From:Date:From;
	b=DoBTyns2GxX0QzKCNLgLbfeOXIRatQgh1AMoST/1CCwfShXJ1fCDUTWiSBDhmiHt0
	 4Krh3/qIXsnXNY0ureIrdiMj7RBOYMSCauUmV3GjLa5Bb2/K5PnfSkS4MySKzLKUMa
	 GHPtIQKmC23IaZ4v/M8vSwDdR180+dmY7+n+BQFxq1oyV4TUE435nklQaE6Y1usbvC
	 /sYNzpAeZ2VyNGACw6JpxKaYED2m+4CdvKIpj//ECuhvIrncApR0ixVJs4JA+41nQ2
	 RhUzPr4iDdiU+5XY28sT7Lbw6cb0sYSj0QPwbGG8poK68HBekXlNTd17+iqUK2AFqW
	 O+q9t4LmHiNSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CCBF9D0FB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620625368.15381.1637643057721553258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf0bae6f4ebe6379229eb0a925aad31178561ec0175d48b7d47dd437825f9e7
Date: Tue, 14 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776206253
