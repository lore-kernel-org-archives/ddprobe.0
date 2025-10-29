Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1713F359704
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761767394; cv=none; b=LWPJIKgap6/XjpJ3BGrmXLvS9qKZdEN6ywBzA9COi5YyupPON3WCMMQ63SOpUNdPmCdoLyiY2qMqBrK36JPnOFNgymeFORkbpWt3YTZw6na2Qhmh/3vk9GVisd/qJxUcSdDdpmto0kdSOt1kszuLfwVaYt1tEycNQaYPMMIx/MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761767394; c=relaxed/simple;
	bh=Fg5q7j3rYn4nqGiYRY5wpfoMY05iO+RhPtrWVruOwF4=;
	h=To:Subject:From:Message-Id:Date; b=XAtln2Ox/WM+y2zfFZVeByWsc2WM7rx/AcDNzxCNL6w5UZ4XFbelDvv3Zq3dlWXhri61BQJEfWPguCO5kyLHU39RICF450ZIEtIWX82JJz67phcgeGbMSj8oGSFelcsyWt4gKYIPFT8QG92NQKxn1V2jYM2zW9QZzdgPy5FIDSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBnOFoFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBnOFoFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB45DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761767393;
	bh=Fg5q7j3rYn4nqGiYRY5wpfoMY05iO+RhPtrWVruOwF4=;
	h=To:Subject:From:Date:From;
	b=MBnOFoFxbEbQ1vEoKuNwOw6jgkcStswPHypWKoomvXM1kuVi3YTW+e4QQwt7r5Xmg
	 pO32/NpySHzQxg64c8tf89BK/1dVYmxme28IZ+CL+Gj7VlPT4HcIlmY3NMfw7Ne47z
	 kIYlAOW7YleKc5b8rQllJV6Hk146EGt7IRcToBL7YoH+6aOzMNBRrGJM/q33qhNphw
	 S5+o3HfI8TodyW0D8r1DGes7pmkBLQlAV4wgJuUUQ/QBrLEGHepSRFBVdPDMXIkI2q
	 FpOmE+1XZ6s3+zQ5JZQCx0ufGkv4A6QSpp0Pg8CQQvcjJ8q0TpxDC679pN8H4mDoxm
	 3bMettiVDcKnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972ABCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176739361.905.12807972724508297871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff558a9423a85158a77a370a9aa816da87076b0d8805d4e1b26f77cd2e94f99
Date: Wed, 29 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761767393
