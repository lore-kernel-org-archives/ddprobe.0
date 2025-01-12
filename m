Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D331B4135
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736696154; cv=none; b=soa6bnzI/cYyF9Vu49Lqfdd8AvWvYkIRuzNselSGW90rgFrOW5ik40bVj4JpymZB4c2gxEYrC7GWnMGN4Y6JiSlgbZES2F6ffp/7g2OFyzagK3Jd2oul65W1IIyr9MDM8Gz0EmCdmbzxW5LgVFoK/5QWAONw2fpI9jDrg33JYUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736696154; c=relaxed/simple;
	bh=LFzC8JRDodlgaTKkfUsf2HwD2wvlwKKSQGvUO0C6xDg=;
	h=To:Subject:From:Message-Id:Date; b=dc3agromNApfgM+9TYyG21rhsphjH2NPSjXHBuLC+u+iOTvRkcmQoTFNVVmw5dvLjvia7H5T5b92kOrJBZ2F6gCY4+orhGmpTzNekonam1Whb9/XlgFU++bJcv2Q//hxXCC43YJdzjKjMy73ByhBiFAf+ZRC/6rr7AFZgtxo018=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UnIzey5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnIzey5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF835C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736696153;
	bh=LFzC8JRDodlgaTKkfUsf2HwD2wvlwKKSQGvUO0C6xDg=;
	h=To:Subject:From:Date:From;
	b=UnIzey5H1R+4njdtIN9d+wDrB1HZvWbHeCcpJ2M2VjQR/F6E8d/aT43Idq7CeuV00
	 eQ+ESZEDzVo1gvxviqd0lauVcmK4a87F/Nhq4R/HGRoQECVHweXQJkTRnPyXk/815G
	 dLHe2MuZeZcG+qC1ItfYCMgr/kQIIvQO4RtKmDG8UU2wf6CKWdc4ksq/r427C2foU9
	 FdcgcN0o7bBSrcwKQcvN8sFKNMQCdzgx3XpgnSLt/340zDegXuXcKQZ2EAuByeNdtc
	 EKK3eNneG3dDCaJgHKIB/x9eMwnAr0DIX0qQSA5hMpy6lAkwOikbXu/FW6hzQnHUjd
	 9ly82O/FMDZLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1BDE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669615362.22294.16291508790637026266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4fe6d9b3b94e1712cd318291e93ca808bbef9b6c795c755442b44bbab790d7
Date: Sun, 12 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736696153
