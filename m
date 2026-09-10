Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525B03101D4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789002034; cv=none; b=d2y+06tdrfRUhMpIg8aHOnsU2RbalRbeHLLjcPN0fTg2hbn78RQyrke1wMnq/8x1oFCABVtH3hu9egS0M8dEXu0cDjTwq7+dOeuu6D0+qtSIu48E8XkXlT7iVol73BytOAn69mWWJ7wxf1R0m55g4XaB/yLW6TXOp4ElZOnI0q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789002034; c=relaxed/simple;
	bh=qNyns/tVthtDAxa+mvq6MC3h9LNqET8vPv+E9dTZ6f8=;
	h=To:Subject:From:Message-Id:Date; b=c03FiW1NAzijRAeVKXoRXywAv1wE81WiTfOM3LXrQXoZWP2XZhlIVQrwV/yp5L9djVnmfJN1h5xiOM3gaTd1VLxysX378QiVUNz7aHVBDqi2nEas8NhHWESyh/y3NBuEpZvBYzDvpVCarX68evYGnYdyWgrvBC+WNDalH9D5Jrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuLkDTGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuLkDTGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3720C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789002033;
	bh=qNyns/tVthtDAxa+mvq6MC3h9LNqET8vPv+E9dTZ6f8=;
	h=To:Subject:From:Date:From;
	b=NuLkDTGqmK/InK1dBJrdPPNCZPU4ru3MLdl525AtElEpwHuamTA6+D/UqmJ/f2kKC
	 sh7O69B6iQ7yLwwLjRbWOpgoFDUMSM3//JMZ0FnZWCWTTT7/c1smZqdZjSh00PKb7F
	 E3pM2jPK1W4WNv2Gq9ipR1yWibFx6k7kPxy3D+S+619v043SROV1BWjm+s40Waob7x
	 0wSUpu/nqbP0tZb5fJ1iGIWgDRIDuvvVqES0SjW3ZmDumtlb1t7tutq0jz7vZ+Hipn
	 kSyOhW56LbGtW5cXTcvMdQjUnVWuJ27Jt0YmrEoosR5zpOZ12Q9TBbJvXVEinSa24r
	 wICzLaOgT04zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0B9C79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900203370.24386.4882261734501191856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb051a39e460ae98b1084278af019b1529cfcdddac1b2e7414bef54aec07583
Date: Thu, 10 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789002033
