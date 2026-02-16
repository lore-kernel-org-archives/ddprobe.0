Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A279230BE9
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771229694; cv=none; b=N/3B+eWK7kLk0LcjiVRG9g2mJLRD7me0olW8vUpUVJzGkSoyay01D8pGeuhJ2E0AXuE9VNB8JyltIVpeSgcCbZv8kqxs/X0jadmwJoq/ukxhmldqBa8rdcJkYs79kRswyh5YKNFDXVtpTNl+hrmaT9ySbkV0wuvr2JeLK+oT9gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771229694; c=relaxed/simple;
	bh=FAnPSMfjmZpNZSoY0fSvdSuOWkZ3jfk4Sj6xmvIlg64=;
	h=To:Subject:From:Message-Id:Date; b=lxBUklIdR0nmeW7sDudT55kuITeHWQP38Y7I44FCVxEyJNbyKGCFjaOS8Un4PczZvF80NFsW7saeRs0A8/qSaCH2LXjQN6EMcH/KH72TmCS5coy8sDtD4SP0/pZxjl+804IiBovxYPgn3oiGfJOe8T2LeY1EfODpjUis/ISl2zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7A0D0fG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7A0D0fG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8388C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771229693;
	bh=FAnPSMfjmZpNZSoY0fSvdSuOWkZ3jfk4Sj6xmvIlg64=;
	h=To:Subject:From:Date:From;
	b=D7A0D0fGwp791u049po3ig1SnLD0F0lm7Zfo9Kt9gywHqmItX90ACGQ8xa51JHpd9
	 yNQboTvXwNC8M1ZCslASfKauKwF63OkdxJ8kDS4baoRhLKG7Ws5e+zBtpjrCbZ22ZK
	 IAhjZ/49XLr2u41YasLa/beAlOS+luSnfWWAiyMPFxuzXcZK17EqSbrQQBy2Q1RPNp
	 kqWLY2BlzW0sekQQwR7JzByP3/Ub6Gz08AIDWvlbzqd7UCK6jh/M8kcR5LNSv9B8Yb
	 kyXxna9kAa1DvRE69DWS+9GKxR2Y17rnIS2pr5WkpeEh4LvbIbRUs7WAt9Im2SOnPx
	 Twu+Vi+toWiDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945A4E63F38
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122969359.26248.15019779559544031610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656a5bcbfb687168f2d5630eba16503871b41fb5b6d95fbf136c16600665b955
Date: Mon, 16 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771229693
