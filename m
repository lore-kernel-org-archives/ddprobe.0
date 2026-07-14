Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DBA39CD03
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784049514; cv=none; b=P9AdRS/C+3GDIMK8BXkHl2dzufU1FqvY+Gbo4JCKWeEqxCxyqp+B3yoSeyZOds/OiCxy76vlTZugeauaALOOvzA5vdmCLRETMPAuPq5SD6xd+66Y0yz1O77TUds7B5yuOmnUitQSl2n2YPvxrTnRse/jClRGaoaWMh4IBnIE7Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784049514; c=relaxed/simple;
	bh=pOrQFZoSV9wU1UHy/ID9+nqUiOOnTOogBGICO9UhTXI=;
	h=To:Subject:From:Message-Id:Date; b=duq6LcDw2YFageX4eRi29wkCTNDGiDD+93iBr6eR4jxzoZtCSjxeYswwhUXPVY/49sNBqJFEIv+IC8/BoFIGCMQ25+8zLEyDweO9pR0tlyTueugbKWdToRgMu3iUVuPPN6qvSq7+ShkLSqphyyTDHFLsnu6Amd+CN1M48GWYf5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkKLbQrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkKLbQrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FA0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784049513;
	bh=pOrQFZoSV9wU1UHy/ID9+nqUiOOnTOogBGICO9UhTXI=;
	h=To:Subject:From:Date:From;
	b=jkKLbQrv6XG351s2df1exLtQkhH9KX96iUug+OwHO45/X9EPNN/UnmMd+veQyC261
	 TAP299jqkjAllGgWYFdbjMXm2+zAjjaljVSe2sOIDFQJmuPTOYOCeLn/ried0GEgQI
	 VXFKLco8x+i0baxE/vEcKHFktEiynC6uNGKsqLz1tAekiwq7YBnNeUMGwjvdJxEqa6
	 dnEnEmS2FthtA6yxQFf4JgKBhkSfPWvTkG9rvKAyL4PLFIO4XQWGWucpGqp0XDn5fW
	 KQOC2fMQXzxOfQRrLmENW2j7wA8vEvCxgSOIymaqbdK6ZqwbvaOiK+gthaBH7erTTR
	 zW9hFeJBudW+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38C6C44508
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404951372.3164.1406091019601923175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7383a6d1beb071351a910f022b5d65b10ca23cef3f1db0ab543656cabb3be307
Date: Tue, 14 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784049513
