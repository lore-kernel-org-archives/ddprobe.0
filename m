Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1535D305960
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757108394; cv=none; b=Mu4/oKsINOhU5wfnGFUd4ZHOt4MNRNOHc90kWuTD1VE8fcI8SkgZhP0+8+SLFxvN6qfLotSV1a+iqnnM4mgYs92a/Ap5+YjtPmoqZb7LxKPAs78imBjsLS8+QKeQtP3SwJJ83nq/Ybie02XcQoWK7RAriNFmwCM6IwFCPtp5iMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757108394; c=relaxed/simple;
	bh=hLK/CaSjSC2IesxzMLI82MwnI88QON+fB4RUwzFNy2Y=;
	h=To:Subject:From:Message-Id:Date; b=s3n0VwUjME8OeJar1MUTa5juyYSz07sQZ92eRhC/0ffwnwwQj0sDHvKOnVdsv+vro+Y2kImSEBDvudutLVJjPJFBWDVUXK7WTItkzbRyTp/YEX1enlF8fmlmGrOS/vu/adK8AuIE7D0JU07dHob+0KuYHeOPY9Lo3iWvsmKU5po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqob+g7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqob+g7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B0AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757108393;
	bh=hLK/CaSjSC2IesxzMLI82MwnI88QON+fB4RUwzFNy2Y=;
	h=To:Subject:From:Date:From;
	b=fqob+g7NyrCdb9Lr0pGhGunMNsVSwNevkFc7STdxDaQZbMIStkBqpftkpEMnfTCiR
	 QfnLJdK6HreLkp7QqB+BPkojf+6xzxiOQfNB/IBLjLj8oEZ/sWmRJQf02I+cDsYki6
	 324T7JgqCEk3SfBIufi/Ip9JypWCMHOc6RBydsKwsR5QIu1OJGYMFeHGAX6+GHgkzv
	 x+0XvlyPv+BpOMChkVbTvuBZj8j/NQ0Hvm1xvJGNCfVlcs9xVvEbuucUm2hSOOWKZy
	 P8fD9IHg+9pjTtTzuU0n3BJN2FsBZCRFehpAfHf+0Jx84V4hC7lh/vJdRgi53CW8tq
	 qbYv3xM4vnxdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B30CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710839360.13809.5445348094464098104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1484bd50d6a7bdd603af0ddc5827166e65c90006d7eddaa66d511abc865da8
Date: Fri, 05 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757108393
