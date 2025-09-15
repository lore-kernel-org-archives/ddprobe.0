Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4766FC5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757913594; cv=none; b=Vh8jRH668sdGEHt1twCqqJmVazLqP3ml3CtaabJIF4vOMFni7Vnlm4w5hJJMhjgtKdeYj22Qf6Uj0D+4v2ukmGdzoVqXWBB9MzdL0DVwdTTzj7WfAQo3s4JRjQcFK90Degcove05M1t3fvfuUC8tWQCFdtZniuu7XaGNLWmR+uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757913594; c=relaxed/simple;
	bh=Tl69aY4vddF6GJeWbauHC9sHAyZH1sNql0c03yYTtTQ=;
	h=To:Subject:From:Message-Id:Date; b=jx7IwBDsZWJYuyxVybwj5F2D8lvw3Is4Ze3PZynfmmUcB2GhgmDMUoGprzuGbYiOhk6TuCvKu6MGCI2kbwPiHI7GC0CiEgq3oIctgKCZQq6F73Q2J12bj6AHXW3OnQdjeS0sVk6acdTmVRBj8vWc6KE22qwAeZGgmduzZMbxi1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEiHikek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEiHikek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBDDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757913593;
	bh=Tl69aY4vddF6GJeWbauHC9sHAyZH1sNql0c03yYTtTQ=;
	h=To:Subject:From:Date:From;
	b=TEiHikek30kwIqADilKFCjEGfBjSvR+ScaAWBSnbqVbKLM2TSd4rQ9HHT0ch7TBjt
	 rWVGDcO/P44xJCTc2UCPGj2SFq89HGzk4bEVMwlXrkTyCkEiGobsX0kypKaRIEaQ1H
	 OSvDrNvjesvtY6KeqscmlZDp49yyQI6XAu8KeWoXWMk1yKnarOYeyrMedknsGdCZxo
	 MzsYW0RuKKYjb95/9Kvo45e9GLysFFZoBBP2aXoovCDlPjirmT9KdF6as5KyRwxR9P
	 i6yD9/eR/ElVO1zGAQSv45GQToZuTLj7r9GgXdEGJkzBxm8kzm63V3vzXKHz82HK4b
	 RUJwn4Obe/jrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB94CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791359357.27043.6905477124463770302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9b9bddab62e38e156360fc2f2dedf06220c3774f8b4aba9ab88b7aeac1cae2
Date: Mon, 15 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757913593
