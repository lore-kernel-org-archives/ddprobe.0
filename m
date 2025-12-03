Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CFB21A449
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764725574; cv=none; b=LBombJM3v+NqBEicmhqRoZpteaKeZMULMALYGsYd2INYG9wrbJSt93zzqnkMMshyEZRvYUtrQq2wjRUlkl+MIXnM18aYEm4TE0tKNh/EpWSYLKZ39km+/7U/6pUmGJ/n7+HoMagYN3zRLf/PiQX0XFcmeX0Cxwl+6AOOgeI5tIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764725574; c=relaxed/simple;
	bh=/OhmGfuWUI6IjHpihuGF7xowQAQWVQQIo78CqFgae/4=;
	h=To:Subject:From:Message-Id:Date; b=ftYWqdkUEeF/CIfvbjpCf/nyFST01loqf5iC+y02eb4SuCmPaq455QnRREi1IE+L1sZY6Wfh3RWScIugi1l0zglNzo+YeK77YvyVNSdurE9kLqlpSu9QwFUiFEbYSoYvI4qRa7h/gAFW5t9wC/ArIXgZvMWKKwnrJKdn05B56+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayCplZ1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayCplZ1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E22C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764725573;
	bh=/OhmGfuWUI6IjHpihuGF7xowQAQWVQQIo78CqFgae/4=;
	h=To:Subject:From:Date:From;
	b=ayCplZ1Kl9I1l/qpdDmhd8x74kbUzgmr+1wkT+VKd0sRdbkAD+zKoWgpSqoDbRdNm
	 2dh1+h1tUPdSZfxFMrlBGkgmMUK4gYz8TiuifXvCasQS2/I035+Hc3+FNQCKMmrm3/
	 SiWCiiCM35ViZ8JMDV19Qc0mwXRaqjDYSsZN74LLq789jYg61/vKCqzc6c3NPSOTAH
	 YRSucALCmxnuMAd7mAfD9B9qpeb7Dx/tOBdBinRzat/h/tU0XpxszbHGcp3qjl4o73
	 HPAzI8ddaujAjt+ZNpzShZrmn2fnKgLfVHWjS/MA0SN71wYqI538LBDkG+RzKNUw0R
	 ObN+Frjx9iSSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C8D1268B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472557359.18763.10968549090284167704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa50adca6eecd15a655fd66578f5d547b88affc83e0f0e3ce56d7197a03276f
Date: Wed, 03 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764725573
