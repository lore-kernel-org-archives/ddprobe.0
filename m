Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D0C283FCF
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777851454; cv=none; b=LLtaBhSv5Les/jdjsUan7S6zu1TZeIXukGuFJiz0R6OJMUohzwnRNi4L5dr7uO8bXWWkltGYUgqu0cfXf6E/TGw/3NQe5BVwljGsUguEJ2lbLX6DIk0/D/Wj41Op4juO6me/IM60ZB1og9rkWBAXlE8XwTQRh03JY4JSS3LqM64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777851454; c=relaxed/simple;
	bh=KKTFiqceNFAJErS+aK9ACFz71JimvipO2m6z0844NEc=;
	h=To:Subject:From:Message-Id:Date; b=llr77EEMavVWzUn37Xmn2i+gUUOyDe7ypN+v60qlz6Lg9+BmOlXbrDPn03ewPO8qTZE/Zh/SqwrTgCwdk3KjwZ2x/Qjr6p/Py8UT0U814rUmoBUoltOqCPVJgYR/t0B8fKiVFqBFz2bgjgTgI99XdYlc4oxQrNQVneEPy1HrRNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbAmRTv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbAmRTv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6A3C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777851453;
	bh=KKTFiqceNFAJErS+aK9ACFz71JimvipO2m6z0844NEc=;
	h=To:Subject:From:Date:From;
	b=WbAmRTv2ySzxIKneGy+fesRShFnPvZpKAcsB8YiSmEB9EbUFPZsd8fyP01iUxsJ4D
	 V/XVhN4itUdUcp1Cvk4P7gsVDvtPQ5bth+Qf20gAYIPi0F3z/s+tuZHeWWcwqOUWlu
	 8ZSXbqBvh59fKPffIb1LWo8o9W2cnRfTVk9eF19gz7UIH7pax6L8+VY4OCSgGmXBV6
	 CCeOPDOLXuFEyzP+qncF9cEbOwgq/cwAR/1FLWlu3UF7u/CHz3J/707Wd+Z1FiWw1R
	 6PU3XZhVt2dmC0DxcREqIjDbletwkt1r4w5rooG2aHUW8lX1bJ+skHxM/wu+o7gDBY
	 ljl6gWKIQHdDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC20CCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785145368.21081.10495490257778971603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74babf8c571bbca257de6368ddc3a317136a931eb98b74822dc2c03cae60f730
Date: Sun, 03 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777851453
