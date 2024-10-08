Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A57F1C579B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728430554; cv=none; b=t6wDNVXPcJhC99dSL0J/VXwtTG4oiG5aWWjrntUctzF7ieYqFZ6NZBYZWyPdDC2bNA/s1GhxTTlhYKewbVWEsUt4kjjfrEDi/asKVmyX2xvev6uYBMLoFCfKXbIFTA+NdbqAzgEWi9QiHfqi6aju1ESk10EBCySPDXa78Hs9lHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728430554; c=relaxed/simple;
	bh=i8YUV1QWz6wi3q1OvpKhlG3t0dDaG33Zf8kd81J2yy4=;
	h=To:Subject:From:Message-Id:Date; b=ATPgqURMLRv66GXFWG6OSXMYPr0B44FpsdZiQ6vJ+c8AszHMQf1ZReMjMUBNzT87wCS9MibNnqF/yfAFU70s1sdizbEGbFKj8m1A9lr0PWS6wRh39S9aDtByOO3m4skFWYUPEi1Z3coev+YYsZFxkesR70CMwbyoFlZ7d5JXzmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrWc04RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrWc04RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3965C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728430553;
	bh=i8YUV1QWz6wi3q1OvpKhlG3t0dDaG33Zf8kd81J2yy4=;
	h=To:Subject:From:Date:From;
	b=DrWc04RMLkt7Lodh208qmnjyZSeJcz/IC9TsL+QZmXol6yisdtJhYG4SMCgbDWLD5
	 g1LCqT1qdtE/mur/k18EgGYHuJi/EtG3ihobptVDk7ghn33rZs+yR81Mv8N0CcDRZB
	 lU+FQvtGfsX/HkYehydNGUtWch2q9ziPhuJfXUGIHyP/8Jg+JlBGsF01WzifBv3UIg
	 vYfXsBdRMH7rRkIzuomrLKG9khJhfwLin0p36T9OqCMhwmxhPtDWtBMWrd7IDChdyf
	 PVQC4bMzR3viT2UT+iVcFu17Ps9dC8UQnWj2gBebmlSh7+vzXKMEjGFySSwRhe8lld
	 08gelWMiC2mWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9FCF042D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843055357.16129.7572568209077359191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62f822f9256cb3fa22eb332578be614470379b0a66cdf538f57ff38e64eabe7
Date: Tue, 08 Oct 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728430553
