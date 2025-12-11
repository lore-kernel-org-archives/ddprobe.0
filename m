Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57430100A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765448574; cv=none; b=D5h0dzMMmSZbb5DyoLl6hxsqNI1/tiPbJb40nZoPJidLshemVynkKjHwXk+MFlW1w3lFmSNhJF8oQORFaKNnbCV27kNOI65J17MnumXL15B/6thkzyzn5j2PhnSpSNc/iuNv+hToMxqkTgkspjJYtp4R7hUYs22r3gQ39rI6dtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765448574; c=relaxed/simple;
	bh=YCW6KYigcz81i7Rn5dcvel/vAbRA7W6cUtz/kyvW+Sg=;
	h=To:Subject:From:Message-Id:Date; b=Si8MODyNLvlWzBgw/59qX/Qo5TiyfGRwRqm8cAas9p7iPLXRCOmVenYUEJwYVfPOWK5xJh2O4ZUmGd7cc18LzpU5LQUqnPncRA7q23ikfLCtUxZT7WIDitJiELjbEZWWNVVxlC5XwkKAmdWuUD3MAbcb0io4JldtPfJonGCUipM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxZwEzQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxZwEzQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D10AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765448573;
	bh=YCW6KYigcz81i7Rn5dcvel/vAbRA7W6cUtz/kyvW+Sg=;
	h=To:Subject:From:Date:From;
	b=JxZwEzQn6Gy+Dy0bMNfctzEuCnn4BpOm3iznche5KFXYXrP/zo4bfEWmSR3ELoAr1
	 edKcjJw8lxjqfOGaSoRTkUn1c/ZVPEtVHoex1jWAG4FwY2vR9SY+oJp0mTueYuECGf
	 m3SLk+Ez3Y8gLmKxfBftks4Zu/+7Qx6QVrjtOPNjNzruO036qqmpoiWpZMcY6OZAb4
	 W0v/bu6/FhNy++O+J9eYn0PwNgow8v3h2YTU3+JQ11XAuQinHcY57hC9BKvigYlUAW
	 BDEpLxsQ0UZ9DBkNwb5EsQqXoPwWyDngqSG0iKkiwE3oEtY+giQOAQLV5tikb23EY1
	 liay80EoIjIOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6ED41C15
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176544857359.4014.8941534836760417354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71daa6caafb6f9eadd24d80cf7c830a47f490f43627433d6414b8000181af3c6
Date: Thu, 11 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765448573
