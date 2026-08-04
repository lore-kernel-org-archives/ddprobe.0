Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2F241D218
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785825034; cv=none; b=pu7DtFzwb6ouIBScXBvxao7hvSwg0mlopble2rqeu9mHWUywTSjaXBLX6iVG88NDAuTi1mnQ7XwTgq+ElfmgaftdAW39JJeMO+13AEtBfprcxtgtYvLZCAuTudLHlr/sNuuGVPu2has046g7CoMBmpmscz/JGYQEghLrnEl05ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785825034; c=relaxed/simple;
	bh=GePFTVEQqM1PJSxIbESVBymCzPMTnxjYRMFHKFw43ME=;
	h=To:Subject:From:Message-Id:Date; b=Ce+dMWtlPckDyUH2L8Im1im8IHWsnuz/5+H90bf+1FgCmfotIl5By31BxXg30LD2IDlqkZPabHyKBK+2Hsw1ZnrW1od6lrjq8LSdxTNDyVlMVzAD6PMhHwmnwUkddmknp23Rz9W5MAcN6aieCkIXPVkDqGIfSX9SPS8DLUuJpuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSZPhyZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSZPhyZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D685CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785825033;
	bh=GePFTVEQqM1PJSxIbESVBymCzPMTnxjYRMFHKFw43ME=;
	h=To:Subject:From:Date:From;
	b=fSZPhyZlXHLitQno27WNcQEkUqXabTQYa4Uztklc8Bolzyr7GWHS01ZaHgLRMbN1i
	 Qg149EX8py3ZHmLcgQ87f7pExx39Q8yBuPkiof1YjsK6inVfwpxLj60CB4SA/x61UJ
	 5fOkAL379RVG52oScpplcvVeKJKhv5ddhWGKaIPGIVlYNblvmnV/sba8Dca7qYSa1o
	 o8O6hB3nR+QnITdu0lUXO9P0HprMjGp5PgnRS/RIqAWz7vW8J+qbXF9Q1ae6k0GTpZ
	 Q8bfD2IKf+avzvXVWmsI9haGpAT37IB3GJlSZ31gPVi06QZH77xDTaoKsROsLDNSYz
	 UoX9wsQknRiCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28E6C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582503369.31539.12789434279031261535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1800afedacc2c05a550b492ebf5ca7c6a205021747ac2dbc3d09cbaac5ba29
Date: Tue, 04 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785825033
