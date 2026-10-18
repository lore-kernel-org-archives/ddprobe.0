Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214F4414A1F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792330834; cv=none; b=Q4UwfrXTqloWSqaAMaMMLtXKr0lqu1YsioUBE26UN/oKy7jR7kSF/kT87Vupp1/ySADlaA1MtS41PiQfZ+71iLXtvp0ceZ779yMFR929cvYcgjCu1uMcoTqkLexC2qJcI1ZxXRaAUmSLyej/SVVJlFvKPBfVtiQ3MupAt/eC/AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792330834; c=relaxed/simple;
	bh=0DvipUCYiZECNspmsHPl2DOS2X9/AhFShIS5pf8OCWw=;
	h=To:Subject:From:Message-Id:Date; b=ANpmkOWC593N6P1+o0ODIJd3v3hGTw23D0PeGi/3YKdD4jnaBx0iKTJBM9VjGVespa3CbSo+hO5IHUOmyJGzIFTDXfjPianEEKYrQxODc9mQXf8+4OBb4Gg1VCK6ettaUKdLDyTdQ5K6sgNxe+lAkQB3IOAynRyUoiDtoxmxL6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqqJURNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqqJURNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2192C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792330833;
	bh=0DvipUCYiZECNspmsHPl2DOS2X9/AhFShIS5pf8OCWw=;
	h=To:Subject:From:Date:From;
	b=HqqJURNIn2IC9fBqd2Q1P1HMBhp5mQTlufyXpgAd7e7vQSXXF0hZp/84KwhVlXLX2
	 yjy+dMi6G6cpuMpzS1LH8NpJHodMBC9MEBBjpvGT8aom+jZCM4o2o93UA5HUniLGRs
	 reK11a46o1Mpn9Y+Qj9qxxWuY3/EWXYDeXMiYxKBg2hk6s3QLZ7hmUirAIraOsJ+Ch
	 BLo2E14WJGjfZfLVA7e+KZyIw6FdQ45yImZwo17OTwVOuTvj+CMlpnrOhDAnafdKLA
	 rRCQFDe0hK+LjrBmyaEGyjHiDQEBZFO/ofZc/dNf+NJJyXyJfF90KKmFT+O/ygfJ/J
	 v/z+loEuZ2nPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2DFCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233083369.11741.12639744712853036956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c0c5d63b8016c13e87ead58f7591e9327a39a6ea6f16d96f4f407dd6632f8b
Date: Sun, 18 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792330833
