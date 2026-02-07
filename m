Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1742D2727EE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770507234; cv=none; b=LPoEcvratvDm6J+GsB2KwIDVc+TWdfHiFhmdERopl845DEDIbXgugY87P7QQp4z8B5vFFBRANDPlXJ+7gt7fq890CpYKOmt09N2I9mxhwFpsQKHAegUYo+xjoeQyFKODembTlR4EVjvD9YeJhxsSEH3UdFXJbeX40f6/3pbzP18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770507234; c=relaxed/simple;
	bh=WgiaF4DqevnKqe8ysRfPKBqEgM0wjdlbmHVJe5GzZDY=;
	h=To:Subject:From:Message-Id:Date; b=VAaE3ZWkdrZzsXEXixTRaSxpiuFf5A3ihGIhjJib1HRU10h0tIFh9SunLbAqzGC+Uyb3aq40OCO8RdmlV/+bV7tiGidrAxZ2doZdh1TioUSxOCBs91lnXY3wXHY50IABrpD35rI/uO6JlxAUTXT9aUwOaP+htGxwKTbPlPjKOf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5bcQF3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5bcQF3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED1BC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770507233;
	bh=WgiaF4DqevnKqe8ysRfPKBqEgM0wjdlbmHVJe5GzZDY=;
	h=To:Subject:From:Date:From;
	b=D5bcQF3vsxoksr+Tn3d7AFct6Ex0R5aEApaxlq/sR0Q+hm1ZKTH9wuyHvx3iepn8i
	 SWYSoixY6FvATJZqpaXGng+DG0JZftQIkKYqfxZuw0yB+B2RsQkRr5QMWWAum3POlg
	 nfMf8GRNcgQqZi8z/RwmmzJ7sGGMou8KG+SqU6C2pSEl3Jz2uYGWfKj26S4v0KL9lf
	 cAzuL/ClpES8zUcBdS6xfT766eO8poSdZMad86qwY6UIlQjF2tHdPLelA673bj1zVx
	 jSX55AUE89OpOKRcKulcMoX+Xt6HITd4aS2gH9//jFdyDhWKhCLeS0oEsvUX/nDvQp
	 27Usu+s2NnOwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9954DEE0AEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177050723358.8065.17147959707514121153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e725f9c8ef8362d059408ffc6860d695e4e5d19e646360f96641c35d566c3390
Date: Sat, 07 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770507233
