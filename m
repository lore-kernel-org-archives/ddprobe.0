Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685726B747
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751458794; cv=none; b=SrmEaWRObwAs5ViVPpKLvNbd+jq+by6OwG//mFIsTwshQqDic9SsbW6CYjDDOY4Ppn6IJO8DMaknM1RAhBvD7cVGQHL5yg28Dc2Zrlfe5D5KuYrpRa5REOL+J5LSLXDnxh7l2jGdIoW9YieSWPHeB1SoO/bhbirIzZ7Slb1+pLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751458794; c=relaxed/simple;
	bh=ZWZSCV3TraE9fv60aXzP2uYv9Li4qvdi710hnowpLaE=;
	h=To:Subject:From:Message-Id:Date; b=hovp1Wp3ovI6+nuGJ4vyaOI7vp0l3gBogbmJl6UzHSPBskxElaWHANrdmLLRzi0A1HkadqwP4YGZWJDgQ+IzWYVXbMplRpsQZXpc2aPFYg1vEB+1nzfpil9ExT9flySmU1hHBJGt4nadAdofOsF72aBf1DuT2qDSDUqyuljL33U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaSCQTpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaSCQTpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D180C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751458793;
	bh=ZWZSCV3TraE9fv60aXzP2uYv9Li4qvdi710hnowpLaE=;
	h=To:Subject:From:Date:From;
	b=XaSCQTpEOg0RV0BEOvNeUarJ25LDM5LJY8W2trClwivpyiHnQbOjMsnrfIDBtm62J
	 c0jNw6Qwx97RIKdQTKxEJsOx672dUINGl/c73rcbac9z5pjpisyTklHFBX+C1Y6tat
	 eI8bqUPKYQUTYfB9Qvu5ifM/xWbRHk0Pg7qHkm1AObuWr5NopqaQQ8LOCXRZOQr5e3
	 XMfQLVY4e5iJIo/LX6COwYkeUurZUL0kVzlP0Q51Oi8CrhMaZtbsqZYvvWDZaEuln+
	 sQE3wNCMPKHx1rhB3VSOtBj+BAYPMk+ZZsDzi5bK/eJcn8YRXjFCbKt7cnrzOXJarO
	 c+NCoI5TweeDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F003C8303F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145879357.17469.3434800385507610397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd237a80e15f5031a68cc5d2b70e83db3fb4aba127cd49cf8f24f4d43a332756
Date: Wed, 02 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751458793
