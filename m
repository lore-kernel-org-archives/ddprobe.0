Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289B819F40A
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757896194; cv=none; b=qsE2H25MQ+iiZNdgAdSJz6KpgBnALolP/jBNBQyhRHGXk+vBlmHxWfn/tZ1IskvJn/bM+NQU5es2ISkW4Qxwl9hSfxEOR281YXswYac94WlWGGsVIVF9XpXWh7i32ZwtmFp1Z0XyHh7RKvbV2F+Vv1iDsqi1hnV5RwkReISK5CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757896194; c=relaxed/simple;
	bh=DMv44hCmFWASWiOYie8o+61/P+LRdnBy5XqYgFWro5g=;
	h=To:Subject:From:Message-Id:Date; b=hDAm2HksCCHf26T8h1AIOXCH4b8XqEivaZCtNw/d5keyHcYepGtDFpKUnY14Sc6jJlZIvbUmu9WllyA0/HN7li5QUCXAc3vgnHOhnZoZZpOcNgHhYOkpRuYE0KovEKEogiECzJIFSOdsyAVeONRrGv7/YVBGjq0+j3CaEYLbt/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8aOP8qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8aOP8qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41BBC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757896193;
	bh=DMv44hCmFWASWiOYie8o+61/P+LRdnBy5XqYgFWro5g=;
	h=To:Subject:From:Date:From;
	b=j8aOP8qn08TQqizuYfTSVuRgriZT/oicjAtbdgca0m3AB7JcZ1tfokURUKrODpSLQ
	 MoGcQjvArnduoQp16tIM3p4r7LEC+soO+340lB3/gPH8Cs/FrdVfco/bzTAO3GrR3R
	 RY0CTM3pV+fophGh+JHIWvgurZv00UTi+v9EpgWvG2ukY6R24jbQTOTOFxbL8l4l4M
	 c4NdUY8aXOicp6Fmwv0knBUL/5RYpUqmMmm4cievkZ4X+wCnYC2BgV8yJ7Q1c5kpsw
	 BmK62T5PUo7mJWhjaFOEK2eEgDV9bVbvfqjYCJvDXZRLJiprRTHmmOHViunh0LmEqN
	 Az17Y9uBdZnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A17CAC587
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789619358.17680.2349800298844614788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9296a0a005ab2951083e571ae8e0f8028c795e1f944fb54a706948a79aec9e3
Date: Mon, 15 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757896193
