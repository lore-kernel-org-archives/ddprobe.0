Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90CAA382
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750473594; cv=none; b=C5jc7WVGzirVBLMXjOadFUPw3WTX1cod2Sj+UU0p4GKGxS8OL6gIw0wferogbX36v/ZpNvO72Qj2qRwDVSmzL4CMxMQUmcIPA20Ie6odEddRLw/ijZ/Vflz8p3dkmynSWh/nfBxrqTnplDDMwGKbPRIAwXZE5//APaYEX2VrHPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750473594; c=relaxed/simple;
	bh=USwX1Oh7GTm/qrPxVsug4bm3fe2IrrMV6HO9Ppl+ahg=;
	h=To:Subject:From:Message-Id:Date; b=OW/PDA4RgcbOnpyW4Qh3w/TpFsKVDtc0sM19U1BfHpqsTR7pdkEGqE3UDaJr+yMsSdSUdS81Kkhvty+C2D+lcrcs+4pArTcVuy4HaOH9Bk+oh9H8L2cv7+gOjZmuVwQEZGF9h0tKfM+SUVfXbf2/xOXQxBuF3SOuudYlZrhh6oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfYAw+od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfYAw+od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D34C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750473593;
	bh=USwX1Oh7GTm/qrPxVsug4bm3fe2IrrMV6HO9Ppl+ahg=;
	h=To:Subject:From:Date:From;
	b=XfYAw+odg9tSMm8IcBOrAi+rqGbFJFnMhOWcoOcQf+dmbKtAvBK1Rni0x44qzOU0M
	 7niOO1uGbLDRxgKdvxjDkqWlCACh8Kj+ixfSMQF/2DWVV+zwlYlF8K6ZBS1hJlKNy5
	 Bnu4b293pm07YLgk4SfOsLIKwvPFsEWhbS8w37FmpLvPZFprndv/TGiGH3LHdURnMe
	 aPU7jyO+Z8qSDPbak5KKjgtni5m7SG2D0Sj9dxP2QyhHLnbYvdD2UvK7hHlWUNfw9T
	 QrzUMHfjRmKXJD2/luMDyQZ+7kjl7prI97CxaP/CElWuTuyWo2sA8RnpIVPOw2A493
	 cowcou5TG3gIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD5C7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175047359357.18428.13219579502295892613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c20e6c0ece8566bd9c77470da3ad1d8ef5b13405617c575dce29c9aca854544
Date: Sat, 21 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750473593
