Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE0520323
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729655154; cv=none; b=jMeuZS4HCnD+MKQn2cuuAsxXelJRadjZXrayZK14gXGfjjOrr4rPEvM8FaM3oD6SXjjO2cAQbFC7tqqUf1fDTO+MwpYa2mrYUaYcot4Gl6OVMwtEKY1UyA2YAnZO7H4UD5L56jeSuKviHRXU0/5pmayyoZGNqWdMzMF7uraVkHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729655154; c=relaxed/simple;
	bh=GZ4D+Rv2FvWKlYPLzsdKzlgn14bRkckkLM8ItbtEWUM=;
	h=To:Subject:From:Message-Id:Date; b=FhNJMz78Y5efWEvJRah6tCO6S5V1e0kn9R5J3E/xEOE3aED/VzQQf7/c9V4etBZYzeh1/7Q+K0awamyu77Oc1/vdeyX82EoldEQH3kNkG2BIuTvSkM/1Sw0tQT5fBJTPnijVL/Gn9Rt7ISaNwG+MTtIOMBxblPT1Ps5FBirRUUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kkg1rY+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kkg1rY+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380AC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729655153;
	bh=GZ4D+Rv2FvWKlYPLzsdKzlgn14bRkckkLM8ItbtEWUM=;
	h=To:Subject:From:Date:From;
	b=Kkg1rY+h5nexwDn8a5z1QQR+Yy1GOhfJxFKr/vM/gdc71U8wEWCl7KBsK0niG85HW
	 dOg1Ki+/i9iNvvjxdvgb59lPuui4qTjZJQLSbTGFphtAsecp3YIEKfDvPfKHLr6Rsc
	 u99ou5uuor5Mq9VZ6O3dD9yVDI2zmzltZfQSTBoUDaan3822hG4FiPaK6Z/53Stpk4
	 gEQFBvHHfFKgp5BCz2uDnAC+GUnYTVVtRmhX0lQCXD61iJw6enF6CNC83cPfMCoPd4
	 tpgkxJDD+BvfjFD6cQf0/oey7mYBzy4nRUfr3AGHomwpea50J4ssDQlslpVCXLLwHK
	 wL36bQH8xwrJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D5AD2E010
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172965515360.1743.8658522696301414549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899e453513aaa11c717c237a968e994092392602d87dbe14b68a1fe87f72db8b
Date: Wed, 23 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729655153
