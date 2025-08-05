Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DE824E4C4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754438393; cv=none; b=imCgBOENMq1986i08Xw/grBTnttAN1c54314vywIPvPQjwkAR/16NgeV7YgfKwi02vbmPReOlqnmhg8v2Sd65iHDzqWJpCQWxr6sjvdXa1ScvLWSuJb1IrNeYIkPKHAmiDZCuv8Z70iqEilBHIQjtRnLQZUTCyjIdzh9Vts/R0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754438393; c=relaxed/simple;
	bh=fU7ROLqyXAp1cnqwPfImyxEFgw7OtaNUiEZ3lrfD0fk=;
	h=To:Subject:From:Message-Id:Date; b=rfkWypicGGfNXuA0TJzhuPdTWngqt7GfM+JHSZvzj6ToqsB51+PoVxEuKJkAqsOx8/b5ni2clDfl7Iyuh8bgGmfBCjnYxsXPO3gcaETrxrvPEr9HmDyPIIsjjGaIBn3ACFPKm3q2vp6jJFKEIdar/ePawM4MnX0L8rijJ6tmZSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTZhk56u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTZhk56u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A546DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754438393;
	bh=fU7ROLqyXAp1cnqwPfImyxEFgw7OtaNUiEZ3lrfD0fk=;
	h=To:Subject:From:Date:From;
	b=tTZhk56ubiV68YxfbEG/vJ20TN5kwy4rJZwvIIsVRh2R78vh0Ogt8ffqSSHgs5FM/
	 bJQVaMRLY691ZHwd8pe7pAyCCwlGru1WqaXAunpfKdJQeqK8nD5q7Sq4h/NDhVLPhg
	 etwsFdchAuap4txXYtA/bruulFNjHKbAhDs5gpl6IUp2asnX7GUqD9PX91q/NeDYRf
	 mKiz7N2+E/ET73Aq2IIIJ0gePFp0AHmJgVD3pOk/0b4raRcytKpiB1yO/Sd8Hki/my
	 j+45i908CKmwamNA1iq/FgtKcE2XOrhY0Sn/jTJQ7sB/1c6dq8QZDBRyG5CG1wZ6cr
	 qQOKW4re4xjgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F3C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443839357.8141.13032822061864231740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa152f78267b2f1317aab8375bdc70d065fd88ae950c29db15cb446aa0f92c6
Date: Tue, 05 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754438393
