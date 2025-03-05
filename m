Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F782E3364
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741149535; cv=none; b=fUEmrCFetbVm930iVoNoTh3tNSDflQ7he6J9Z6pDBP/Kg14h31hxQ9WfF7Uvss2eHwUJZ/aKQ9/7lLaAgz2Bz25bPmHjrGbpUyvOIaBDlFknBEOn/92nkZcIJFwHeg369qTCorzDCdJ1ndIOt0XRtBNM60JTGj3F+lcibton9Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741149535; c=relaxed/simple;
	bh=G1nzfkI+ISj/fJqcbT1fHpuk//21XFBXYgtiYI7D+00=;
	h=To:Subject:From:Message-Id:Date; b=B2+iUSHoDkkod3zLhP2aq1UbRNvNbbNhVRSgql0/33T4CErDkpPICtX8mp3W7/WYbk/cQIkIch8TuhofVUAm5r5h5e1XU7q9pPV0nVxPN1OTAMDeifbCyf1YeX/i7JVSuv9n625URthtGZvQBvwuedrcj0YToUh17Kc7ahKaaRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFejosWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFejosWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741149533;
	bh=G1nzfkI+ISj/fJqcbT1fHpuk//21XFBXYgtiYI7D+00=;
	h=To:Subject:From:Date:From;
	b=YFejosWFyYn7sQo6bfdU9UmhmYgEyYLAgUrWh3nMW0w5uqegA71N5bz35OEDQ2CgJ
	 grYeb3Iry/T+p1iC/gPR0C6Asbl3JoET4w+l4zh20377eounE8tG5vsfoiHHOqOEOo
	 5Ki9hvaoeBgLRv2xpOlUvOz03wTCPSro4+QJyL1JMi265u57nWjl6QsZ+08kL7rINi
	 NrL8fOi0XND7+mPf5AKqhfa5wi38AmCGKEDvZsSPiuVE4+mjp3r6gdybDuPESopw24
	 BSBKN/aJI78D5L1KFg02zMHyoY2AE6B+DJpsdNjUVRzo//HaugPAEZ3ysSWtznNNP0
	 HgLsDba9gmNtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A65C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174114953358.20804.5429718074985272630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe91a1d1bf6fad1b7cfc305c23a63a99d6b5fa2cdbdcbcad17e14301a6d0d0c
Date: Wed, 05 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741149533
