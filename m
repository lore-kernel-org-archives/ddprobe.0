Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C061AAA5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717631843; cv=none; b=BEUounC7/41uhitQsz1GowdA6XjyIpOGIbIFt5nOOeRxCC2FxMGoRPQEeQ0bhFqQ3IKQE6YtqEa4ITVXtyHHJ42uVA+sX3brF6b67jAvoQLNF3K0+GUt8cWsUR+xvic416CApY1FdRxqx7UC8RHhUeZKSDRsfy2DTmx6EH3TWAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717631843; c=relaxed/simple;
	bh=xtnkU9J2I7Tutty7MdrF/YRfzUdrVe9u5Wu62BdAZOY=;
	h=To:Subject:From:Message-Id:Date; b=oGbu+7S3aAbBLTmHALyf5Lhlt3W6ufLaJBjtGDI0Dz7b6ew/O6t7pFj+ckRkXUUdmTN4h+RacFZY99EmPKIRClg/7boA2eF7erUt9unkTD56Y7goAb7ryPMY0Rp06iIwlzzsy02AHuW8p+OKbSlDIllxBWluIxR1f8f3jkuwuCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFfN09Lw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFfN09Lw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F6CC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717631842;
	bh=xtnkU9J2I7Tutty7MdrF/YRfzUdrVe9u5Wu62BdAZOY=;
	h=To:Subject:From:Date:From;
	b=HFfN09Lw12CVVeoJBGqTEyZ3T7Qybo7/YuYDdywrzF8rJYaMpqutAN6VQhNcQWPM4
	 4X1CRmv05vGahmgolM02MOdnMRSqJTaKmlKrBPZgP9ZyTgWkt8ELjX2Xm9XulwozFJ
	 2arSJMgyZztiC2fwNAP9PANFe28VC7E6i9Y//Gogw1wiEfbGKyVbkpxnK6CmWlir7t
	 sJFAAlzvfJmSiAdVG/daqo5KglteGBn+DCBhUOmUda5FhyT5am7NUfLKq87nMEvxX3
	 Q4oVWxWwrZaA4slN8pYY27dwhKFCOr1X+OjDChdt9Yq152KvGmWkhM8nkuhpZU+qxo
	 Yap38xYoAbsDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0132C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763184277.18610.17974744210543042016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fed6e011319a4a6edc270a98201ec8c6d0057aed3d06fbf8df6c2ad9bc0356
Date: Wed, 05 Jun 2024 23:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717631842
