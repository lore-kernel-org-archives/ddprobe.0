Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D643182
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728086754; cv=none; b=EnuyhvJzvRibKb/z3648X63kcQzCfQ48D9I9vaAsW7UcNSVs7XvaLEhlmwO/dDk81oWuHvVW5vrQ9bD66fJadtdXFgv+EqZh/bqoGsteVsjQQhUgKlW1607xv3nwSmzfF7x4D7eUT9e4O1DnPHlJya1VmxUjrXEd3fTn76dM7z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728086754; c=relaxed/simple;
	bh=bQYwwNFChscuUDQkDUCxZJA7Uya8HrKmN/L9HvrfyyE=;
	h=To:Subject:From:Message-Id:Date; b=QRRSEh6SXtP+3wk8pJN6bPesBR5iTBnn3NJpIBZKYfwSt4hallougKxWuKlxGmbB3eV9LqyoWZ9lu/4pTKmHAPXCVHQ2Yju7dNK3564oRqWjX2DsixxYrIxzGVUprKnKx2WTrzu9tZn82ydMfA4cowD6FT0xl1Za9cCTGwivLFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euea/bB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euea/bB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA3AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728086753;
	bh=bQYwwNFChscuUDQkDUCxZJA7Uya8HrKmN/L9HvrfyyE=;
	h=To:Subject:From:Date:From;
	b=euea/bB18GR8wcdnFfohs8bQRhg3ydzXfv3PUXNw0AUZFt+f1sUmrQTw6oQxzkO1i
	 6s3KKwNxbfWq1WZaJ3K07Wf7rLnA/sPuoTUnrELUmolBPEAjK0nSNHHD9wnuGQLxRe
	 KJNo5DnJ+kK5DzFaILZKT11CGCirqxfFTfTMJsTWGN9QW3OEhllSpBj537EmotA+je
	 TP5gCt/COagfXmxtKY9A84aj0uxmzH0GAGqQYUZjMTa8vVcY9/wCxM5ZNEVUuoTGWD
	 mEMQbQnomep6WpjX+3pti5DatVek6hL4y/V8Biti+/tti7OovjXhbcYeYOFaVpkcLy
	 CvmIVEXbl9r3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FBBCF8852
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172808675359.12271.13090208728705202524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a137ad43c279f1271da4a4bd201f66464cbb5d65e404e5775706fa8f33e8a5
Date: Sat, 05 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728086753
