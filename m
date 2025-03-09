Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464731F872A
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741543134; cv=none; b=FSOsqXwHxWSYxqQcY2ShVnsMQ+sBAKjDbLr1Ih8+yMtgBxgZc7z16fkxrJQtlFERnlvn18EN1aydusvGJyEJllZ5EXJR8AG2akVM6sxBcHaj6H0JVFI4wKlOiTSunjR1IvhZtsuFLiSMAPeK1aa9P96stjiGxUAl3Wky0970NrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741543134; c=relaxed/simple;
	bh=yKfjgDNOapmt/J0qo2oXUmVEBOTjVOR8tOwmZUa0Hzo=;
	h=To:Subject:From:Message-Id:Date; b=uKZsCedHmf/wmLs85lZpUsjU7aPCNjbHBAHQIV4HESpmVU8JYWz0kdabzcGt6ut8cIkcoOpFE3JR59a7jMAq75SU3N35hdVm206vh+0D1VJBzWp1i8rSCRAee3zHIL6dHU8XUVoZBngHFsh2spDNmUm2PBXVxp8fKsih0fRDxVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZqJe7uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZqJe7uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC628C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741543133;
	bh=yKfjgDNOapmt/J0qo2oXUmVEBOTjVOR8tOwmZUa0Hzo=;
	h=To:Subject:From:Date:From;
	b=OZqJe7ufy+gGHubfV5hWFxucUJHn6Y2FAJ110nJ1ETAjtZ61SjjDRC1IB/kmtqB0o
	 kHLuzU0qjIgcdDZUfjvpqiEpiJc5eWYHcbUVCJ4PbCsgww3cv2VEqQV6H5jLtn2xdj
	 YR+amFs1ygr1jEA2YQhkQQeBxGX2+K9I1s/r2kwDMJMVvcsdZWnuJNEYU0Rq6WU136
	 V2lQADPPC3SNUZn1i3QdfM+v/oZCMStR02LaexdPEkUuyeHV+FtnOsoqEGixAdo86D
	 zCNifCBAsPZ3YhJUl8jjjjLgs+W6qc4MfgNC+lQm7B93HH3JxK3UkL5r/fpujbZI7N
	 CzK34+MDhDCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BC3C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154313365.2232.10999185431617926583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74623ad7c0c5939a99f01574d7a4aa766f3127613bd2385c9fa5f92bb3c3451c
Date: Sun, 09 Mar 2025 17:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741543133
