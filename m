Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E67359A68
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779137434; cv=none; b=kcT1ytCJYikv/bePN7z/3E6gdQpStBePQ6dy6JuByyWsQGlFh0UKO0eCn+1rsseLSLCtFjo0uxgYcdiUudDGcVC9IenZiyk3+W8ZUPgSzwpfE6VlgX9j1N41xji8gRHOsgXeRZ1NK1vEjpS4SqK0nYHAc3AdlYNbYn5udLw/IYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779137434; c=relaxed/simple;
	bh=RAx4GxHwvQLzzc+m5T9E+2plSemoBpsoPqhdfW4vmLw=;
	h=To:Subject:From:Message-Id:Date; b=AylXFf6TcgPaAUmeWnpbVk0E5p/H3eyWFHBjADRWZlVgfNv6eC/FKHdic1V2W/Qwb1YY+GvtTmibBm9VFFob5B5krBSqLiUMDsm1pv61cAqf//QiIsSmNkhDbz4L3+L/GXMIHapBwAthe96XLYi5/7uQfMVQx9jHBkhNr4avfrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnboSJJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnboSJJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA039C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779137433;
	bh=RAx4GxHwvQLzzc+m5T9E+2plSemoBpsoPqhdfW4vmLw=;
	h=To:Subject:From:Date:From;
	b=WnboSJJlUlj/10OnKQZmdDbwV3xOrexRcaz2X1FGCcKFWDC2CM5tzrFpnFo39lAc3
	 uHhcK96SyWWxyLZdtZcZShx9haTuXbLA6D42HtAPIUx76ve6+5llyUKRJW++qN3wBF
	 sTRhl8RVKY2pJ1lV5HRDqJkAqsxJNk1qzGycKtEGwU9n8tcsje5Dv/JtanDI6ztrEu
	 +cUhvHxjG9ABEVq2sHdhul/anXA5XO0nSeVzTxZqcmMQa/giA6vAW0071MHIUkVyt7
	 cd7YRNPRPIE8L+ukzE/R9rJbOeJ09Ec4Vm2chfQ5w51PZDhmiawx92n2qaCuCcXikj
	 UZlvX3B3j6H4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE54CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913743368.11076.14201282737411749654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3bdd25f3609edd4fe08cea9342780ee6fae9da8cac2840f702efa135599deda
Date: Mon, 18 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779137433
