Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF5B3A255D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774984494; cv=none; b=mQlre+m6fY9drt9R4oZ0PcHXBeWY5oHpCL5KE+kvBO6UAEllHW+VX1O9r513/P0x2rHKHhl6O1zsAW2Sb0AQL39HQvQNgp1+32mIOxJpNPlqoGAxTiCcAfH9leTAsBW1mi+I3vHFfn50svNfUioWTVckIzPhLNUbbjbXJ5iWiFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774984494; c=relaxed/simple;
	bh=fypV1PLLQJCBjPM4W2V95QIIcsEZGkoJwskOiXTSooo=;
	h=To:Subject:From:Message-Id:Date; b=cmAINX7UQ30+Qt6o1EtRwPkNnZZsizS+bl1Vn1fW5ZKFBEj9m5JH78e+jeVisnx/jAwc0qOYBZKz9vJ01/4F5avhCSmOwgMj3+dDPAgUPVIJ86HtL1Fyzu3jLPPoWJZ+AAgK0HkxwJ/D0WzEc4EVgT913nEy8ppmM8TNKV55kBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOQu63/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOQu63/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A879BC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774984493;
	bh=fypV1PLLQJCBjPM4W2V95QIIcsEZGkoJwskOiXTSooo=;
	h=To:Subject:From:Date:From;
	b=MOQu63/z5aLEHcor5Bh7y3JRxHXyUpteI3WD2u4QaJfm3kg85B41DbY8PhczsM+KK
	 tattfMZ++nPDw9mTQIdYJOV8c7CCbLm7hvXOgnaiYAEQGV79FR9Q30Tlx7tLu+bSCT
	 ll4MGe7a1V/PV8qOslpM3sEOOli/X0AOgr6IIBrVaPsGvIAx/71aEerYdEtEPwMfFf
	 wP/9Jp/84nM4cKRuHuqok2ZandAvWKKXTiBiaX+re98wXEtKw4bv+mBYEIuwVxx/hl
	 Qhuol/Ao6OzegqOolERzPSrtfQnhACG1z+E1uWxovbr2JOjRn+sRIvJ8Al6IweEgqT
	 vPJfrF062O2KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946CF10F92EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498449359.19968.17224738767298075564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f69afb50ace30f0fd4e869c33a7b115d13d5062d25b6f2a5980df90abc5d43
Date: Tue, 31 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774984493
