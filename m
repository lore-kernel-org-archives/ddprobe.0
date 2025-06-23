Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A660566A
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750647594; cv=none; b=KoJS5NQvu11JRZ93drhtTOAxtpOHjV4wX5do4QW8a2v2xbK4aeOcrbry5Mn3MfxgJwHmS7lE2k5Kl3p/ADyIxvInEpvZz1Ej25YAcDvm71q6o3T2JTShtK+eWDhSFoKCayQjgDjhaomVHga59brPUEqUb0p98cf8UNQhkUiMLx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750647594; c=relaxed/simple;
	bh=rO4Q8TbRGbedBzloIVshDtyu41joTCDL1rcLt+3Us6Q=;
	h=To:Subject:From:Message-Id:Date; b=MZRHAn8xpOnj5uIS8gnZPnj6z1s0im0dGMNXNUkekwLLRdOPne6e+pzBzL50WpB8rkP3C83CzyE8qiKHrXq1DxlLKGUNOiI9NQjlmeoPll9dhNzBvhKilmiNvfd67XK+d3l5ov03f7ArCScZUZH1kYitkTaOe7rXWP437j3QRnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxcgtQEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxcgtQEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1B6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750647593;
	bh=rO4Q8TbRGbedBzloIVshDtyu41joTCDL1rcLt+3Us6Q=;
	h=To:Subject:From:Date:From;
	b=HxcgtQEExRQm/22gZOHncK2Fwl8KOU4N7O0dp99mt0j9TfWnjrbpDFbhl9kFp6bnP
	 Ogrbp0uLV1N0SMiXjOAn+Dtt8quLGpipZrMs6f8nDS+/RYsch24hmatlHRUI9SrBks
	 ihVW+c5PRU2xQIlapDapD2DSIvt7yQdeNhZUT9JdiGmJD6nFdTPs6X1fm2IoKsvuaz
	 xJoP+bhedPMCfc4uVtpUsl3KiCwkHLL13sXgaoQRcMjCdrBoHHc1MT39/IF8kYHCCO
	 mF2unmJsL17UVKG01RX0kGOeN/GBjj4lWdl64uoCGeMAmqsYOP+9hjtxjBp8xEE58f
	 lsRwi7fRnpx3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F180C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064759357.25707.11254126216140486514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac871e17435ff3661b9dcdd4b77af53654da996135edf3d50a8fb84d6e1bbb4
Date: Mon, 23 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750647593
