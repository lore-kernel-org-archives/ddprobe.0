Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF522E1F06
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782960514; cv=none; b=p6rTCAbgZFmGFIwj4FwQgtRppNRzZEaal+62yLwtKval+/jrlUZ678HH4BIAyv9CGg4mBA0/Goxe13gTabaB4PMl/eTVXcnCw4IJfmWLz0EatnISpTSxWBLdtEM2mKCSjjkgGkD0a7jDCBfYHGvRpq+iQkE0kMOwAcHtNl9II20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782960514; c=relaxed/simple;
	bh=UU1Dc3PAIvEK7F1arnY2Utra9mnrex+5UrdCIdg2Uvw=;
	h=To:Subject:From:Message-Id:Date; b=ZlX77AQJtvLv+WLMhE+TT97s/bhjBmDVQe5+wytdb1AivPT4Fw1ThGxdAMBQzAHLY0maAwLe9DoEF4sJZL0oh/49tlehmWqxoobzv19DJRX3/6D9Ji59U7rHUD08ANB+157qd3mjAmFhs2WsGbcKubc5S8Ws1XO1kkWde77niE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMaVfWNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMaVfWNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D006CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782960513;
	bh=UU1Dc3PAIvEK7F1arnY2Utra9mnrex+5UrdCIdg2Uvw=;
	h=To:Subject:From:Date:From;
	b=vMaVfWNa0BphE1yeDfqkVGPeL1kCBk4geqlDWZcy3Xt6dOylUckmYZ476KPJThhYE
	 qxTxTLxXTscfcioWNUOzYAB21jWAece9kwAVyq+b2+O+wUQQ+OoVgpKGNIV1NQSaDD
	 iaPi6EOZjJ8GrDUhKagqdrszURBmu65rQBkDpUvE3//flj5Li0kHuZ3uHabnX5mJgU
	 Zxy6F0xiwaritHaiHvUAEhpRRiVo+8n+6ofjDTuf401EOAaaCvEzcf8PrRKg4+fmYg
	 /CueEppwxbGLT1IKZmlqpt0MtfJqIGaqvdzxQr1lhmQn8GjvKH1nTCasamzl2MYvBU
	 q1iALlhRVwE4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAA7C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296051368.31736.3809098613480760599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963f8f0a3b6a18b28724bd1365e3cad0b3bec0708dc58159fcb9d5cf5203ad1c
Date: Thu, 02 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782960513
