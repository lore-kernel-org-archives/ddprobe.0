Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E5979D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743049195; cv=none; b=duETPrDfmwUOOl3gAF5TAmKsGUkA2RW5NDEEGU5iWNUg6V7ZsxcHpVK6EkADHdtb0ue5iLGfe0u6ukKXojqXTdH1+RXdZp8pdKIwN+sIcLXbDHLkGmvscNBygIYW9y6LeGEqloRsjx9Sznau4UmeUf2Q8nm2/u/ptdFcRKm2TOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743049195; c=relaxed/simple;
	bh=V7qlH4vObGl4ZYEXW1S9R6YFgu/FSaFpm3U4ozDU1xk=;
	h=To:Subject:From:Message-Id:Date; b=L+OZ5kAt+nqTxnScHD4V7/FA9p1QQ4Fin/VV79CWQNPhJNem1TIQKsquRadPaAjzN6k7MkqRRXhsPbMRgHY2iRrph7NY9yedT+60x3Je29qxuSVShcxcfW8X8PvIjxtTPJimaVmRH8Bg79ibNnWLouhFGcwGlT38oYr76805hg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5GQanwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5GQanwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE665C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743049193;
	bh=V7qlH4vObGl4ZYEXW1S9R6YFgu/FSaFpm3U4ozDU1xk=;
	h=To:Subject:From:Date:From;
	b=j5GQanwl5mRVPuklRSP9QMlT4YRKkUGfWdS8Xl1hPK098Tu1kSys3Pn+6RDA4Ye49
	 iz2hQ1wCXC13GR4Re3ta6proZ4iO9mEZMlvTvzkKy7E0W7yywV97cEsBd7BwBDR3Ii
	 gvRjeze3/o4DJ0N1KVnaiXpYR9Q+gi1j/QAFZmyvEqK4BEOkADiDIKSBzZdGCeLqyh
	 Ky/hCD+rKupXhmm1YbE6eKjpSRB/752+tSXjUv0YeMbaVleqV2jLqF2CycbLsRhfq0
	 sYmu8cP6gy7C9lwpYc9Xei+YSC5GKWfSmx/OVUZaC1v2v8MYuUe2eXvUTf7IypMa4V
	 rM1cjQgtiuJIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5316C36013
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304919376.21025.997148383381326627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92add91ae40132ce0480cd934faf084ff1b7314b711fd05161ba69d49995a3c
Date: Thu, 27 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743049193
