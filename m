Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1832ED150
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750262394; cv=none; b=QG2frNcJUZrkW33UteUEdRh4vIKD5XCIbxMhMNqF+vk1697hFt/MqM8WS9Rf44HFuwQ+iBJuM5NPWqraBADsLKL1QW1cQXOd9J4r1kjM05HfBz0/zaOL1d72xqFGw7tTxkGbU9Jc/ywltFC7UruwgsOJv4XeplxHfzUkKBQBM9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750262394; c=relaxed/simple;
	bh=qSw6fbb1WEh+niykx/zfp1e/N6KBNLz7u8TGY9Qtm7o=;
	h=To:Subject:From:Message-Id:Date; b=s3XFDeyq9E4unE1BPh0g9S/0G00mrI2AwiaLzH4FHN9U9kqWzN5rd5KQ/YK5sjn0ZuM1CHg11Psfr2v8I1TBgRwZx7oO4cL9hgtGku3qo6fvHMmVUxU4fJUGXxHRAyPGU4/VZa2Rf5HCmEFC9yEpBlTRJd8wOqzR35caEHSbmzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEfdv/Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEfdv/Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0503C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750262393;
	bh=qSw6fbb1WEh+niykx/zfp1e/N6KBNLz7u8TGY9Qtm7o=;
	h=To:Subject:From:Date:From;
	b=NEfdv/RgBdTbwFxJXtwOaTShsH1Oms+NEJ4/NoRaVhM8I1/fRcfYb++Hoq56KUWk2
	 6KzILXY0L9TxgteagVCtv1y0eWQrZoKEikKEfQrsHc44dhZxhGG5Ld7rEFBoONW9Sf
	 a/3UatZqQ+wDj9zd5o2Z9Pu/Z59HUGCuyaRDxMcDpUBjoQsatiLuljXw9Z7CMdlbC3
	 J8llLGbOoH0WgVum0noL5h1oV97OHE8K0Jt8jWaNgEvEy/j6sxbk0ETbTLlmrAqxGa
	 ycBi6sRBu90ADNQRdaiJ9Z9snDaaY3MqLxpprMsjiAsNTtFnA6S8hW2DeiW6sgsoaw
	 S1gG4Sz0HT1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10FC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026239357.10642.5833058162240477855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddb63b257e53d9f0658b83c1b32abe1bcaa095a92711093c8ea761dde0dc228
Date: Wed, 18 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750262393
