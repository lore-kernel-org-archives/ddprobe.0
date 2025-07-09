Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3666E3208
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752037194; cv=none; b=UvB/6JnsMQsAfWd/pPgbHnSjbcIv2oEWsQfsHtm3wPK29Xg7zJf2iK9dsZ6zlaUTf5prm+lJ7naLaAALe7p5J86trAYSyCvXkmMt+6v32S57WzCUYa92ZeCpjjCNoZu1QIR0NYhyk3AIZOnWBVdEqtDkRLrcDJOBwRp3f8NmUm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752037194; c=relaxed/simple;
	bh=4GSvXWDcVuSq+HB0f5S35Jclj6MtufNQ3o9uEUySDFA=;
	h=To:Subject:From:Message-Id:Date; b=iLEcvQT/X+gr8Q400MAlGZaIf+LrsrZb915TVhH4g2FFBTVs5gVjFCtNOputLSh4V1dvTO8hWdD5v/jhGCWo8OZUnoWHjx2Zz9/tfYVcSiMHy3qRkh3JjJuChLqiVbXV9ew82Fn5QL5DMrHDalik5OnROrRpr7BgRgflXL1auGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtrI6aZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtrI6aZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5018C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752037193;
	bh=4GSvXWDcVuSq+HB0f5S35Jclj6MtufNQ3o9uEUySDFA=;
	h=To:Subject:From:Date:From;
	b=JtrI6aZcSdJVhZNSc7sp3tj2egM0INbAUOZ0etWZLZr+/qWaDr4w81zkQFULQ1lUu
	 1BLxTKEWjwQd8yEwh7KWBy/+8gpRGjIIzDoQ69WpNvNLEN9zFnywhosHw8fzPcqxf1
	 xl2ptMfZL0PK7f7PwMWxxvtMkqAhT36eoAuzSnCnt2Tg291sqFykJRrq9Z4N0IOANK
	 jz6hTR6gx2Es4Et9beSMg5e1LZrJrbs5XHr9MvpSvitAMf5ounKuNGtOTMRzHNj65H
	 765F+Lg2FoqsHIZl1wMieCzY4Ay1mUbgMHt3qFG/FpArUF5nVpnQFBfw0Mj0+pf0l5
	 +/qfLKt8FCPCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919CAC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203719357.3515.1332922290273342303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8809f55395f171df9d0601a04d08b0ddc16142a812fda9cc58212050606b9cb
Date: Wed, 09 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752037193
