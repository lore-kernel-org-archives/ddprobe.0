Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E94D3D47A7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789120234; cv=none; b=QQr3sMuzY0dkNMT3eVn1IkX50TO2zfU0JdlciBy1+4MZILRGYIEpTX0m0Gwp4JEc+J9979wjK4HL++38Dl79Xshjv7ICRSwTLGo92EWbuPH2yFgqkl/GAOsXz8e0MdqfVINaiEw2J4y0A5V03b+U9kC65e2QXQmCnoBHrrfh2LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789120234; c=relaxed/simple;
	bh=mcq/TiRTgk2+emdt/tDUvVWK1wvkolP5tODxItqWx1g=;
	h=To:Subject:From:Message-Id:Date; b=FaHhvONuvRjxmuwxAF3arcQGjFl07cElt0T3YxxQdlMTHdDm6zOT1Q4Of0NxkPaTBwERnMISp497+ik4p1mFjWPd5vJsnPa3wyWqHRxzhRd7roxJd5FjGSO/vCWVJYS9JCJFXjgRaoJB56VEMFfuNlSvkcVfdW2+cq1Z7ePk97g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpJYI3jK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpJYI3jK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A06C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789120233;
	bh=mcq/TiRTgk2+emdt/tDUvVWK1wvkolP5tODxItqWx1g=;
	h=To:Subject:From:Date:From;
	b=gpJYI3jKH959Tfjx/69PNiDSaXU9SSREC3UfkRgxkMJoJOAETo/HZMDQTy6d8l5HL
	 XJtjl/A99S/rYzOFbgNvw2yhfcA03TN9nywk5XRPNgpHghS3hF/bxGHFBNK63Kr+St
	 ca87mK13H+bXrzN4RB0FVNpKkM8GFGqLbM/nkhtvwo4e7dVA8SzGMVqFDkgE9gqXOp
	 bDAGW9eUfWR6SxCONkK9G7acapKUe+1LKYCu0fZama+BiZQ4Hslkg4Vwla3mkzVPyP
	 Xad/cEDAkCDxSgljh2Mu4L3tzgIb/PvYLHPLb6ygCdRVZY4znIv6MbwVMe+dgvsPJt
	 /OTbiYQFNyTgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFA3C88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912023368.22682.477048860807799953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e678ac89543d67bdefbd9d430f8ab3a63288aa43d4b95c6cf88a343c54821dcb
Date: Fri, 11 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789120233
