Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B703859D4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781373394; cv=none; b=pgILfExg1EdN/U8/tHGF5rgHFgONRx04ImLcXyBuhn/ZybYH+aanZ7KvJFEWz35+WiFN4CSZhveezvJQQwWLkMCN2v2u5rMNx0wwTmRKqnKBVtfHt2nN85rFXj4ToNDKhj5wHFjC56h7Rw34IyMymBdVKOD3iQXHZ0xPnAyZyNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781373394; c=relaxed/simple;
	bh=euqk12Vw02kgKak6l9ouhAi+3wTkQj7siNZ70b5icbY=;
	h=To:Subject:From:Message-Id:Date; b=STVG1DVmwv3inh11AUBZdKDtzLV8f23WKGPw4V3Pvu7aQM6Cw2DV0ePBDb8I4b7W5U0b2i242578LCFw6ouVX9lLxDIuqgiWiBinFusn3mEB35Pg3qF7B5T9rQwzxjU2/WUDS0J9/2PtNVGQlMy+SkATsDZQcvJtEXpNzJ6pQMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNGe/rZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNGe/rZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DDAC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781373393;
	bh=euqk12Vw02kgKak6l9ouhAi+3wTkQj7siNZ70b5icbY=;
	h=To:Subject:From:Date:From;
	b=mNGe/rZxfCS37bbDMyLVxzHO91mdsUFmYM6ERE8gEJap1RpA6f1n34rDEopMyHnXg
	 EDQDhwhZRGItkpzqUZ5ES2jVWwsQ3ZNgN3TDotEnBHHWQT6kGkadoGzSse0T9tUviA
	 ahwoE3IHS7lXCfkdP/it+mY7rDFsTSZlcLPbFpb0kePYUmMl/cNY6vj/HIzeEQjI+S
	 HsJRf4+mNlyWK2b8if3d5pBgaXZqLKkeVwNlOfs4zbtTuOn1fqxkptfhZfDbqQgiPL
	 GZVhEz7p4OkAUdeEtC3HrluOozsgrMTxkaH0Pth7jwktTZ7+Rs7E2hgm59HTh1buOZ
	 7hm9awKRtJeQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4C2CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137339367.29402.14673218723644107329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa7eb266238a33020854fb63f0057a429888421efd16fd67122dce1a521572f
Date: Sat, 13 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781373393
