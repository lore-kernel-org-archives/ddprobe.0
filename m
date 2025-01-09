Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A91215F6E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736417754; cv=none; b=srO8y9C6DVXmSFBYLGFOn/Q31tLg1pfFl8hNRf2YU4eoAqRqS/OAl7ZY1fECPZwzigvbx1NqePOWbNc0WZjCvycN5tdTPQYE6SkFwl+ZaH9i7nuLYQKZBho3iP6W5nc/Uj5+C12tUs9+ecYkxyxpDBrVqo9z/i1qehiU8e6eva0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736417754; c=relaxed/simple;
	bh=cf3sVyLcGDSKwZqSgG01feyB3Nk9D9iQvCfOfGllCRg=;
	h=To:Subject:From:Message-Id:Date; b=n7X0jGuMI4p3jixLd2qZGCsV5MFW1vO3bNOB6KJajYH9yYbG9nkh6rRqXZQZB0iDyzDdmfFKMwM6PUyq8uB6hjuSsZmUIyA6l2LfJc+PXm0KncGTedSbWJ7OFv6CHKWZEnq5Oo32RKcfWn0sqiJU2iyJjbo9cdLlK8GywFzthd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ6eTFRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ6eTFRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04ADC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736417753;
	bh=cf3sVyLcGDSKwZqSgG01feyB3Nk9D9iQvCfOfGllCRg=;
	h=To:Subject:From:Date:From;
	b=LJ6eTFRtPey73k5cIz8q8iDJBef6Y75Loxhi0OOmDbeDY6j2+oacKxRBSXGhju06q
	 rzYxmYlAC64h9fvV+y/GE3+Znez5oWNjvRG9D/VXY8CBL7rSRubcnKC6YOTwIzYnN6
	 PiOWXcoOH1XQlYneQ8+pD4Q3TxJIbMJB/R/f/Za3Y97UbFn1JaDDsTWfr08+0aiYP0
	 P0pTKitcLGg1Z2QZwim7viN82YuR2aXzpQOxYKqnH88mI5vu/hasBFMGqnLImkb2Qi
	 /p1oOEtydAaJ3Vf3W4esVR587E7hiZkkXYYVmYhrDDapT4Ml/dNTRRVDQUHu2ktAj0
	 5lYoJxYnX67rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99910E77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641775361.22032.9136686781136092804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01733a85f0c84e0bc004198b998571c8b0207e73b910a5dc591ac0ea314d017a
Date: Thu, 09 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736417753
