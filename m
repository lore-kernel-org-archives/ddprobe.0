Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D131A2C29
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738274154; cv=none; b=e66Vn58/OaiHTGxlGQJCWhPdI7aYlTwnz9kdje6xB5NFucBni9EBTH+heYCD0zc9njZLvpzJeVSwsXwiGlYsDc+Y8jByE37CpcR7GQSCTtD3VhsokPW2Gf/T67aFrxFDfaMjAmNj4lLG4ikQmhFxCW2Oshc36fkYb+8vmUMG6gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738274154; c=relaxed/simple;
	bh=kjPrWa3DSF2SYyNLsnoKZnthiY6eJMBqk2qaZvD+orc=;
	h=To:Subject:From:Message-Id:Date; b=TuMs2fCyKF28jeit1wWHxDmZLVe0GVFgtYkmZiOuMCkz/qo7VgpkWqAVQyZBi6lO2HDKjy5UEwb+Za0VlDhT77Ui6S4LaZSlfHHka19TtCqBuOYSw25OGjGztMnV30YoD1tc/67yylWLgHRyFbo5GeapkohBoA5k+y7haR/axiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oG12bwUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG12bwUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B143AC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738274153;
	bh=kjPrWa3DSF2SYyNLsnoKZnthiY6eJMBqk2qaZvD+orc=;
	h=To:Subject:From:Date:From;
	b=oG12bwUxJpBQG6EfNSj5kjqViEyCoJ3QsKrmFooXYTDiJfjA2bk1i4D9jXs/Lqqf3
	 syxwoX+9lG+NNyONpxI9mOMzIcA3yLrq/O0ViuQL4Yttl1k//tC2+GtsfbZ96iQc4c
	 tmv0n8uAGbi4BF62WrP1YzOm1IEwXQrYJwhvbhy7oMPUME7088iqUOIkvf9Th/mgrQ
	 42i3kaRDJn4t5qrb5gprwvHB7SMQL7DYv+ULGHR1ma7TuZlGeD3YVLucHffX65YUAL
	 WsGOnxJ+4mVhDxNX5l+ddgnRnU5tr0X7PwP8io2V+2eohEgPmCm/w1gylxWaPXynLC
	 ZKZHV52Givhkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3F2C02193
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827415362.18991.6560839592416577698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797a67994b61a5c355de0547a03a418a5b8b961d1575d26fb9cab3ce31431598
Date: Thu, 30 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738274153
