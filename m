Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B11485944
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791913234; cv=none; b=PNk6p2kdBQDSmqUgmh+IqUz38mMA2I8zDBomnN+MXoFnKuXOpCu9f6QVGbPLd/1S2UDGH7l2ruRNVtacmAIWSphl7osIs1yitKFN3MjkIgEk9aEYu6Y+ZnMkqAs7NRHsaog6zMk+nhSQmYojkxEyx0faGtdhVY9G6CdOxJYUYvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791913234; c=relaxed/simple;
	bh=Z+swmT6RipQOwUOIHlXRRFYIbS3fhyYUchCPegmQiGw=;
	h=To:Subject:From:Message-Id:Date; b=FfkNm/2hGOMLTz4qpK6qLAm3adof9rrWFtAWJTVA1jCDcorthfYsFciQxDlBbvPZDqkwj+DCaMs48yudbIozgpJjOotHdwF/agujszUsBZUW8kgEjPTFx8hPt6DwbwWYGlAKsTod/lsQKnEVX8lnUUs86XQHsMXRivYxulQr6G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sva5suUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sva5suUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF614C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791913233;
	bh=Z+swmT6RipQOwUOIHlXRRFYIbS3fhyYUchCPegmQiGw=;
	h=To:Subject:From:Date:From;
	b=Sva5suUJJkskd8zLn5nw6F348Nb/ow8GdUOWCtGQWYodMTtkahZkxcR5iVIHgZ6sD
	 9y3OasMbDBm11q8eBF5JiHUOoLCQYPApToz3Y5YU9MYSerltznugnUFnUGdcBtlBwu
	 Ja+5rvv5FtlQtwKfSzG8rux+wYZUdH1I2nZQkLuQLrQ0T726LhkqkDo4EGQOdH8mlZ
	 Y3a91z/MPl8Sj9iatRp6Al6q0JO444YTL2WH3xor5WlbpeFtjU55zmta9i1DZHH4rS
	 Iqj+bTne+oarnqxmTxklKNENHATi1Vsp6eYwz6kdmvqUXfQ2RiSVu10sGqK2DjSRkA
	 nVZ4b4X80Mnhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0FDCC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191323369.29729.15661185340743155937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0db3fe10cbbe9ed88779ed27d7bc2d8aa2244ff43ca29f87ecc7f4fccced32
Date: Tue, 13 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791913233
