Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B823E122F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785330634; cv=none; b=ExbGu142yBAUcbKuKNTmWqa9b+0dJCL6EznCgO5mn3c7VupdUEPtzf84beKblhaAq06lHh9YnjGrOjSN5YxAaQa2D6PXw0a4OvZb0KrbutsSxNU0SL8pKxx7Znoi2XL7wDD3bWbAIdKC9frFnnFxO0uOXBNWIL0Ft50n2p5senE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785330634; c=relaxed/simple;
	bh=GmQTFgeKbjXRzhgYLxZqZIPhTaxI55lZ3MMrY3bb6ak=;
	h=To:Subject:From:Message-Id:Date; b=pT9G1ev077oDUBlehm/ambGfwk02XZA8UpQp96PglfhOj/yEOP52YqC7HY8RQ+9mNvQV/HcZQfIrNFBG7tHwgFIaPrnYEsc2s4u4lk50H9ttzDGXd5/iqX6bExo+CvOx6MXVc4Nd8Az18V0MpIsuGHAykLB1wQTMJVe/6bEN1f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQnlBP4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQnlBP4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A0AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785330633;
	bh=GmQTFgeKbjXRzhgYLxZqZIPhTaxI55lZ3MMrY3bb6ak=;
	h=To:Subject:From:Date:From;
	b=NQnlBP4c4cQEHDaTHn+OZixEh2Pjyq4OucridPy4aiKsKmVG3YnOklvt0KOx8cPqS
	 yEoNS/yVHIbhlaPc7BWOxLKtJ2WkvcbfpLmnqU7RTehqf79S1X6frPd5Xtz4t19wP2
	 53Ird0Cx5v4jB+fSYnTaAsSap/1h0iorpQX/fFiUVdBzm3OzC1OOk8xJeV/uHV8N6Y
	 2DbgGb2y3IAsBf+RI9RRQbStwEc51bOZWBZ/sLYxquKCAioIX95tg+aPK411eZ3YjL
	 XEZnimpNroJETGOZKyhMDA3D8n/wuB8dfebr/CMBemSxzydN0nZPZ3Zrhtq7k9UhOP
	 swKobD4TwvpdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A3C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533063368.10748.3187228337019413213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7216f3041b109335bf968b6d43476190400295e72d19cfda95082de39a7c22af
Date: Wed, 29 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785330633
