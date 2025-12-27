Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D57288AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766805234; cv=none; b=CaKCXpn9EOH/ckZku3FVC6ceCKttxs8AcuYM6UKVCE2vXlZYqMhJSFo/Ha0G+5cFISaa7a4twMeK7qGaVudVeDwNTnT9F6Y4YbR1aSL4iWxwL/61d4i0R3bq3ZMBjDNpQiSOikMiY3dzfjvXxT22orbpPo93xW5jK15yh5U6CXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766805234; c=relaxed/simple;
	bh=bTuZkuWoZ6AwdME8g2/A4+6yUn4ARJh+GFZRxMin6jU=;
	h=To:Subject:From:Message-Id:Date; b=HDLfXl3XSJATLY/1X6tjaJkcio1sV0CYGvJdsT4WmigfZrUDvdx8mkcCy6KxRL4zQq8VqLBrcmRhXMMwfGahhh88mkjMzrb8ti0m4cUTmnSxRI19+AcgBTrrk5T/bTXhbH+n37NZL6PMjEe/PRrYNmKYEB4P/J6BV4SmHobFMeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dgTzm6of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dgTzm6of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A900CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766805233;
	bh=bTuZkuWoZ6AwdME8g2/A4+6yUn4ARJh+GFZRxMin6jU=;
	h=To:Subject:From:Date:From;
	b=dgTzm6ofgXRIhp/iZSJmr5asnoJu1Yy7i73oFHgWkHQn9SBm/VUgC9JfWV6NYoCd3
	 FOCH7m94DZ2L4L+l7oRchxbTMKHHB+nhT+haVPixozaC2nCHsdHwENzIVTmkFsO3Ns
	 kZMZomxKVg5A2Qgtg8ymJtzJKYvDymeoJ/HYBCcFh65GJXsiPdEQQow6m5/iEXdif9
	 MvySTIgsbnuCwojGWfQ3+3X65L33bWDVIXaglsdI8EDo/3kemxJ0JlGwjn0lLW1I6G
	 Rc8pSFBFpZ74mSlCdz7gaam1UXDZ4ek9B8NJIkDKAAoHg6YmeSCe6rmUH6CGeRJLn4
	 TUz0y5dQ+830w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96932E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680523358.29545.2523256652296201486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbe6f4385259d7aa74a671c0b8d522c1945511d00beaf15af6456fc32a3393e
Date: Sat, 27 Dec 2025 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766805233
