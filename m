Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D9B1C6BE
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736406954; cv=none; b=s709x4TXOWzPVwCwYKZ/S+armTlr0ObtJ7UzjT/DeeX9mdZ7rGOgUGwmmzdiO1QP1mHIRDkkb8y1hOq0W4OJDPsVuhBY7EhqMh8A48N3rFXnnMqxO8ITx8ky+0K9Fl8hez6B4ZsvspqGzQv473xGbYHn/F9taxBXI9LlPSUzFSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736406954; c=relaxed/simple;
	bh=Tqf6FoOQH7AGpdJZr6imDjEMsD2D8/ROnQUVA4Z41Dw=;
	h=To:Subject:From:Message-Id:Date; b=e2cDakR/9hcMufF2NWwrxv2bw8AEqvkiSct5wiaiJgXnCUyItxUWMbEes1DkJwMmk4rfP6nbTRT3catD49+HoaaX7rFMzgQQhTBCpQJleYyLnfj/szoEwxlFV1ZfThV9md70n4uTH2+EBcL0juZ58MO1yEVriIucbtdRSKbYr7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7EUZMp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7EUZMp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3BC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736406953;
	bh=Tqf6FoOQH7AGpdJZr6imDjEMsD2D8/ROnQUVA4Z41Dw=;
	h=To:Subject:From:Date:From;
	b=r7EUZMp7Ly42ApM7HRubntXRb4u0ZAfEMxxrHBVO3zjb/0hpXRBlN05r8zciyDJZu
	 DVKca2C488gH91JBt2XX9hQXg5u3Ht+IN5cZU3b3mxMBlasc9PDTM5g/KVdbAI4dAE
	 fxCYu47+2DN275ycyl6iIt3k7kKC1L8zXIY5FbC5irY7eiiLwEzUqm877PBgNNn3kS
	 RL/N2J710nsXx8cv7aCFXGsZmE9G3PNgfthdtiRoJ3VozhCPJct2gxfbrO8nK74OIY
	 g8dM52RfcMDNSUPgp5AvxsKhirE266P/wWnziJVl98LnbL6R7F3u13tMS/pUTjRBzf
	 i5Sb3Ao3L5p+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542FE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173640695360.25476.2692693973116897514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cadb8078be3a3e78a5cf233f4c0f37ef442bcde4bd159edb5236e56dbcf3abc
Date: Thu, 09 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736406953
