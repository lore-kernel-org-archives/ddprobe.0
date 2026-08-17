Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BF93BB675
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786998034; cv=none; b=YpkTn4jOHW9oj9OWLaS9KRWUEvcpmqqbBKjERvFWOXkUMWhzcy+hzlY4jgrk+1aFg11l5jBx96R9bmltQKyum7Oo4Bx2ywHYL873YXpQHJpYaKNoQZ+sVG7z0g7PEbLZPrDLZ9ZJtAPCBNVYV6XzwAmQHE6pwdqZS/JdNTfMnyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786998034; c=relaxed/simple;
	bh=sDOomALffce/e+kFy28uuGg/bvt+35vMeCt708kUBXc=;
	h=To:Subject:From:Message-Id:Date; b=tohd0uIQje6TPHpDsezaYqML1fVGGpEWjGGjwqny7+hkPks2Nbnk5erPUe2HjCGDOGwaS4YFig2NaJLJAYqO6teKKze3fe4qGcovR7v+VmZn+5zWURySVQlJIH4aFLma2nlnHPTLDSDGUBmOvbosHN9jaE3ev0LqBdlcOAG7Q9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOV2rf7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOV2rf7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76C4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786998033;
	bh=sDOomALffce/e+kFy28uuGg/bvt+35vMeCt708kUBXc=;
	h=To:Subject:From:Date:From;
	b=UOV2rf7wXrV4HXlAdaLbmA+0g9mHiYD+ugPxWrrR7OFi1ZJumYs3GepNuvsqk8ekv
	 lVVL7AnwUxQnCLQSzm/ws5FLCdb8DSUf2+CYlk7o4H/ZVwVMicCtqrByw1w2TQShMK
	 OAuPSt9GT/09Jiwg3/F0f+C9yvnpYkCQqQ9cfebVgjb6bCIEecwNjSM+kHA8dvj0y0
	 xotllZj6BLoyMEFcWdmCVaX0LyRpfFhyTtSmJViWxo/wMIgQivke7qV5uBq33FDRn0
	 fPsSFnXPIkascZulXH8eGaOxBON9XEEmoJXrkKulY6aEA7uT9XxPSsM0ttTE/pF3YQ
	 cPoMqAVBBYgtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2584C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699803371.4237.4755417603950566008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d6fc56d823da6dd5c286c94ce7aa34ca3aab7d479cf0730abea1003338a729
Date: Mon, 17 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786998033
