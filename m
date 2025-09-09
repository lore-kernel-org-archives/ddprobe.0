Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A29DDC3
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757456394; cv=none; b=ijMthX6uZp687ImoxREjIVn1I0SxdoZBe2Qmp8ZPha8L4IMbtML0k0Qr4jEmExsTU0lTCNOuuiC0FmhD2IU4dUoOHRnjy0wMpb7Cqx6nUvxuOIQv3Y+2tSCC+kSmrHPVbNOli2wIB6t9AYDcIGeBcAIZwUcEbRzZ/JtFw+Em4bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757456394; c=relaxed/simple;
	bh=mHEZgKAKM0pyvetWtd7PpZrG13byU+1zOQrng+0ZMKk=;
	h=To:Subject:From:Message-Id:Date; b=PTJf4x6NuK++B7e6LyCxj/P3Vu7T6ABQRgiN25Szi+iuZNru3gXOYqMubC7gOKoco+ZS/krT6ioA2d6dy58Nk2IzB6Reu8RYHtj4frLKiLo2zgYlIix6LoMXZ883P66YOTLIAfX3saxfyWylnoD52bhtoytW480ul7b9ELDsk78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQDu3Me3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQDu3Me3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0E6C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757456393;
	bh=mHEZgKAKM0pyvetWtd7PpZrG13byU+1zOQrng+0ZMKk=;
	h=To:Subject:From:Date:From;
	b=KQDu3Me3CahDEkweEjBiqO3V08/qiGQ0LWa6edfCbbOT70asmyKFzthnC+iG0gYfu
	 Nb+7W5hLIr0WcKaFw3kSJ8lM6cMdWFh8nbTJqiQVABO7ahyBAE2oMbICK4Bc32Uo+u
	 2vnxZeQjebeHBwJ7499z+jeq7cHtLELL7BDE2JJl3ExY7bhtCeIsAATKRARUuzut50
	 A5qP+cyEoDzqIcSa62Kjuhlf72GO0CDACMkOCfEVjmu6/bfcIXYBQo7CIPUpTM08ty
	 3JXAhmsOZE3b5SkKKc0SWkQ1kCsaQjCQMeU9+5V8uvtIhMnr8PxsxS0g0ZI7uHRQZE
	 KzQCfHpWTFtnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFFCAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745639357.18045.12965046026646414028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2ff45d67bcc7a0d187a9ad246d6d34c027fb31ad47cbd8016a42d200296f1e
Date: Tue, 09 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757456393
