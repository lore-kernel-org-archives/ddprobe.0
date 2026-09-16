Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473AB424D5A
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789587036; cv=none; b=quHG0Jko8PZyOS09DBOZnXzZ+/dX7lHMed5owTEycu+B+gapjo9e8ReIsPLjTu2pBZIKUNiGPPOliTImc4BxuWiweDsi9r6xMljTI+y6CscrBdHqaTm2V+6KQZrq6/OPDbZMCcQg+rQbmSZHPnBeTjTmlECX3yMNhA/bZP2YVKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789587036; c=relaxed/simple;
	bh=RfCb8H8ZalW2gjbddOh18NuzVEkjnhKUe5Ww/n2KaFA=;
	h=To:Subject:From:Message-Id:Date; b=crav/Gu8hi0dlGjBnEBBe9atse+Oelw/Yvi29IZdXNNQbkePxdnYS4MsF0o+zZPqxSJxcwnW/dooV2JqAomRM8QYIGq6a5Lx7opm+1d6mkBDHoKyIpsQgYo5COdMuEd6Aj3UcCl533TbgXVdADEyn4WzgR23+guW0WCA/Qnaybs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AafDRFd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AafDRFd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23A4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789587033;
	bh=RfCb8H8ZalW2gjbddOh18NuzVEkjnhKUe5Ww/n2KaFA=;
	h=To:Subject:From:Date:From;
	b=AafDRFd4OgC4BnAHAt8TWCsRfoFOPb8KTvNv+6gzmBlnyV943tpaP2e2iZMtIjQyd
	 xsztBiiYe1gg/wEtfK9QlNFyr9BMKhQRTFfTiR03yAz1XYOr+/O36Zli62p/1/Z8rX
	 zCerkuWGDsNXzE0Ma0v1wyEPCFB3OSa/LmxZG6PQWWZyuwL3X25RUw7q6YpgOe8dLH
	 7BG7fTbLuwYzMtPkvxLu18IDV8zCqqEX9PYaktJtUXpLx7sost59kTu18ApSbIcmPz
	 AbJyNRwYCfkMaYwuaNfJn24pWGvTMI84imxnubZJePMwO+E6FMX0tavhNcy9goDja5
	 eT91zpkzugtaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7ED7C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958703374.17737.14600249830184314397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a97586733cea94226313ce41645c6507625e01e875b57950d4b89c5e3634d6d
Date: Wed, 16 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789587033
