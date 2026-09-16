Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5A0495AF3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789584634; cv=none; b=TCowuYHHsM2CE6XvIoUo9tzFhLBTbO0pwSX0PZAWDPVX6olIRqRaLvxlO3x26DpEwoQL4r/LTbE6CYxyqI2+mNxQ4LVASV5m3+Ir9fMcQTpuMWbxlfpXscRGad3VBm8V+bGPlFq/M0RRqK1OJsouPoDXjAgLxbk4BrgjWMTsQ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789584634; c=relaxed/simple;
	bh=RUgl4nMeBtlHgCofGnOrkg14wIbFcJ/hwBPDaf8xP3A=;
	h=To:Subject:From:Message-Id:Date; b=jtEjlepqoLuCuj1SZEmB9P8jkHLiHuIUMrvUTwRVzLUYd5oY+XrJm15YZthWKW9O5aiisCpbVgY/CETSCAFgpqZpsQGGUCTJudA2H1Ok9pHNyo/dFTtj4Dn+1qUKZEDjTx4j61d07fPTkpnshOmnf7p0Z/iAhtQ4xCGfkiWHWEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asUe6N0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asUe6N0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4122C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789584633;
	bh=RUgl4nMeBtlHgCofGnOrkg14wIbFcJ/hwBPDaf8xP3A=;
	h=To:Subject:From:Date:From;
	b=asUe6N0b5nqyGYILTz2PEou1nWbTaPaRlCWXxH3awNBDQY1bhPw2KdzZ0IUjcRje4
	 sMXrmuSMoQ1TAnt4084f11Sg2Ahw4+sWDYDdIt4nVsEZMOSvFhMYK6oH7TMBjIEDvf
	 fxtfcHX5RYNoF66lWjwUgdfnLJusSTVtiRlAEPEa0WEpvtIlRRTC29cd3iZ0ZDmMCu
	 Ujf7pYiTtG2iwnUgwxARRMne94Xy22nJ8bsCLx4NFHXLMB1H20cRE7M3wrIanqSTWm
	 iOnRVS9ATYfwoZTZaO2gT7l4q6PbyOaB9zo+ZHb/dBTBWQ6P9OXRmLi1lB7vi0EOGz
	 DcWcVRAA3uD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46BC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958463368.31466.9026049875757795203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f06adff7f84ffa7a7ae7ced3859ae3eead4ac17d48f92c6de67200aa568de2a0
Date: Wed, 16 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789584633
