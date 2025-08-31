Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089872367A0
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756675794; cv=none; b=IgdNyEZW02smj2h+oTW8L41gCzuZ0KU3CK+AdHRoS/oRXWawBmiXnPYH/1sJoaH4L4tL+plDQ9SqI7b19de7TsTJgs2K+NOXyXbGGCRLJOkr5k0SLKODXakgmHY0qNmLL2IWuXZBwJnAEFOHgi9vwPGwdT9sITB1gYN9bgmUNZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756675794; c=relaxed/simple;
	bh=8h5hTCuEyQrJ+FEsVlzTQC+ebQZHl0sgIPseMr9lge0=;
	h=To:Subject:From:Message-Id:Date; b=W/GIEOAwmlvEG97RgcdnbwAtByBT2r5JjepWhOk+Ufg4+PwGLvMNeq1kc+5N3jxM2XRMb1/+IXSRqw4TDDxqquFBODiRtiurhJtLhuvpB4KmkuVsbvvoiOLbIeVjAHgi6WS/rrQ+EQqFi9kOV7+nYC3wwOkr7kjha50Fh/SKBBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCV/Tphn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCV/Tphn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3678C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756675793;
	bh=8h5hTCuEyQrJ+FEsVlzTQC+ebQZHl0sgIPseMr9lge0=;
	h=To:Subject:From:Date:From;
	b=UCV/TphnQv6kNHMSSlxP7TDt1FEyFKHw3xOcx6mPOvvlPUJQMTtGaVmnzryweoXlB
	 6Wb0Ms6j46gh67SHjdxkIpARr20esQVCEC2HsQFawNubLiWPb1vytFiyUo8gP36NoT
	 P3ElgOV/DCZv18ceQWJk3N7GQ8YXpkatZm9LfcuwgAMvqKm4a+TcJQIWBDHokq+SRA
	 IqtH6lg2DW/XHyis2HfCrSuZ5t9csgAy+//SEHP+30zirFyQBjbh+jXcJALsW/MVDN
	 gJaSbQbNM9nOnC1bXmB08GN+KzpgY9JSC9jiLX0HHYLgOPsWRUfiN820f/9DhwaijV
	 qaTBn3QCxGK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0BCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667579357.26620.9635685002480449283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b4f8c3975662531494e7dab2d4e2327fd3ca795103e3833d6f6181ec9830ab
Date: Sun, 31 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756675793
