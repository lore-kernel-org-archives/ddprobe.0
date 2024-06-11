Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCE52570
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718128103; cv=none; b=OgcqkSx/SFUrat86RlmgnOot+iqljUk8dFVQnDeBSj8YoExLDOGbxsPykA2hQsPaBYiFmzFEenpn06xmtBgniPmg4rMCUOdz4PSBVYsLD9k/uWWVRKBP9Cz12o4q/qwUo+LAKnt7tOGElYu3R92aftBfjBZVlynuZFMSYVRRSvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718128103; c=relaxed/simple;
	bh=Kcz46SvQoR2OZJ2fX41Ehh/YiSzb5EBOPibJvQdsph8=;
	h=To:Subject:From:Message-Id:Date; b=T6Tn0z4jK17eLl+JF7iZw5m9y91Yhc4lHKx9nENYXU/9X2waSCX6Re8t/WsoNtM/zG7j9VVAYzp4AcTIhoiNPgnv3AWq8HXXrSQZ//6gALSr9saYiDpKNZv1L/hNCp+jh1E988+68vPGUdNqXxF8jpCdw6skUg8qlmyL1cKo1Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiBzgXvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiBzgXvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0DDC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718128102;
	bh=Kcz46SvQoR2OZJ2fX41Ehh/YiSzb5EBOPibJvQdsph8=;
	h=To:Subject:From:Date:From;
	b=BiBzgXvuWytKdaxX+0YTb4FQPNlyief6Yt17joYH7KpxJ7IM6bHJ+xmJhJ2HgiHlv
	 enxBeL1ZFjcsVBwCaGj/4lT3OEoVGVBtWzwXPrRTklT1XOCbd1O4ZJsHRribLuCyVz
	 wZkPpzdbejE6sHvF0o4A6Hcat+Up1PC+xQ+TNF5p9VtfwvWZWJ1n6GIoBH6R6jhGfv
	 Ie3COpObo5tKhU2PY67sBdhoTDUyRf5AsEeZvqP2ICjir5oYMey3MmY4NIPyNxwpCx
	 PVAzI4lS6CJp7TVhNO7bkKIilaSFaGx4APb+USL1A5znqBJyUuq+dTScYCYi0elY6X
	 fOIoEmBWIRzcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE33BC27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812810277.11739.3740481388562649536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07bce959b1ed1b140944a3d1dcd7982813327d7a6cdf5f55d60cb6c2c560cf9
Date: Tue, 11 Jun 2024 17:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718128102
