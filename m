Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B5D242D99
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760770194; cv=none; b=B+2OX7NL9mlYJlFO3Uku+UlplJ07+b63GPRLUFbnluPclGuxruWS+6W/os/jE8OZYyvE5WqTnM3Tf/4iRQ+3S6qRD96HDn+GvdtQ43nm1brXDpg4ckNJEWKDG0DGyU5Pc0Yzjw59fLDiE98eAvAGfr8WtUkM+tEeoq2YlF6ZQAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760770194; c=relaxed/simple;
	bh=x2IilCzzargzo59cegRIV609diHGN0wEF+C5RyaJFgk=;
	h=To:Subject:From:Message-Id:Date; b=gxurSYiCQYwnndKHpw+ShJeFE4YEuihZQrww749uCf/53WcHpL+O0BUlKLoligsibLgfsHrscC/h0Hto+iIrpjOAM5M4eidaRE1IADX6GDkdZc6CbNo/hKhfunc9BsfmwGgXN85lS/EGBmOwFCW6iBJE2If+c5VlxC+Kiy2ZCMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSK2NWwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSK2NWwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE5C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760770193;
	bh=x2IilCzzargzo59cegRIV609diHGN0wEF+C5RyaJFgk=;
	h=To:Subject:From:Date:From;
	b=OSK2NWwx1wSplQAXA2vKgFefhB3Bf/iBdwC3jQq0tfsixSMP4ffqSQn9ihOJly479
	 ZQw5+Kvg6QBU8IKqtd1KeUScvlMywyTZs82LZ3wtZmVqKvnJ9omnQ4sWrRcg+3IO/r
	 xuIUR9ggffEvw2VnumiDrFCQqjGtpqz0ybM1CTAZ+Xq9bFPVf/aQW6Z99f2KaP0faG
	 fnJuK0euDynkatPlhrCfLPZ0ZZY6c4vnoWztzJ/v7MUOck+BRUOVNBfDg6hp6NN23c
	 O6X3ESQJ+l//Sq2p98wRFWsOXKnLVHCRfcQZRLp9NCZOCcLt39woUBj4qqD/nl+7Mn
	 A9E/IhhLDOdgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DCCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077019357.19199.3080879096318340651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f890ddc43d4f69091899f66d5be17046d2ea3783480f8307e1a537c5c24ab7
Date: Sat, 18 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760770193
