Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE03182D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767329034; cv=none; b=l/YeLxaZ+AkHyA1tiI753rQmZRuI66K4KLoD+kq5ZgYpnxKYRnoPPV1Ry8lHRNk998LCmmFPm4WfEBZbOgEVj7JosXjZMIGQ959HIbNLJaOo7/Si0+SoHSagBksD3689aus1GF2AvaPq8BPGOv08M51NwuPMzgkvsJzZ78yxnmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767329034; c=relaxed/simple;
	bh=D+t84chI632pHeb1YH3L/iDzqxJtKe0aPOC7fTcSfKI=;
	h=To:Subject:From:Message-Id:Date; b=hsa1kqZMvTzuXkogg347HzfWklXdIaeMOx4Hgm7fw5FtZn2vhfBffOldOfnoiS39lsQ47eYsKgid+K5E8zAW+8qM0hHXBz8dRYZuV0IGms4a3vjycFn/gRNSnO/Bm4Dl0+H5mjTX2IqCLdL6q3ZNx8Duf0nFz8DxoLBiRfqpKjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ovy2fj4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ovy2fj4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC8DC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767329033;
	bh=D+t84chI632pHeb1YH3L/iDzqxJtKe0aPOC7fTcSfKI=;
	h=To:Subject:From:Date:From;
	b=Ovy2fj4LZeTE+6OO0rvfpvvwO6FYRCxNBKm3NFrAeh8zbP44sNiML2TBxzdN3+Hri
	 /Cn4zuKo5v+NeDwYAhnQstWoBL50h/0woMOwolTI9wXyp9HhuZTCHzsGFs0hhdBVQF
	 3N2K4bM3gC6Q+GiHxq16SjSRG6+QxYcWjTMTnm3qAUKcSakueK2gJ3b1iCaSIlnEUL
	 10dNndyCEjSBRtxILCOBl+WirDhDV/bWlJCe6ZzfsOvOg5UL4CUTH7cyRxOxrKPtHm
	 OTbYes9sIEpekdLxp+Gc0VDhU1AhPrsTNWjOVCLDEmIa7TbIYKZPpdSOFMleLkiBop
	 tDu6GTbfaZHPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC1BEEE265
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732903363.21184.12667981592639838922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7da5abe99ba78c02d46cde3fddd9b06fa5ac96c179a32169472d17aff513317
Date: Fri, 02 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767329033
