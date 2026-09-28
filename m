Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F77B4E36C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790607634; cv=none; b=ETi7bfGpdnw5hNCPTpUVl6cwmV3QrWlaMnqYtObR/nEBD1g67oMCubsOYO+2HZitBPeZbnBIjrXJyaFfp35RUgg6E39MaaVPTT7WKwAzLmLZcGZCUEmS3vhsdkyJX0VbBD0O3ra7SsEilIbWFKoeOhZidDiD/fCw+Aw1GEQoXPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790607634; c=relaxed/simple;
	bh=CVZyPz9XIBKNsnbUeIfVA6dT5BUyAO4YxCI9zwEMzeg=;
	h=To:Subject:From:Message-Id:Date; b=FNiRKxXTOTL2/uQbd2COGKWqTUyZ+CPko+Cvlx6c8PjAId5jBvfDQ73vzCMeqcVwdW9/eviSgoRePuOpgYRX3YO/p9tN8y84BKdP10ETlO8VLqSk9q/leq9YUIcJVvDTzP0dSPow//4afEOY8p2HT5+XMts6gO4yW2JNz7/EODk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc2f8ITw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc2f8ITw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F0C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790607633;
	bh=CVZyPz9XIBKNsnbUeIfVA6dT5BUyAO4YxCI9zwEMzeg=;
	h=To:Subject:From:Date:From;
	b=Sc2f8ITw8qy/s2pJMyb+9YWpIeD6kqcWP1d49kPSYUunFZoP8NWpXmuDioSD1mx4Q
	 HlK/SS+vKfnkyQGoH5kZyOZR9qeTgxcJ3aaCqoNax6TBek2weExkz+mnTatD21jQLL
	 segwIPF5Nlbgq3EwjdTitsm9glZQO9KTtafi9o9sol1071MkVANLB75ec+KSCvle+b
	 0VXopHs/4yahZospO3oGnPeE7dNlTZyyyEvggEGzKzkaBIjdZu79F/UPsbDxzSdrdf
	 F0Dz+WdtHOvNd33TLI/TI5XLUckq41H8cV8tQGmH+N9mQb9pBGwcrdWk7iaeWgrt3P
	 AAzmDklge4ntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB18CA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179060763370.21722.3617105028957108647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfcce8bd9a0e51e5e7356201ccb52b1857745ffdcb2ce362ce213f628071836
Date: Mon, 28 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790607633
