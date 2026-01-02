Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F9B29D287
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767369834; cv=none; b=uMO6TN0XCfppXWsTHQ3BN/hShY0GO/Tx5nYpEj2Td6cRW6xVSn4cZefhTlJ5ueooNQ/Fh9X1VKUssA46qcUTi3CMQeV6NpATV9tWEu/KPxneJKvtZ0cP8+PC/qnSdkeIkO0qBzA+Q1oiZwKzChTMCw1ps+BPTJoVVkD4L6GeSP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767369834; c=relaxed/simple;
	bh=rlShDZ91bsf1HCvklswHlAYzKChUcihyxfYfwXW2kYc=;
	h=To:Subject:From:Message-Id:Date; b=phrajjArz1DYTrZww78gk9zvNZlwFLwwCebJ5aDzBxE/JFAZRGVaGxWSP5+uJ+Kl92IVDBfUVNL6U+LYC7EbVD+JHyaYSadQR0WMKBXMUXjA4oxFKfc2DtqJovy63oKf0Fj96LjVG4sMIfGS8dHNzXj5Hkox60u4AzhPT90dLGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWl5KA+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWl5KA+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A851DC19421
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767369833;
	bh=rlShDZ91bsf1HCvklswHlAYzKChUcihyxfYfwXW2kYc=;
	h=To:Subject:From:Date:From;
	b=fWl5KA+K2QZS3oQxlZmFXO2tBipjHdSwJe8lZqJ9tt8WFwMvpoIiHrIug/LJ/q6Sn
	 k8DkKy5h1Q5+WAP0JHqKOVikYIGK4MhngrXHWX6ckUTadKMvOeyvzYfOTM/UTtejue
	 znXkKEfugsqWkrMMR321t2pq9MHAyP0XZVFVfmkNzRbYhtV0jPp3vPya7SPQMEObqc
	 KcTBGkspczL27bzmo3LT5eow7lwrvxpxdyRn9y0N1sqy6/ZHJB/AXBreJ9nksfh9c/
	 qRmG98omGXN5D6jKp+xX/i2HINjZhpf7hg0isnVAhB0rzdHg9VS2tVIXgPgB3KV5Ka
	 GJ3pjyDEQVSKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975F8FA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736983361.12722.14712168082616642887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972ea6a44f1e5422e685e3cd09ac5b6c1b8b1161fac0666b4dd9dc751578e4e8
Date: Fri, 02 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767369833
