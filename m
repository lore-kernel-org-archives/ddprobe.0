Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2790A17C220
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746463194; cv=none; b=DoZGqOMAIX/BGvlD5bV1lGSkxPO3CTNWeBOeKNC0ZXtu92sICvuQ6pojgBq0jyVrEwffHm3lTo/snpKCFStAaHySpenS6lhW27ukH4q8QCoqXX4eCzq/wSSW9oC17KLZuOfinhtHctxrqR1Htq6+XYlX+ufzHCSFhDbUr0z7UK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746463194; c=relaxed/simple;
	bh=pDnoqofFTQQacRglQxVT1NyzQ6bAi0ghFcpsoZgdxkQ=;
	h=To:Subject:From:Message-Id:Date; b=j/b1sNDA/o2QTGt7j1iYDtHBvvXKDn2JdLfHps3jwXas63x3WdG/kd7pNsXSTDwHYbkoPipPghlhUZZc5N28BsmEq2PaJwwF2csMk6aYeTfE2HdZXhEd78zv1zZDB06SXUJWAycQFLKt8zm6c6ehO4oGUFntbNjuLNiDJQmKaBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dO59mxEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dO59mxEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97753C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746463193;
	bh=pDnoqofFTQQacRglQxVT1NyzQ6bAi0ghFcpsoZgdxkQ=;
	h=To:Subject:From:Date:From;
	b=dO59mxEsiZFupAxteRmUGV0MsOMzsYt+fl6AFYPvOogsEJteyq6JwcX1LYgiI7+Ei
	 KfwBaX6TGsyiOusUPS+0xf/vQSdCpe4wEzFeE/mCipgwa5k0BLylRt7P7PyxGBGdc+
	 J1yt5b1ozf00G11Zbht9yfDcvfwcy85yDJEgEOxsKA8o65pQuN3UOIqBGwuvunv6jk
	 MJcYfn3/+tSVRMBBv/jHGhTOnm3o/C9ScFTqgJUlcHRub++9MIC6pj5IBw0tHqFycd
	 zSEIQB+s+vnRLYsvqUYx67z/EjOI6dnOhsb793Y4tJb4nRLQiDLQIpe0KdjBcrLbP8
	 SY4auda5WF73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F345C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646319357.14023.362419301642830931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb4e3f203e4e1e154bf0bc146865865e9fac18de92bbedba56dcde03ee51eec
Date: Mon, 05 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746463193
