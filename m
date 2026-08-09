Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A573BD647
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786275034; cv=none; b=QQbv4xwClrm5e+t8Kts/j/yulTWZWzupgk+3QSSumlnowU8bEgU6SAHYEAeb3UCFCThrkYItrFxSuZjR1/L14J+1J1cg3lVPL9Bf4Q+iwb7Ll0v//C9WYAzsrHUfTYnwEbm99GfycTnLhcbA1iks7eVh8dWiV9GT1Phz49r4Uwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786275034; c=relaxed/simple;
	bh=8FXpowRIfx43nsyFShrVsQy8m+xWuYT7eAgCU/npVtU=;
	h=To:Subject:From:Message-Id:Date; b=mTy/C79kLPBKR/qJTm/kjSjs486/BRgD9qOj9Pzt9n90ob9FTw10tIQxnsLEPsaJ8ImXr9SuOvFA3ZmRqmvrGbmCbt/YkwBI2wCv/GquVg0khJIYVxRpJYfCIbt2NLVEM+eFgonDOLLUhjACnZlptkjH56xrCigUzWH9nB13Y1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfmqEax6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfmqEax6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EABC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786275033;
	bh=8FXpowRIfx43nsyFShrVsQy8m+xWuYT7eAgCU/npVtU=;
	h=To:Subject:From:Date:From;
	b=hfmqEax6g4LjI85rQcXJ/uXOFPRGrhMNTmt8VeUNTeQ7Yo4du98BHgxfCC+IMDgn2
	 Ltpg37JCDrGONRT+jd4Z//QLjzoGH67ksI6Q0SI5HCCANaepkYQP8+eFyuMwRKgI2b
	 4ELcMaAYsIE2tfz05NHiLHALFynTBAEWeCFDigFeHosMdAwGZpHn2mwGDOlsCGj/34
	 UuW+ww3LfpiqeTKe6w4d7MMsKEAbaJNx1PSGczMSaZHrD2byuwAVgjw3QYOfG+nw0d
	 VRVIG6EZDfLjsHniwwgwuft9mkx3ISQVspxT3N906SQA4iIgJeUnh6giXelI4BhSrC
	 MCJ/A8Ikx+wSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1554C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627503369.27140.83235722524687226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9021e9074f691abad14791231a0d88910ca8dd0e22d69e4ea05d1f35feb9607
Date: Sun, 09 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786275033
