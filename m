Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087571E7C18
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761370194; cv=none; b=RMzdLFlZ+GS2Nl5a1skhxDsPhoadXsL9KdEgNDn2t44S7DwGaHgjqsroIGmqck6lU+tXRc3DF5cG3j8ItGlE/2sK5y4P0iyfOdTp4nDsE2JmEZOmSQPM/rDLqxdP69FN8F/M1DyFeHiGKj231HyOFckWKfrIiuUpPwy176yQbOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761370194; c=relaxed/simple;
	bh=zzvxRFR9YE2dTU4BPFdpW+FbHmKVxOMlBs8mhjB0i1w=;
	h=To:Subject:From:Message-Id:Date; b=HZylzema38s9Wwk8vIYaek9KSCcOf+vSeAzIH1K+laxkN072Le9jH5GSl2ooVS27LVoOZIvg0K26tcgsjw6klrK4oD0JaMh7xBC7bMTfK0dPUKGqLwOoGJzF8uOnG4sHCtfmYNv8Dw0T3UWl9L9hx5zSLx/RH7UBQetXIpYrj1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSM420Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSM420Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8BFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761370193;
	bh=zzvxRFR9YE2dTU4BPFdpW+FbHmKVxOMlBs8mhjB0i1w=;
	h=To:Subject:From:Date:From;
	b=pSM420EcLCpBa8epNjGIijcJRX5sNujMyshJ30vTluaMOwVw16KRsUnOCdwXORR9P
	 7p8Of6oURpDH+C5uFtskUoB7feVIQHYA9I4AMbsByXKOwiQsMu/CZzmjWHmsrNTiZE
	 /vuwasGCsM1NpmytjBK7RwddN7NLhlyf/ZNaETwN8Ga2v6bdguaLISNUYuZ1Hfjhrl
	 BBtG5p3q936r0KWcTe7bK1j5taRPfYQlMsg+PJs2kzZr6Bn4GeoLWXbPAMPiaAluoi
	 +OtNCsmRRUP2xOyAfjqTv0lricBnxZXng8aweRfp9sBDCbaz+u3aZA/Rnb3YYUg/Dx
	 yrjrBCdAcqc9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F575CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137019357.11287.14124512442396099548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9301b5222c91ad62ee27015cf68295823617c30009bdae6c04e343663543e2
Date: Sat, 25 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761370193
