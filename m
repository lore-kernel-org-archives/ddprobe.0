Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022873A1E9D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767488034; cv=none; b=UZSO0sB9rHVTdshy7yqLnflYlcipjXaFq/CunBPBim0JahdeRIsH7D0PlBR9+IGpHjMTIJhvI1zVVEVNfGGXGQ6Oji9CS4PrEht88BcfHe501KclPi1Zpj4crcekLYojafJ/uRSEZSuLA0PKLhEHjn7BZv3eU3YjzXoE3ee4DQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767488034; c=relaxed/simple;
	bh=aSw7KEA1Cn3NMoYBMgfGWlPFiCcLOI00FaamMbxAsSA=;
	h=To:Subject:From:Message-Id:Date; b=iCs6SDPlDcIu9MQSW2CD+FptdpEFgqrKspbJbLR91RjMlIIyNkf3Z2XPM2/8spyaNrI/hIfVaJbngljIrm0Ji9A1nH7Dpcpyyjn7WymkE3SnpokVEMnvm/zs50vdfEKwk8blv5moIMpRh6im9iqSSF/Z9EdgPtB8mjDgnEzeWhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xts3gx8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xts3gx8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3DC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767488033;
	bh=aSw7KEA1Cn3NMoYBMgfGWlPFiCcLOI00FaamMbxAsSA=;
	h=To:Subject:From:Date:From;
	b=Xts3gx8EeZ6fcGZRdtaJf+mSs8gRh4Y5wL2KTPAT1Tfp2Z2FlE//x5XxRGgYxb2pq
	 NsRgTlnEMVy1VYXiQn4dGg99Dy3XeQ6vX5X9UFyf63Q66EoIyy0FC21RYwc3JL6nZF
	 G33Ywq5bMHbxRJwUHMaISk+6Ff21FR8VxA9j2F1tDfoluU2Lbvqqd/lfW1iTlwgZNf
	 GG4uQmd0LQxPmmwd7n8FSTHlAq4UT7MWnN205+N9ZfEH1L/u2HsPBOqQJy8kxaJPBY
	 nec4izqpcsu3oE4TnBzx+OpKJJdC3XdRSVpOiHpxbEH0Z7rUXlhIJ5cA+AFvO1rPu/
	 4k4pi1jnd+txg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED60C2A061
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748803357.17779.15451449796582762615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d73b6caf4d33a8679970fca9ff98c180520ab40ad5da1a220d3a5931394b97
Date: Sun, 04 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767488033
