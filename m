Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8532E339C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743514194; cv=none; b=OQStnuJz3lmu+A/S6qnisC/0URLtQa5h3NL1gOKzGTzcu0f/oLIWDQNagUsb67OPyG2wkFY7JSh05RCB4NQZuthjvf0VHSW5tll4NeNsJ1BoPE9US7hoP2DjSZ66nwh5GN8Vo4nS0omT0HDBZagH7x1pFCNYqSqXxqu/mAHbsp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743514194; c=relaxed/simple;
	bh=cXY4EIQcTiC+tSkf5rb56kDm6JI4TNwayyLq7C6kK/8=;
	h=To:Subject:From:Message-Id:Date; b=BQXdn5kYVlBEyoEcYDJQqMzlYCTqVKpKiee4RfOGuy0d8zkM0RCpSyrGR4orW7j8zirwS5HYhw4nIEcUvFZqqU8ThOtW09QwUePlbVwNFJUVY6rOjUVZmdpQqzPz+jhHTLfExjSg72I7wMgOI+3GJOxS6XsEFxhKO3D1r2s73zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeU/Etig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeU/Etig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743514193;
	bh=cXY4EIQcTiC+tSkf5rb56kDm6JI4TNwayyLq7C6kK/8=;
	h=To:Subject:From:Date:From;
	b=GeU/EtigQOQDVuMomvNhd0pKrIqKqdK32II982/QaIs85ZMf9/+buUQyamRlrA20m
	 lv10RJgRV8aWMZcwsbFrB/2UFtv1qzaBlScS6WIwspk7XxLl1JtHjtnn0HLekl3EZz
	 5cYXn5+V1Fub+yd/a9VVIQhkc/3PoenJnZMpty8RUStinCzdFY7wcsP4Mm7cvTdSZm
	 YjStOVFJ0So20kTHPcsUsSXBNK5dY5D80NhTEsaJMibG8hw5eEkw6xh00svT+eLrMv
	 t1eFC8f1hnJLVkwyIfwVG3LmJBrEbyvRc/mtN1xVzcDXtLWR71FETk7AUXS6WVDVrL
	 Sl+gGd58qKQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95890C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351419360.7870.4709256385812764127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2361b2119af8607c056680ac2e0fa735d488d2b8f5e7260b8477144ea75ee040
Date: Tue, 01 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743514193
