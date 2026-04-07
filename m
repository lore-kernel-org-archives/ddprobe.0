Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2540B372B5A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775541334; cv=none; b=eYimkRzxmqrhKeJTCHIWzd3tSRAP40OLzm4i6AbUbk8bv27a95BTzW8XyR4Gr5YAb7Bjbdb3Fr4PIagrkRe9IBB5EQkCUgpnu7e0d5QXoTdtyUa/jGEfg4ouSxcmBv5PxGDFG3NTwVr+3xnWSE4IIGY/g5edQbg7XQEeMfc89Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775541334; c=relaxed/simple;
	bh=5TjFY0YZY7V/ZQh4NwRrZpgJnLxKF1FEHhbozJgtERg=;
	h=To:Subject:From:Message-Id:Date; b=XY/IiqdJDDp/F9/R9z7Q51OsgoHWq1nmwUeY+zsF1cAv1qNsRZyB/jQUoDcr/eZTR4Mv9kfMvaTKTvdzNhyrSj3yCF1dab6sBizrxxuH3x8clJGSaxvAEDRXOI6zCbp2vtN3uDY8iUc8hKHieNwwXThncmB6CmvXzhki/DlRG5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCNPOVPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCNPOVPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3DCC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775541333;
	bh=5TjFY0YZY7V/ZQh4NwRrZpgJnLxKF1FEHhbozJgtERg=;
	h=To:Subject:From:Date:From;
	b=RCNPOVPtjDnycgE7JNqoNjI/vESkViMwaapU6ccbp4FbfOdvWxnT94WvLy13K6R4j
	 RUNrAuH7vO1ch0B/JN8ZR53yxRU5CM/a1QG2d3KLsYfeoKl+7Gi5Fj4PzJ+1E70waP
	 SiehCkIGBzIVhUNYyVLCdREnffwFW4MT0I++M7gQhoJRH1jxGka5tiij/bvrlYyVaG
	 66BJm0HWG9FztGrGBvLy85rAVHmC8/nraqKEqccnQPso58l4crkG8IgijhTm2qG6XQ
	 V7fwZSktTd3rL+zlWo/J9n0zXb2oK/tqlUPjIrfS847BCseaVzDKCV5ccKPiTJQ0n+
	 P54KPN5xXVoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA618FB519A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554133368.15834.3000308425176721776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4769c96b6ff17e1ce4b70a111a6bb2836dd9e5c7a15b2e3f8d29f4c6ed952731
Date: Tue, 07 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775541333
