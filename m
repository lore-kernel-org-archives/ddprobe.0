Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D22D2C6B3
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712998763; cv=none; b=ryMJve2x7v8Pseune0XcP6EBxGjTiebDEkx1Wu69vZ4l5gBYPTDYBuC2GJm0po0jN5C6/bDTtk+Igpx906jY1eAiWTu8psrgJ9D2UWar3JaBkPmiJyp5SCmujeYrgrZdldoJCgHxnTx0mW9qbKdkzh2+bno/n2vjH/JlCXOLv7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712998763; c=relaxed/simple;
	bh=OUPnh/mE8hKPK9A9RK5im0j516XwdXH1o6Gs8ZWOvFo=;
	h=To:Subject:From:Message-Id:Date; b=hjhjwDHUuuRy8PfdgaGdkjgIjBTTVJJKyYg4RM0phCIE8yXPPTlSv9jWTjtzrEXZyORqVnyCzoJ/Hd2ybM+Fmi/s9Lp8S+w8r0mU+X2FGF/XWODiZPCqtpSXB7ZaYmD7YUbyVBPMq9C6uD6Dxhw6Gyi7k9yi8UKxVXoQAhlwhaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lbiaave1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lbiaave1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D913EC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712998762;
	bh=OUPnh/mE8hKPK9A9RK5im0j516XwdXH1o6Gs8ZWOvFo=;
	h=To:Subject:From:Date:From;
	b=Lbiaave14jeAcPCVDeNBMpVERgFM0K8GVhWSsURNxs7ZHaTYypVKru0G3cisA2NNf
	 1AE6iv9PkBuCapVBBDsSoNisIZZ30WPH6IgMVUSKD9Q9K8dtwK3MuHybcmpNWZp2os
	 SNzrkGYQEESqkmqfLEOR4PG67lDsoHIaSYkuyhifUTl7lKXBiv5qxYF06TyjKKt12l
	 cpLCfKpeHg5W9fe+/3yaHhEzwtp1NSmpYDcnVFOJNh68hcbGQ91J8Vz1legAyamJIb
	 5WY6M/YOPTEMBAXFULPE/7tFLMPy8zlZKHmgo/SjJ5G1KnYSaydBo/u+AE0abHkUCQ
	 vDlWR/ZGI2KPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C412BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 08:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299876276.14586.2577880928469976061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43363e90488f5cc3b41d5982e14fc94b2212676bfd22a468cd0668d81317472a
Date: Sat, 13 Apr 2024 08:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712998762
