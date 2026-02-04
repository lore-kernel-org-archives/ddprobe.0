Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6FB3B8BA8
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770198234; cv=none; b=LxlouBboXKYd3AQ23MhM5frtRECxThjG4eqBkfMuIxD+GGHVsyWHSDvFxTA55VV/1OwQYPVz9ujp5MaNa7lZ9QJlF1powuEiDTIiRUcO/rxpd3eKNoQhUJVwBzeJWTBAA1aNrMpNMrYFbDm61iElUr7O70CiloCjOlVjqx5/3yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770198234; c=relaxed/simple;
	bh=ev6+0VT+prn4gvfMyG0UdMoRtVIOoV6NZ0kqzaNaNbA=;
	h=To:Subject:From:Message-Id:Date; b=ghJ15S3udH3zCPMRAaeFC21+Gbn2J1y/jJyYw9mtoYh8c0XKEqNGA4oPQT1we7HZfOeLN7FCKZc+lrHyYWSdJE5aQg13aB6P+YZ3Zg8PrpzD0Jv5NpP4jodVm2PC35WOPbTx4OhQKo8NTVSbEXyyXvDX3JIDOwgFIriT6pwg0Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8wG68hq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8wG68hq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB95C19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770198233;
	bh=ev6+0VT+prn4gvfMyG0UdMoRtVIOoV6NZ0kqzaNaNbA=;
	h=To:Subject:From:Date:From;
	b=H8wG68hq38/foLmy+FndwB0MEUcvn9y3/fktLRQ1ZclLGuFDFfZ9tBXRDIQzXlgO6
	 gnjRQjks2N2zSHJh8iYhUSY7mA/kko43o1iawxBPqrPkol0+XuAA3GEPnV2M/3hah0
	 LB/i1kvjOw4eJ7aAeCCvYmIZh3xVvdB3jHKZfuZbgWubBt9DK9sIa4pkS144IDBH40
	 uEb/ngSt6WJi30kE84DEx3mITT67SfmaA+3N06IU0i010iHD4H5CBGCAM/k8ieqEhx
	 z/FjOo5YqybLrAkmLVdJzzLoxg+tcteJ12BgbqjXtfMWD/W3UF6c0r3mITDStRsNje
	 cn/caTzWNPu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C9E95363
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019823359.30968.4103218281704206114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9012e0f6dafc21961d92cee30f38f264e9f276a3ec6fc7d905d2e85b91fe74c
Date: Wed, 04 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770198233
