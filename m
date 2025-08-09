Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB46194C86
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754702394; cv=none; b=njnt224NlKBt/wpFHGctfK2gyYsgk6u3K0nPIpX8JjL91Dlume2Cwfv5FCx5zklBDc5PbyJhUsCxwQpiZnT30iIHdtOyHuZqchH6nNpMh7u1T+1UR6yjRNCWq2R0Gtk2IKI/QTZOEJQ0j0upw0hHf6m9wf+5GrYstWMRH5/nMJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754702394; c=relaxed/simple;
	bh=u8UFe0hBKe0qzRsrLK+zJ+4fbiGm/DjwNOXmHuIw7us=;
	h=To:Subject:From:Message-Id:Date; b=Jjcp5InMWcVeY8VNeAsAUXPZsWmC2zYhpogIY2alwcpF/WtlyT6I5ssRAPiuhh+MQSTAJXUKk83JAfczxvOJTP/vVCB3qKc50+f9Z4EolgxwLIJK2i1J+Esw2XTQGIxJ5vlBwrSxcXRo3U27hVtA6y9vfcc62KHuSGI3E/IDBt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5cOZtTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5cOZtTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA9C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754702393;
	bh=u8UFe0hBKe0qzRsrLK+zJ+4fbiGm/DjwNOXmHuIw7us=;
	h=To:Subject:From:Date:From;
	b=W5cOZtTXuqBBmnAVoJcCQdA1SR/CCj7V9BL03JeFXXkg85dPy7NoXfoQyKF/somTe
	 CJ+Dfpu1RLazrFPHZVJ+KTcEq/VQ+z5tTmd1Nn8iUnvTA8ak+hajgXYilkiHYlbWMX
	 JYW3S52HXXeNo3oJ4KEwx2iK2nnmJBA5pBLOzpXLw+ugwpXme7ylYgNXkf+2ZjHEqa
	 spx29LmtrSz80a3rzBhss1rWaWhRB7qyB2CCw5TYoWB7GMHpV4MYq5EqBkbs2dYydA
	 Lyq1Yenu5A87jV5VzOV31nAvoZuedcsHYX9mThpWp8gw/N1AW3rJ3ognqWsVEOkjVc
	 eoTLZwo65DcYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95179C87FDA
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470239358.25963.6202147369601756940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf92108484fb106f119a55c9187d9d7d1648f680c17e1941bfe371c144e7817
Date: Sat, 09 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754702393
