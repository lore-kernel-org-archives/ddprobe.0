Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B501EF01
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745159994; cv=none; b=KgNDTvJBmBjkbtVTg6B62w3GQsQ4+Flq1aAWmm//kg6T3y7l0i6itNY3aLRfvF8MICYfmiTAkFd6/wpF22u8eFtkialBziB6Z2FqawRGNRkT8VTsIMJObGTyDyh6qDHerM1rlZuUeiWnthe31bHqNSnToyo7SanUMaJDxYaBw20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745159994; c=relaxed/simple;
	bh=eFxCUoVZoVrHscHtYi+1WWax43Rk8l1rWMQhz5mi7UA=;
	h=To:Subject:From:Message-Id:Date; b=FFmitwkaIZpi1ViWnNFt9HYO7TWzH0T3/7AIgbYA9yQ3UEzLaQlZGGXokN1JVzjqHDunUEfXEzJe8CcVK+TLXhnuWKvX89fWZa446BTvHri6xh3nn9FyJYVPJXLJhsKhM2UQqaOMZ46yXJfe+PI93Ftt0WmsJKi0TNaSLvPI+18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCetWNTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCetWNTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4BCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745159993;
	bh=eFxCUoVZoVrHscHtYi+1WWax43Rk8l1rWMQhz5mi7UA=;
	h=To:Subject:From:Date:From;
	b=HCetWNTjzeKOCme1qJEgtFxtcNho7NPp2shAX15nHQhdE0j8Vhc3EBHG9bkgDzYIS
	 ZpG27lv/8fqIIT2bP8/MhjqvspbLfSQKPQchWrn//LBNng8597fRh23vMnwIYAySDd
	 2wgfFCXasCnEvKispTjdX7D9UtHhjmSHFdgk6/Ic6F8xsyY5UnJsOuEmrEj6wu3/fI
	 n4qkcYWEXUgMXB1bKuALm2JV4icXK8WWE396QZ/rEY1pGBv021m6tX54/zNDMwNH9A
	 OnsHl4sqkppNiE/F3GaNlWLB3eRdbtIZkj2Pccz1G6vMJKgoV2MsFF8F9SjVL1jKju
	 qzzTai7F2kwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A0BC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515999359.10113.4338405822175250349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f8df6e4822b01c18347aa6c46808a3332da966d829f17574faadc832b3c3ff
Date: Sun, 20 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745159993
