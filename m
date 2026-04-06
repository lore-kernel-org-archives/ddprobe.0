Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7C734DCE3
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775456734; cv=none; b=DLsKmlSq9Wqhi3Y2gXIduXZUJwnKoFh+mFmMFV9cweaUG/fYGf9o0MmmxsREkx1BfY8CpPA7gSycsKbWHDJ5x3HjYnMoEj1EeEusD0tCSMQXFbq/IBd/vZzAceJstmUWy7Vg8im5n/u0Ri9tLoe+PO9/Fsse4l9iDUcpd28Uz5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775456734; c=relaxed/simple;
	bh=Di5BWFExmfMwUw6c/KW1bS/RbSSLgVOIXy679U1zpws=;
	h=To:Subject:From:Message-Id:Date; b=pZTd/g16lSy1IfNHAqeryZ4piNmr/c6TSflviEGtKPesYaHjSmMr4graZWLPw3jfZdWmjK2CahCzsSIfK40m4TGACw+mp5HN6skwoIJMa4tlX1Vufbg7b2aNO5RfGuwI/VO7hh+UmhxFAYS5zOs02TukHYnJxYftUadLaXUBgbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSBIfxzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSBIfxzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE61C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775456733;
	bh=Di5BWFExmfMwUw6c/KW1bS/RbSSLgVOIXy679U1zpws=;
	h=To:Subject:From:Date:From;
	b=HSBIfxzym1XKsH5Qun3Zj58iGeC+9UB4TAdY9c5GIOw9PnkIzUkuPZpI3EJbp3Dkx
	 S669EEehZjBo+sg8MbpOBTOoLZhcblt2lmc3pRG8a/bmGJjnrd/Pnme24AbFbXIcqK
	 oGGxA3yRkQQnEivm5kVO2w4MyQQv5KM6BYFaG0U0S5/VvoG31Ejn7zUfZv/A20LM2s
	 i0QY58kDpGpSwf5UQ5RxPV93VtH2z2L6xq5ZhuhuPSeIi5KDeb3m0JtNQkZhhH8v6U
	 5ORflnZbXiXhJ2faEYwpy+QDmFyBOOGIv801WqUQx9etZ2PTl71rI4My0GDXt645dN
	 dgeqvxfCca3uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C265AF3D5E1
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545673374.26417.7664145491676441210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5072dee5fad81e085fc1c4e39dddba1e3b1f0f4b65f52ab517c35d119b6dbf2a
Date: Mon, 06 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775456733
