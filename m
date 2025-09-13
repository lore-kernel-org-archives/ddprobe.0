Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158141F1302
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757782794; cv=none; b=TX5qL+siRflhv7cE+NQ2DbIdjdmeAZRWEv4sOp14BJgPS4gnoT8PNwsPvTHhUVwNDHQ/HUw+pLkEk1TMl4NhCPeOTubKyu4FT0Bb1EP2VC/BbkSGQyEqTdbqxRDHJENKqkwK1ZXwTQa9+OAivIw9AdRe1xC0Dhzg1OYXdpqWFTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757782794; c=relaxed/simple;
	bh=b9HbANKeOc2CHmcbt2ZR3PaSsnblwXO50iijuaa7944=;
	h=To:Subject:From:Message-Id:Date; b=Y4BNXG2epgl387BgnFmZQSkGHPzEOj9COSdtcGqs1YOpmWyND6m7YTbGOKRwW+xcKNNJBjuj08WAov3pEjals4Z7jHsxy9eAydMgMJMpkjMh3EhmuliWOFqLdeXEH4trJPqJvwRXLos2QBai2f32/8fhM2Dwroa+p9SHtduqBPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJEyWWPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJEyWWPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DFFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757782793;
	bh=b9HbANKeOc2CHmcbt2ZR3PaSsnblwXO50iijuaa7944=;
	h=To:Subject:From:Date:From;
	b=PJEyWWPhCnsswwFOyr4kbtxjG1+0h0C8TFvz1xSrbuvbHaAq1RGkQ5pVJksUfaCco
	 D7N2bcnzf7Rve0QHhuuoYOOjRP5jyiDp4P2bcVBNEmrC7411sydHGkXeuSeIlFXKSu
	 LmePu+L8qj0p8iTBet+VkM6bRXzIcmKkiKToG/XHN8h6vzLWI8aqmw/kgQgwAMWM0E
	 o8eyV5CCI0GVItKJ7JZRFvKZucPlonezLp5UvYnoK3VDWKF72jUG/xnn4tCrbrinkA
	 3LVfJNnL2g5BAeMQM9Zq5wdOc8TnELaJ74X41KTMuOds1/41GJMI3xkYo+3XesYd7R
	 oqeSobKHJiwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E5CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778279357.5385.826260538688342506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbc6f1f91c6a9359a84134edfcf4379a09c16ec140aa4bc9c6f4be9ab9008e9
Date: Sat, 13 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757782793
