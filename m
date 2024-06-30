Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B76F6EB4A
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719786263; cv=none; b=m3XY0cWfK65TW8K+0NrTZvHwS+ywWQUDtkG8Ej2ng6gyndc0eec2JSKKcWxfQ5+Sqi9XXd39qJyBl63PzJcRt8vEvxAneGT8nsdkA9sBpY3Z/10q8l7LLAQNz+3fomyDm+O+fVvcDdcrHd6LdOtXygLM2YeGntzOhOtkRwYxfJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719786263; c=relaxed/simple;
	bh=2fS/tOYrJBWeJOBe0CptmdhLaBUKQhZFA36O/SL51YU=;
	h=To:Subject:From:Message-Id:Date; b=Xx5WhbYkerR5SIdm4MdTtreX8S8SqwtCh6wTQqjVOX2hKNcPciZOEl/zQG4p7x9IQ2zFLbQsChfYsfi368KdRFBFK0pJfKzauawL/UyB1hT0Mz4ERwPT/CZziz/CaiaAI1eDNUhOD3G557P6EAPL+V8GGtXmg1QiQIks9YBVyOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwiY3wwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwiY3wwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65CFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719786262;
	bh=2fS/tOYrJBWeJOBe0CptmdhLaBUKQhZFA36O/SL51YU=;
	h=To:Subject:From:Date:From;
	b=hwiY3wwmyQPG/O1hM5495uiKV2mI8UwIIQ8GPbb78nbyYQVFZok72dEXO+90X8QS0
	 4HU8i8WpFYox2FUFZ8GmkSRFR7eFlgYZznGL3sfq5eCQXmp4dCXGl+fK6XnPYNkDow
	 jjOfW9ANHXKebF6XLh23bGGCwUHHDX9ujogBd1qTk/uSP9y0AubVzsYWoSnx3zEBLV
	 nVwhK4Z7cHhi86kKGJSPTsun2syBgehNcSaQWBSO8ID/JFdNnFBR+2bQn4QIyJ1Ebr
	 JI7YEylMkc3w0ipMX4WzrUIzN6YWkinSq8TmOKLtVk3/VUEMF67ub7CyTndmGNoWj3
	 G1L2jDkbqrvhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26DBC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978626278.3141.1909086137656853003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a787f0b406e7f43110f0fcf0ef524e0887866ee69f36c778931aa14a42dbb25
Date: Sun, 30 Jun 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719786262
