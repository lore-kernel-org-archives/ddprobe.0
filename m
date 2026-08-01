Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5CC42C4F1
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785583234; cv=none; b=hV/XLsQQlx8983ZWR6R1vnu4gj3jTP/gdBElkBQrE6IvsAUtOIUL3ke9j1q3YgAa7iE1O8vz67KDnw231LPe/o53nb17UiRO6+t35F57a/eFUkPj0NvfytWh3g23hn9EhcrIUTC0EG3Te0F/JHy+sueeTF57c/5b529BtgKgrUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785583234; c=relaxed/simple;
	bh=AgmH4YQZz25t3/tDPFf1SqwAWppmA1S7h7eIaGS1CZc=;
	h=To:Subject:From:Message-Id:Date; b=MCrKi3USfC7Hz2cn9LO7N118DdQXkqXOKU9V1lp1MhbS6Gr04clnuoctOy+hSjXV5tPZWIdhRRDdgJC06ovEvSQaoaGtMfybhZWKv9FQT1jwczGTx9UPPfZBCCwSS0Z4Ot9esMRawcwTtJpJWskyY7B/p4K9g04D5wKmEeCSEhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d37ap1rY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d37ap1rY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF934C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785583233;
	bh=AgmH4YQZz25t3/tDPFf1SqwAWppmA1S7h7eIaGS1CZc=;
	h=To:Subject:From:Date:From;
	b=d37ap1rY9kQ8q526VyZ9kEWbmBiWWiKkGdkEaV4u5m2+AGQ6Q+PpC74bysbNxSOls
	 tn5cdNSTw4gUpI79xtosxxUKbNCwxHxj7MtYiVP/A+NFS4Mk4U9UXVzS97KFM0s7f5
	 gb0HC+azRLECUl0l/Gkq0VQiw/5TqyfkXLQW2Qdaa5Oo4aiO7LKCVKwQW3tNuQA613
	 o2SSZ2cdrgZ0VTj9yBDiMk1xVWg8c7av0NHPwqfqAuIAftWocUemeic1Nf1MqJI8Y2
	 nK1vwSGoFHfZEQ5AuvSG//cSVvQOTE5/b8uEVM9X9xgxvLmQNznaEgorywkwZac/IU
	 tCktGWrgaNnLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7E2C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558323368.3918.9980203283257354545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8000b4ece35dcaf07808b7c3ad6e2be331e80377053fc07e2c37ceb7e6f906eb
Date: Sat, 01 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785583233
