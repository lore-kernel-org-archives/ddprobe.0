Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634E32737F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786198834; cv=none; b=KJn53APhzcRSNh95F8DYYxv+3HV4MCluoLUyZ1O02uXc90s3duPerEhXIWbBqqzXxYoYsPtykg7d670WVuWiMUmMe6yX+8bjg/JwwTYg51+3LRFM1lAwBw7iTkNbwVno4scLxPfQQAA0LIPmFP9F8DSY+GhR+u1ZRRuW8bT9qUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786198834; c=relaxed/simple;
	bh=96QquvDCmF+7bFq/lh4PnFsOgnsoL7Px8618+H+HcQI=;
	h=To:Subject:From:Message-Id:Date; b=i+a0vPZ8xSzq0TPXDNWcs3f2WKfM0TpEQ4C/Uo7Zn+OBgtuJUsbgFiDFLhbOipPGVw3duggSbUh45pnEa3DWOgEVoA9r2lSaKHC3ex7+O0oo66x6lW1nVd7DjzRxZDBWOpvOZz3qpvF8Za4UfYoXyRGYrYY5bta0sd71krSBRsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw8l3TrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw8l3TrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DA4C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786198833;
	bh=96QquvDCmF+7bFq/lh4PnFsOgnsoL7Px8618+H+HcQI=;
	h=To:Subject:From:Date:From;
	b=Gw8l3TrXs/+SoKleu71MMfDaNcytJ6S/88ZZfwCIxyKqeBmQRO+w2CEqXeBhoX9gw
	 L/QySSbkn/kgZAsKXmozLUAa8aZ7QAKh3uuVsasEPK9y01LIT3KIBF+lPEHB4h4cl8
	 +J5aFc/SYIpmuNZ6Kkebg+ZfG6X7rLiar44ihZV0GJAq2vXTHKprP0IIFa9dMrvYX1
	 NtvQN2NRM0BJcHYpVht/EiL61IGQ8FIQdpmO4KZuD3Dq/i5/QESJGk6ddLFZPhFGu3
	 u04DWf9w99Y5AMFYDnsWH/lnld30euU336/0zd1WaHFEUh/m4KoD+q6pFYTyvVs7CY
	 sBeHT46dMoJoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73EBC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619883370.17950.10200828936262532023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5fe47b99826e21dc0895da01dee9dbe83d14918d0d2940bffaf0cc68f5a609
Date: Sat, 08 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786198833
