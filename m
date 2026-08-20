Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D848314A86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787190034; cv=none; b=lX1lNhCKLIkorbqJFObnyY2xI4rgD0gDRI+Pt6az3sc5GntLBBuumHoKyUAv40EnlRnidRIs6EOT5QSaet6mGCd982HftzMZU9Ge2WV87MlscCrnmCQg9qkNP5UsrnH+8OEW3RbE3Opm14QB3I3hgPvykr48NnlbJuJ97b37HyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787190034; c=relaxed/simple;
	bh=cCFef7ibHrSUSjrYFZKhwaA930FHs9owqfx+NBt15bk=;
	h=To:Subject:From:Message-Id:Date; b=MjTew5BOSRu03cvYbyLf7SM2lqQwkPNxcZGvkyE9uBIDWlOkkSObHfQl/lbu551b+X0LvfidyEmjoeA+deeTFRHYCil34WlVJxk2i4YSxy8D1Mg/vYsr4ifZAd9iW3gr17GDE5SwGkurrsQSbaG5qM+lWcqJuYj02Cka2MHTZIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRoYtb1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRoYtb1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F04C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787190033;
	bh=cCFef7ibHrSUSjrYFZKhwaA930FHs9owqfx+NBt15bk=;
	h=To:Subject:From:Date:From;
	b=oRoYtb1TXgc1R6xTcsIidVDkGPuB6hUS6jCBHfV7ec4iT6wR6PL2JaqKzgLYA9T4z
	 RN23Cb3jSDQffeKcVjnbEWoxh/cT/UM0BLbtddtqY6QQY/oxh3O8MSMKonHNCERbOY
	 nQFPvgL45iR6eAp2Qk65ydocjQ/Ko3fFd0AdVxt+UOv8blqYfoI6kGIFDjQR01MVYf
	 CKG3LY9GVnW3nB0howMwD+1FgV4VbI+KkMBWyZU4Zcfj4dmY9nXjdP8EO6XxXMgls/
	 eBtMqfErKQLM5EMJcXyylPR/OkwQm/P3N8xRZRaPaGYSuKU2JIaG0VTWOtxo/7vYJk
	 LTs+evDBDYxew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB871C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719003369.2568.14724984958873271025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced2be8d07894c618f91d443b0371aeb5789f20fb24861c7282bc99c42f8d8e5
Date: Thu, 20 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787190033
