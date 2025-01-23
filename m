Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5321B187859
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737661554; cv=none; b=h33PUly1iJ26lN1ZULUDHGtPsX4hYY/iWHasBBSN8U6YoB42GMvZQtfTurmEu9KTU6wBObC3ko4pDKwkKWYeJCALVs847pDQCghoYiFqwvRDcb1o5yv/6Z5olKx992mAOwx3q0FUo+Bz0n5n+squ7tgBj5imbk9yDAro3+blces=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737661554; c=relaxed/simple;
	bh=X4Fq3MHnElfDmfn2BLJeJdq+V1TyDVPc5B3qss8tpKE=;
	h=To:Subject:From:Message-Id:Date; b=MdGi/jX9asjgDZ4nVAMz9BoqdCvuBYE874hDJmFeT5dWheLR38qoSSdUjQ8a1KOjOse2xsjWiKFs8ANRu511eqWwyhTtYwebD4cTKbOucsbH8wPpvu8Z2us+qTOJurK6AU9C/lr2JSBS4raLLRWck8CF+bQXe4pHVEE80QYkSiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMxNXKIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMxNXKIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A40C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737661553;
	bh=X4Fq3MHnElfDmfn2BLJeJdq+V1TyDVPc5B3qss8tpKE=;
	h=To:Subject:From:Date:From;
	b=UMxNXKIFL9bgKl25V7VfZl+InnhWh0IYajIX4ZLPNQv3j/vqjNZln4XOKs5Ults3h
	 gYfqGxXaVUs5XLJvKxpbXCRfx1gybpGtNasWLzlAAMdT8AxAW2VJYx7QHgd8/AIiGL
	 ++H8rEcOhe3eiVqvBXso+xwDxUQggQR3FoLeaIKP7vISVqnqttctQYcJ5HJMc8VlJF
	 lrekKxPU57xRJePl3/WbSdEWaMGpaufBRznWhDqnCHW76Tz1jiL86+8U8SrxSBL+Rn
	 jatrL9UNcLQ+09T/OTvLdZvV+MLGOLl60aUce9Fhpy0WNfa44SG8nzh6KpMbEeHxwC
	 CY8/cp5nimGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB224C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766155364.18595.16173984039946000309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2873ac622acb146fd7482b6f0b4b59ee7ca5f914959cea0280ea324ecd803b
Date: Thu, 23 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737661553
