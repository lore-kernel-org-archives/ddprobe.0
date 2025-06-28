Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199351C8630
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751153394; cv=none; b=Ey3egpX4fNOo6+K08V5USG4vLm96FfdOJ3p5yrpw56XEFlMxx05MWlsOYSB78DCuS6y7faCL23QGe2pYsPVoG3rombMMgI3tJ6NsTwAHpD1Jq75NFeF0plYk5nzpXtQnxfoSDXUQJyKHQHUCCpEDH763itMvkDJpQjC1DtdG2IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751153394; c=relaxed/simple;
	bh=ramxACxbiuhPfLE7HMAcwveswi6Nv4HlHsj/z/u4BGA=;
	h=To:Subject:From:Message-Id:Date; b=PLQwgEu/1DNeYIM3NrIO3hbseSCMDHPe3fWgxjRNBVTMaWW4hvp53SPASEYVraQGz5Ec567uQ+ZewvR6kkQR4X6i3zZ1K2dS9YwY5aFJe/CFR/2tOntdq0o0UNb77qNemAqafiVOSt2+GK9jy6Tb9n6bJJOkm3k+7BBIZCtrVpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOxvhrqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOxvhrqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D73C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751153393;
	bh=ramxACxbiuhPfLE7HMAcwveswi6Nv4HlHsj/z/u4BGA=;
	h=To:Subject:From:Date:From;
	b=cOxvhrqshgztqZNGR/5YHdhoJ3a0Wo9F42FqLm7gi6tQsoly6WZnMM5ZsTwOgtJzb
	 Y26enbh82+M7TF+vJHu7szQzRaAbytWOvCSIhnRICcdSdAcg+A67RgO85B0eWbG0dZ
	 pBqRsVaP9oWOMwWM2LS3uc56jQvil9kplH5NRX3ca4orGLQv2jPP2eK6uLfpgCtU8Q
	 1Oafto65Dgc9cN73vbJzCnwbFWq/Zwi5wMQBUzuG9caBzxdtz07MC3/j85IsePNiVw
	 n0Qidg5eBejAZpVbx07J66rvhsAv/W7jlrQwXkpXRF/ejePeuaMq5XozhNLA7qQD2H
	 M9TeoWRShFSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92230C83013
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115339357.19227.14372116873642301302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4405a90baca92c1cddd67711485f542fa1412b70ad3cb12e45b24d357f9cc52
Date: Sat, 28 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751153393
