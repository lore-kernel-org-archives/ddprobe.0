Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47341443E58
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785321634; cv=none; b=rRWQ9oZqS5wgOysf1orjkafazxK4ht/gSEW5uclrTTaSEPimYMJwpwkyTbM56bD0BlKJ4jhkGaaT7cPSzA0yNfdLjaTyEH1ehmgO6IAjsqYapgldE9OzNABMPr2aWQliPRLZ1ceQ5WlCA98Qpbptz06P1D7ZKycCzKApQt5HGuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785321634; c=relaxed/simple;
	bh=Kw+/4wgm5Khg6P1GeZi2+kDaRZWoTOLFP4WhFxqUnmk=;
	h=To:Subject:From:Message-Id:Date; b=ZAwBjPHEGpLvxAb/DEnVskv6e0jbYcqpdF0xu9SdjXEV8Pn9hQ7i+5WONMKmDKszI7TEqKDk0K2tjvxfGGwMO0FRu4A0EEANAboGGHglQI+WDbdR3D/MS5wk2qyhc51jEkI3xDy2OVbXeZRWEKxEb5+yStWO0ZxOnOo+6CEOj7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwcpGWKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwcpGWKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF611C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785321633;
	bh=Kw+/4wgm5Khg6P1GeZi2+kDaRZWoTOLFP4WhFxqUnmk=;
	h=To:Subject:From:Date:From;
	b=rwcpGWKkmFtZ2zvCeuFA00GsPWgZss9JSvet1hW2ay6DtofSl1B4ZGXk+7EEETLbK
	 TRZwdQgNF/oCnSogTNVwwiOfPK7lvhhdWttEp688Fx1gFLfmOejTdu1j/mSphpVpY1
	 rKwYPB6rKvnqG7zjwZ15oWdHtwjnvWNzrSS1jH+xOZOQaPHrE3ab/iKr3ZYCDCe2Xd
	 wLaHxetFNJjaMvYriLgkA8vTLe5Cd57VCxcDV1Ec4hl4f3aXdtIqVB6n6RskVe/Np7
	 +G3hXOvJLj7GoZNFQjemg/qowLnhbig3+7Gdng+Ot7MteCsJ7mfWnkAjgG8jbfpVYe
	 0vVc2jywDPcjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BCC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532163369.6167.7042088160124964658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fd67aad578cc722ca8dc0ee3c0822b30338aee3bd377fa8945db4ba7e62cb1
Date: Wed, 29 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785321633
