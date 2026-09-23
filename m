Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511443B0AEA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790157034; cv=none; b=JQEytwrxFIUVyLYkAm2CnOJ177oHCxEuAHu4H6Pv8eYiP3vU7hfNLZKWzu4xyWRNd8segAR3Rib5iZU+32CJt/8LgRUn5N1tEpiq3lD8HYyVeOPkzjRSzQOrA45RmfjE2qlOxns8tjd8pq3zNNebd4hahUYwXxNZ0+o+t4GVg9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790157034; c=relaxed/simple;
	bh=kJOzQvOXB2baoT1JdoeCKq7FBIfyB29kiuBPjUjDsM0=;
	h=To:Subject:From:Message-Id:Date; b=cEyYDDkSLYkuJYOxP1ONFXhuOJuRCcteily0fGB1j1UOUp33eofW4+SokprRa8I+ckAWnUj92lHrhIBqcf/Bmm05BlIijLGNdkELVawIOSFJXBrDN1RXr3n1FAW++Ku5g0udNavsrPrs23lxBf4j9I1OQws1dPdRVyzfWkI7ir8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnrDzPr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnrDzPr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF63CC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790157033;
	bh=kJOzQvOXB2baoT1JdoeCKq7FBIfyB29kiuBPjUjDsM0=;
	h=To:Subject:From:Date:From;
	b=BnrDzPr5bdbgOckmTyrthy4/NUzVLZt2dvynWQGD60as8C5WliEgWEFb8LQ71nJGZ
	 UQL8/q4LkB9f5I90EI7bv9XWzkUyzeasp7lB6ZEKQOZEJcvWdZnHMbrO1M9MagdS4h
	 K4Yoj7GLuu+d4HvomUrZWV2+P64MgZOAyipBRmgc8MvXjYkP/mYGZ7GzO1Nhm8RbhK
	 PiGdPbDwZUJYUMRkpmIUWhWHjyjv23QUSTRkqLgSsGt3zAqjtYYt5vLrtbpT2cimQc
	 5lrkik8Zle7vh2U21kC9/KglQ08vFgaDkPlPVUbXwcFEJIMa4ZTkh2YGCUK/+GJ43y
	 sP6ij/9Rc8l3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC60C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015703369.8693.11082285218307056635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044e56902e797278505d6d1781e81673294273bd00f69269880faf7392b7dbb6
Date: Wed, 23 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790157033
