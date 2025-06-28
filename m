Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8FD13BAE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751106594; cv=none; b=b53Og+0eUmmSl7CbTIEvoD8irS0xKnzLv0YsMIcCDM00J/xxDdjyG77wp3pI9/QoX7sBHbEyvMM2V4TTCEabX6j/nb5adhfQonsJxLRgC5fHaBEKjI/mRlJQ++Xu5ZiZXoZpN9CiAHzZesIBaOm/L0WY2A9bJ+s8Tm8ZWUReBhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751106594; c=relaxed/simple;
	bh=tcNRBLjaFWN4Nc9PsRiZahXsdVbcXmGQmLWxA6Hv/eQ=;
	h=To:Subject:From:Message-Id:Date; b=T3fvDtRuGeoR3MxkbZTemNYfM2nk0QCVtlFWpC62eGcQ9/xs/c5QRYv1Phkp2asHyale/zcwpHXJrGdG0R8ankBUDW5iqYaXYDNhwadejtcTcN5qDmPLNmPPeWXpMJ5i2IvPm7jzMFigKTqrzyLnmsrN0hoyLcKHpadh4xOXvCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJlucyp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJlucyp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5DDC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751106593;
	bh=tcNRBLjaFWN4Nc9PsRiZahXsdVbcXmGQmLWxA6Hv/eQ=;
	h=To:Subject:From:Date:From;
	b=XJlucyp2xmMcgwNQ9uR8VHXhCamMp1bzu8ZGTWuFESfmP6z7ywwF+0YXN2AxIKXY+
	 uVGtbJ/AJqVeMUnQx0+VDKt73UBy8kQFXXm8SO1elaBgu86AzyXq+ZOChJZNtx1wDP
	 k0kgI/6iEdCYDQGKTjflERMigSQo/PcqMpXZ33wdFs2QOx0TSukMSZ2reVY54KPZBa
	 qF4koELhTf3Y4HF/Ue6AuALymuI3g1B0tmgirX8RvAcNru0EMJzv5zaJc5oQiXEZHH
	 GPJnIV2vlYuq8moRYCv0qzOI+T85R1Xz0WAZsJfziG54uadUSUUcNiLzXBNWzcR8sw
	 s4aAA8icQdoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A1BC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110659357.26980.11251056654767064172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d80a57fa3556194eecb86dbeb63403c5a0e3dc986e91f3b3756a357b70c5f21
Date: Sat, 28 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751106593
