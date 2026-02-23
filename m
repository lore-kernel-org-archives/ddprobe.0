Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF9A3EBF22
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771817694; cv=none; b=REozv12BhDIeedWbN+NOnL0jXqQMw8mbqT9kFubbbHhDuLUIgkgXrDTH9Ed23GpyS+3KSNbeh+0kP051z4BYpp+e9Dr2U+X7cqc6ffPqt3AGdSJH9DImavyx3R5d/ZPx5KXhuFy/5fomi4Qn6KiEKCM/3H74sgSrMSDXt5FDPMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771817694; c=relaxed/simple;
	bh=D9KS374ttWar+oyUBftv9V085z7iuZMEQ4PjNWjy+I0=;
	h=To:Subject:From:Message-Id:Date; b=VnS5XQR3IruiMnxEiCojAV0gU8WSYplwJm4nXWHJ22/z5lV4X8x35wIbCaB4NDhCoa/U1qNiJSGCrfrYf2pvp90kh3B/KajTsiNJfEVb4//maQWkR+kYhKdXGNQLr1Qsaw3MtR8+ERVHeawTIS/BOeo6P42RwRmQTlrObvsOjIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTXjzPA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTXjzPA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F489C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771817693;
	bh=D9KS374ttWar+oyUBftv9V085z7iuZMEQ4PjNWjy+I0=;
	h=To:Subject:From:Date:From;
	b=dTXjzPA5SZhmQwJO88Y5MFeiCdzDURYzEHzoxPW3l8OmBjnhH0hentlp2xqplT3Yq
	 NC7Z4nE41A14O6h6+f28+zwLzrCbebWvD4oHk35QcqweYnIfLN8ZqUNNnPrwDXpIw2
	 K1VKAXe9X4V9oP3qp9wzvSDpE1h590VVnKPVVwTPhfbhj7XCbEHNOZISCGFEa5Gb96
	 Y5VVpfctjmlFl3ZfN6fn2LBWGCtuK8HXkwmKFmu4BVFx0VgfiAZf8aAwmniZbDWa3N
	 g05o4mk+pqjwyyK7kx6pd3EbsMIO2ikGWWFMD91PKOaFXc0mNCCBEZVSl8wcsL5kyQ
	 +SQSywvBwmH/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A49E8384D
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177181769358.17747.13791903202130685776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d1c89338ecf6f8194e2dc6d87c16a20920d33dbc1f04347484481d871e2fee
Date: Mon, 23 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771817693
