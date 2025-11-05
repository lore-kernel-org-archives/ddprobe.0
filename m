Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7C20DD52
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762336194; cv=none; b=Nfq8+GAJ540rvllqN0Ex6SaaKMb333MZl1TyqBQmVzjr2/7qWb0GoHfOldTg8rjErmx7OBKA02yjx3t2y06zQw4MzPUgx6i6RRKtOlXtblDdbfkpaG0KWT6dGi2Kb5HO02oJNHmgZSirf3GrPHutY/KWKTowaU/rxJ4EzjiWflo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762336194; c=relaxed/simple;
	bh=hIqlSYc7hal7nfMqVfO6q96yWIyRfWnPUKj+xDBFEXo=;
	h=To:Subject:From:Message-Id:Date; b=V8SPqlEkiWGVPDd3LaBDkCLsDedGRdadgHgeHAmDCeLmFepL2uxMKKXSrodZSD4qDajyvm2uRIglDw9ry0LCXEHED3bDX70jYyizoWEd6fiertl0f2/HSVPXNvwMt/wrbufI8EpeFkW2Wm7UPw3Sug3kQVy2CERFV0GGy4aFkAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja11CJ5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja11CJ5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B3C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762336193;
	bh=hIqlSYc7hal7nfMqVfO6q96yWIyRfWnPUKj+xDBFEXo=;
	h=To:Subject:From:Date:From;
	b=ja11CJ5lJWViKNmMinv8bQSt6dIGH87OhMoAafNEW/a0X+it1Fiw9SnP+KidTtpXd
	 T9gMvkZ6nBnlsLozolIUi9KxZL4r64NBa2/mXNItHrjGHO6zY2ob8jaqhs99XlYpUU
	 7bzSQUJpv+xA5IOoV2+Vt9vJPC4YGuUQ+/dQlVDeVvD36RofQrx/OXu4u4L9sNhK04
	 V8m1P4dUeYTSPsFZJJEzHDY2Ne1y2ozNUMAeKaWjrsHwXAn4Z7MPb1SHJyUwc9/YKO
	 FyC47CTyZxHGD/QmDj0eIJuhTXC9tiByAUhgx6b4Ih39q8CFoV6+lzPhMmZ1IwZQML
	 YteclwzLR8APw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D52CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233619358.9617.18051390494237573274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db5c8e5257926b7a862c67c8eb256f50bbc9869e6fc68ef65c6d104d1af3f74
Date: Wed, 05 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762336193
