Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC4433F591
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781899594; cv=none; b=ehDnr9zNnajMG6vu3t1tzhqVj6D6Si75gp0lwek7CERCayj55HKMdbut35QON6HD7Whf0ylJytQ5z5CEym/RCXjm3QXrQlCDXVJR/kdAEtjNIOd0ImcxCss/h4tc1BXoXwvs6Q8Xlkzza+KCx1g7unSH2Uxmx7ieEYYUtbEBLG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781899594; c=relaxed/simple;
	bh=bF+52uU8huqfMQKT63CRxBCcApzjT2f/YxutOi19eEw=;
	h=To:Subject:From:Message-Id:Date; b=C74TNlxqiFY8HOqqWEuH3FMOvKmyXGTzpG5bleL1bRj8+qZSJDI150PZkSFSqmeq/d18iOQYEAfNV15BevqMQGWviVA3BtXaZToXntu6MUyYbl0QnbdpJK6nwuX2F5mXsxR/QrHNkTcGyFXQsJU0VCe+SCIdC+Ggfb54a2DWLU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMKAr14j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMKAr14j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE15C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781899593;
	bh=bF+52uU8huqfMQKT63CRxBCcApzjT2f/YxutOi19eEw=;
	h=To:Subject:From:Date:From;
	b=HMKAr14jVk8cGVKHm28txZQmaX1QtO5WeMoonjKA/UWyRnWibK9ofL+gB5ZK6gOzO
	 cQjRW44UYc5AZJyYe+c5n/UfU4hyM+thUgXZoRN/chd7zi4Mcib7AbyzcXEPPVI9N3
	 gaq/ZY5MHVLthLaYPqKUlEwesZcWdHSov31p1B6yvM01aqjHY1009MOnPeFlrXTn6a
	 eV1wYXkurAVAdyOUv3zDyaoFmxgfOOSlwFHhCMuKlSZsWrf52ZvSA83CGn8xqaOYGa
	 5OANrY7V/A+rJ/CeD8g+27fsvsupmbcDlPvoxSE1HRVuuawbuCwZr1Zz8qwUuAC1tR
	 5J11P2m1MjP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D2CCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189959369.16997.14557288636653194419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db7d1476128bd6f5d710c6d4f958521ce14ed65037c19eb4e1e42961b5ae69d
Date: Fri, 19 Jun 2026 20:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781899593
