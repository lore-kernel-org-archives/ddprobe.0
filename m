Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B442D6E5A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784228914; cv=none; b=u/OuQCwlviCLBTvHaeZzc9g4gD0UlgwS4Pi6heCFrf87NNea52Wr39T3RN6Ajf+icjq7dOmn/lIyVyvSC/TpEkod7vdemjh2EjQrUE8+WmQ+s43ZMqBNgRpjuf7HUIwdMh6s9FO3jzYG6SLdhzarB4g79z0JmnwhDJ14UhCXggY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784228914; c=relaxed/simple;
	bh=Wh6qfxhMPhBNJZSPYjEPnhYfbILP5GBdTMqAY2le7jU=;
	h=To:Subject:From:Message-Id:Date; b=nwvBYVdGJKrL2ue0dSTMHVk/paYmzS4XXeeWJkC/qyRhJc8K3S7IAseudCJuWRyybZQefuwnK+663OBOvmYMEOatBJeT2CoeuM902oUkjQIY/i4LVFRGNvpRx7DLHHv5v3vPJ643kkUj5Mm9FO36crfmazCTTs4jXZXUZPF3vio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwkUPUMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwkUPUMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD25AC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784228913;
	bh=Wh6qfxhMPhBNJZSPYjEPnhYfbILP5GBdTMqAY2le7jU=;
	h=To:Subject:From:Date:From;
	b=QwkUPUMfcmxNdSZVhf75TCkRXsdmJ4ax0stBRyLkqM2YFQ+XAFO1XEuW0SfSHuimg
	 Yq15bAG18G3Gn2majHaOQLow4EI+/vtQNfQ7y1SWwec3yQds/qea83k0S2P8Clmyfp
	 a9BFsh8F3qfAVjFCeagHGakSIEOhF0HHDYJY+gFZjXfzCd8f6fhUckES4urr1rE2Z5
	 KC7uqY/V4oAvESwP8395M/uEgotL2F64WY2iGD3aXBHYgkIGAMMpt7m4k540/lqTWf
	 daTg6Oslo/3XndylxUu54kRGkRf3vYY7IPCHwyDMqlAzNypT/dSagBkLTOd3e3DKTn
	 /WIq5H2YSlAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8651C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422891368.17627.5760568636913508776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff29b7d28161481eba752f8a4128ee58a45f4af180103d29c47d505e451ebb3
Date: Thu, 16 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784228913
