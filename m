Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C75AA35
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721367954; cv=none; b=qvVlqTBcj2Kd09KSLlXTQBAvz1RiJFZHm+69JZSLEr0Qpy4EBAJsm9RdgQWe21vfmyMDN42SRJWKZrZP3ISExkaOWiT4Ot7UKBNj2/H/8CtZOTzHhhFKjyehDpNauIGoROkzZvPH3k04kbHYjWttr73zDEz9HHrvhMyK/2O4qNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721367954; c=relaxed/simple;
	bh=KfKIchK3maZh4zolot7jEf3evjYsIwwtxZkKwu1HTFk=;
	h=To:Subject:From:Message-Id:Date; b=KJSfvo6DLcNORGuMNtODaUzqpvFZNhn7DOgyRqlFA4+6DB3/xuuv1LZFbWBjTbcJSMCbVWmNqzmgyI+Ym8kErJT8IFiBYdMQQZZFRAaHOH1fFeVMV3r3aGTVW8p2PPjxzmjX5nGWB7ltzj0dOf+ObJlbNEym3Iy7ECJJLmThd+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyB5jlHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyB5jlHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2368C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721367953;
	bh=KfKIchK3maZh4zolot7jEf3evjYsIwwtxZkKwu1HTFk=;
	h=To:Subject:From:Date:From;
	b=FyB5jlHAawfhqeSnNTK6jwm9zrZFLS12HsUhv6M0BgawhPT6Oz2edOvLwiuZJ9AnG
	 +jUUQFO+DO0emp68VuEYmFtEO1+ne0mELZU7RtOIoCSmG60Fm2UpJLmnTs0BW1nPop
	 Xjiusaa7sQAVfLTgm4/H0QwQBFJAVNNGjxok4v7opr4sJAbSVw+iiX5R/J0XO2gryW
	 uKiJyp8CCSYrBVuKfsqbIwoCkgNh5fDFCaCarpSxaZQVWm28ZJqPhkOlO1p/uDuzCB
	 rigMUt2wSMrymd1MXfCyzhUFAx+9ATn3luYvYozDVITQprcInc/zQyXmvokBpJ20nD
	 L9cNO8s7/YpaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC3C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136795361.26826.14882375851675196220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb59859a31edc8fc8d50781fca9fdfec55217ae5c4fbe9d059c870bd7fa3bfda
Date: Fri, 19 Jul 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721367953
