Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D82835E1C0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784972434; cv=none; b=PpQp6KOyQM4KgVFNPTfNHFQ2q4IFcatd4F3acx2zo3tdpP5BfxP+8s/K+BEFakkBhP7kvojZEEcMS+wzG7puFtXVcs0cm3jQiqhx0/2GZ1eQXDK0xG7hem3pOuvprUol7UP39h+gq1S0vRIn8YxTUCZ7PcdajVZ81trKH4ERcME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784972434; c=relaxed/simple;
	bh=PcsyhzDjrQ7vjXxUbxOR3kzSJ/LTyJYq8LVuQ+QKHCA=;
	h=To:Subject:From:Message-Id:Date; b=Yj0qKlaFqDl98NkB/We4iR0kZOJ/FeBkT+GDadjkU/e5p0DNq5MEkT9bCuxzEqXPDu6ieOjrKkcqFC38dKkcA+iCf2ov9IkZuXL1grurjJUQ80GfNvV67IMNBF9XlBFz4HPMpNhLKyNLWfeQ+jhnl/+CjtJfCVamb9MGfOF8sgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7j5T2yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7j5T2yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15F3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784972433;
	bh=PcsyhzDjrQ7vjXxUbxOR3kzSJ/LTyJYq8LVuQ+QKHCA=;
	h=To:Subject:From:Date:From;
	b=G7j5T2ykgvCKtliIhgG20dGryVvt026fZcUVPCAU3o61btytL4hjqGI0ip4Obtuss
	 5nhZJvQlZDBgDXJsNFfWYwJ/H5EIX+TI78xnEp7sQWiayD0fSw8/sItWzuKAbmOFi1
	 wjlG1a0sJWZ1Qlbg6TCZpAjY/T9XX+3V2bqniQTRNR9abUr/OAgF2IoOSmh9fHwUST
	 EKPYCw9oCUjJn1RQI3MHnBQmJdPHHYNl3vpfmnGW1nE2O4nHesBCNPlk0PIxtVJyXr
	 +kvxW0vTHY0nP6SsClMWDzjOUhknPgyicL3BO2fme8sHghmuia03mKqlNdMulY4hpz
	 0iZUf0ljYoaqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF375C53209
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497243368.2317.9670712528183759854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7042befa93778505e6eeadbbb84b2a67bb34b26beda77725ee99760483533e82
Date: Sat, 25 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784972433
