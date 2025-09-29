Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C74157493
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759121994; cv=none; b=lVNTulfUyrv03qQF2T0FJeW4xfQEt/wA51O4GmfDJOE2zpITMYrXTCSqRUuXKoK/eb7PxDG0SQwEYoeQVP+Urxkpp0BOWuxiTJn3PCQHelN3rduXcV+T1qUrgitLmQH/ltRD/63qAswEzEyvQfR5zGJChTjbaMp5Q3IPZZn/oFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759121994; c=relaxed/simple;
	bh=qH4Xs9hURPfUizmlUT+r60KG+IwLxAWgCaC8y+XhD8E=;
	h=To:Subject:From:Message-Id:Date; b=QSu5L7g2PMsH4I2fqNjkwQQiTd4afuM4vIASLqYtFo0YAyxoA7uDLe9JUmbbI0tFhm98gKV9yKqMe5LUGQ84uzr5ceu+B2NMy8EYoRols8PIVt8yM75kPFa8qSsAC0jBT+NXjq2bvja/ykl94BmC1FHC1ZF7SnGB5KmSX3NTQQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUcQ0chW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUcQ0chW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE33C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759121993;
	bh=qH4Xs9hURPfUizmlUT+r60KG+IwLxAWgCaC8y+XhD8E=;
	h=To:Subject:From:Date:From;
	b=sUcQ0chWKUHpFrSJ/1HuxApKTf7Sqvi+3kMWaeWqz/Q7zosMrq1xcssuW2sjHATpb
	 uMPnGbE0Q5jrczF5DzBn4b0RJOSQhRsaEbgI38Bucvzk8BOnWTtoIz24+6f6uP8k/e
	 iZmdD+utGCjFiMqyWzlrF2fyQjXT1pDT+MYubvJf7RFyejwAPqaiPM/MZ0FfKhoXSy
	 vzG2iSeH1mD+ML1yA9kKuijxkLfrfkxtWdLTJ7uz7AqCprShrbDo4u2FXV0WQlCtSm
	 f/S6iYecyzcRqdMgknBrWAu2VhZLvKX8BtDdFyWn64x6dHm/ALs1cq6FGiNYBC0r55
	 alZ035NoPsQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E403CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912199357.15147.10691330813081091470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7780ff8213db3a47aa7a2dd6eafae52002b8f65426067af5b4f21b49d3276f9f
Date: Mon, 29 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759121993
