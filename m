Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A67D37A4AF
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770189834; cv=none; b=JdvHPf5w6a+fTXWFVt58d4VdFxumlBNx6MwW87mqDZ2cruCU8kvVVH11eZDSb9Hpd6yblBM2XWwSDGmCFOyEtBns5QTQqx8HRPsN3Ho2K31YHHJBerRXP4PIPADYdSDcwYBxQ6OHXYeFHmWbqBNRux+VFUP9rpvDhSe5buAOH8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770189834; c=relaxed/simple;
	bh=g8ewNHPwv6UgzVJO5scjm3OUHgobyoGhDeJxheCZS2o=;
	h=To:Subject:From:Message-Id:Date; b=GClkYBVHmyGLYRQUlP2jKvuPzJCZ1cqVtMmUTI4Bh+pkgQ3uEYgswVNBEqjKoeoUgtPC8XREgtRjZ+SiFGYr3bx6ryY5MFdjxIHwuMqjQ43iAv5EAxq1IFm3wMhfDwryeGa+aX99WYJ9y+3RYZzmL2tyriMrqnz9joArdDv5ABU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCvACzlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCvACzlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8629C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770189833;
	bh=g8ewNHPwv6UgzVJO5scjm3OUHgobyoGhDeJxheCZS2o=;
	h=To:Subject:From:Date:From;
	b=lCvACzlAAxFB24R2q4TG2S5G2arGOlHBF7f4o3yTA4t1CiSFsmL09e+MxscyL0VmZ
	 yENcwszlqRxpAYRwy7N8XJm3GIrGU0u9RJxi37qASNYNCUnrlNCzg6Ll75a7w5IltL
	 QCn4l3oNOfOhjYH3PxFretvzDo7N24NL/Kog03Tg8jhVatqrayrIL+kU6PVh2Nwavb
	 7Q82lDi9KLOZW1LtUFkUZR4PzRt4zu58hz+9kF3/tD8sWCl7K2aFKatqZiWv/QuNlD
	 bcsjudsNc3p9NL69vqGQ94BE7OxPFsTa801GAnaXOqBIZSFVyH2gwiiHD3xR3Ni03K
	 oZ/50VcF2DAjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F71E83EE5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018983360.8198.16444896098618852801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3cbe42fd2c22ec36b1b28d7a064c2eb025bd6c6835e18b5e954087230d2d10
Date: Wed, 04 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770189833
