Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613BCA41
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720066523; cv=none; b=Nhwmxp6Pzf1JEMBO2phaCB8k28YApnanD+E7HJq/FBobcpAZnJc1PSWlNf9OJnd1NMoHRnMPPsx8/6MhgGOWDRJylDza2iVeyck9UFZ8M0t/pTZi1vbEejoafHs+weMrId/tj3Li0ROeK119q1zZFRVA4J10FahsftBsL3gxg8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720066523; c=relaxed/simple;
	bh=HiqsayI11hLeIb7mYN2/6yys49RkFtzhsf66clYcRxo=;
	h=To:Subject:From:Message-Id:Date; b=N9RgoSfiaPGFfaL5pA90rrOVn/oRdcaYQigQJHSzpjwViX5fU6V9vQ3IOxGbL3zZjK1F0snhuuzp+J7IXHZkcyPCeK9s3JlPKZR99Ov76m6Yoc2u+po1YbB6abjSZKqBXCmomKEW2mFEvwlz9YRPcTzF6xpr45r4YvDsfgXBQMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpGCKOzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpGCKOzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0722C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720066522;
	bh=HiqsayI11hLeIb7mYN2/6yys49RkFtzhsf66clYcRxo=;
	h=To:Subject:From:Date:From;
	b=lpGCKOzLTb/WRpfBQ+cJA5DKh9hOoUOll7f47lWsFNQzw3huEudthfmT69WsKCQ5V
	 B77FX0E7Q1pXOtFWkZquJVce7YZSR7sFNTY4Gwkr3KxUUet1EnN87O6x2XgXPmEiEO
	 cAAw21c7hdEwQDqodbav5ISKnYJzf/8oyOLHkw4DrTGSUo/z8mjRjn3srG3VdoA/kq
	 6j5fSqSbRRmsHfhbnKRGBo8UUT+JGFXWcj4/nV5h8NQLfa/NTGhxsKcN/hcA6rUFYh
	 XTXe32yxl4BwqUgBFNjPPvQH0ylEF0fgujJxtiRFVpfJnUFjwX/dmjzI9Me1i6CaQl
	 +NLYkBVSbQ6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D13C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006652277.2952.1571824846092133868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491f4647337e490177dc7e5f1ba36c65648e9c6ed4ea2bbb6145949ee4953bb5
Date: Thu, 04 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720066522
