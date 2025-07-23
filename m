Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE66F1E3DD7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753286393; cv=none; b=s3BhUUgC1UO3+y8mf9gh4NsmQqX1wuVXTsCCbqDWqlgIAX8g7V4Eyo12Jm8Zu4y09L4KWzhZZM4bXZOVoBkeXH7xMjBQUFlcd8uTugcBm2pKxf3m5RKb4COxuzqCuuDLSiLG2o0HMOLJDpdw2BgG+47HTEPxvcWBEuCL2KBDU2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753286393; c=relaxed/simple;
	bh=y3DDhz6+YGaN92BwZaGsIPAishxTXdk+0gml/mdINLc=;
	h=To:Subject:From:Message-Id:Date; b=Qjb+DHzR2LkucBtC1lqf0hYGQxxfIN+XqUQ0WBqfShDtI5pPEUIfeHve4MQzXzeO4hMsRURf1PGyQPjFgLHscYtts2+OGRDnsRg1//KNcCVLAYi7opNaX5gV6lOsoQKqVBYTVfMNVa/s6wT3XvyKNifFxWR9d3THuGWEIZKrOhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7q0bB+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7q0bB+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F68C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753286393;
	bh=y3DDhz6+YGaN92BwZaGsIPAishxTXdk+0gml/mdINLc=;
	h=To:Subject:From:Date:From;
	b=o7q0bB+aPJMdkB608HtZGooFO7qs2oXiquiiEBacFHw8zivnYH69lcxEXs6uTFAyL
	 xmjEdT7lJ+n+SPKq+IrrKvM72+OTJpb/UolU0SSzvoLUImKbU7WwB9NYmB/7tpbD1h
	 aSjNRFl1yBqLGKYpTNa5/V35bTxzvdMzqgLimBIAjdh4eY2xMhBfvhXYOfTyUldtdC
	 GrfZ5rBBUXdF6Wc0CjiC8Gxv5Vka8Qpg6oReyc3K5W9oEGa5dbmVpYpNRbgRT7OOqC
	 5iLKxLuwKfjossHMUr3fmmSrDQ3RTtToxK7xQFFW2/8H0QbJ7ikFEqe94GvnltIw27
	 ie/XE6GM/tlzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD94C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328639358.20388.1775112934144007027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e3cf0081ba873a729e20b2bb931044878cb426a8732989ab28b9081adc6558
Date: Wed, 23 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753286393
