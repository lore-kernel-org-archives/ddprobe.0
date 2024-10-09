Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4071C1A286D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728500754; cv=none; b=s9oMqLWTyL8Iyrf0ionJ3sTpdJfQ2Ojomc7ZJQiIs7fi6HTDcAw9N78J3V7EgFs9jdB9z3knW/ae5QimI+nozyz7AevMJrXNp029x9VCTdJ981a8XTRiY7iBTcRMK/aX4+5RKo5IoRogHxxfWqjtz7f1XANHnbOUUdY3JnOLdII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728500754; c=relaxed/simple;
	bh=neuEXosOmGsDHbMUKNCuCOh+L3gcqmHTaufVqHCVKYM=;
	h=To:Subject:From:Message-Id:Date; b=DZ9fc8lTyqQWVO2B5kGN0Wl1j1HOqlcwaZE+GYwNXMFHBwxenyrsVcyyJ6UmosTpdrP++wuQbjsEcJbvXyaJxGT/LFyKZisF3VtriLvoorhHykthm9SaCzAIa/8maagm5SJboNc2aI60b4qkrMwrFzLFD/MIrHtSGiM6tpyaU8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnLCzSAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnLCzSAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B805BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728500753;
	bh=neuEXosOmGsDHbMUKNCuCOh+L3gcqmHTaufVqHCVKYM=;
	h=To:Subject:From:Date:From;
	b=QnLCzSAAvRjCGi+VvuM0qf7MYv8qgS0xTsMzaKYE9yaMEQ9yVFSwc2/LE8/34efDS
	 VmZVBlrItADJYzcviZrdM1p/Hj9dPP0dgRcViHLgV1wY15S8t9sbbutmj/oo4h/P93
	 pCcotamDuScPJL0sw09rstcGBZ+gM2VTc88tOzeKUbNIV58Pdc8ytgxrALLy/DgfjP
	 XTg4ywJ3rvjqVWbbvAT3jmBpJCAP5BP9mtBiEKcQpjildL8Q/v/qnJXtuRzyQrZQe5
	 Pra+FDrBueZBXjML0V/+45vFbNVjdz/aZ7Zel9ndhMoUWNCYJpiBVx83vhDntg6F72
	 FpSWri5TQpRJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27D1CEE342
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850075365.3600.15046312630189904571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003b22b2fbb1aa7cd19645bc0b1441990cfe53ca301108b14743d9b8a723bce9
Date: Wed, 09 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728500753
