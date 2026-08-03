Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503FA358D37
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785760234; cv=none; b=KY02QSS69IBZXsgc6K7eWmg44MBTepsnD5Xb6OtWTSe25g0UF936jUibu2xnu5LyXH50owrPxmp4huCVst5IdrScQbbHNJoDxLoeJNIZyYg9o1o0m72YzpDcy6bLtk6hDAkWoOhi0AGXYSZaQTLb2O+YPoztA6bdpwh//ZV14pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785760234; c=relaxed/simple;
	bh=exlDlbV5g5Gs3pNsw9b9fxGLISY65MYad94gR3OCXOo=;
	h=To:Subject:From:Message-Id:Date; b=ARYg3yAwpH4pU9OvnLzRm2qoxb+h0MLaftN2OUujtTcrnFuvgbiuFSDrS21hnV4TnBiZ/e2viRumNsSRa9SYxPemXj5KsxzXlkHMeMD8DrBQw/ViF1iG/YrrF7BciWVTVJwHqARjscqxXE03ZzZBBXmSDPAYrdCPyefXUnNvvi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuOen94Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuOen94Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11A1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785760233;
	bh=exlDlbV5g5Gs3pNsw9b9fxGLISY65MYad94gR3OCXOo=;
	h=To:Subject:From:Date:From;
	b=iuOen94ZBD1Xbhcdf1H6gP3pRTs4EjoQML6Y5aHCbigM1ldbsVxBNSLF/1JM0hDcB
	 okVvWf6ToSdV/G61e45hAWLryuIhqlcZVbluLaa8PiXeh0hNxdBNoRTu4pdXKl+2fa
	 TCBXkJxnYn+PvrE3A0E7JBCNnInurxub0Z0PRiSGOovhvnR9rW0VjDeUd9XhUC9Rym
	 v70JgbxiWw3WrHqe/knd6ueDLOsDL5DxlF4VLoarDagsYyfxSwrdmPwXu/2UO6Hwbx
	 RuuOKQzF53kzfMCzMtIXG6Q9+WEH1OGpEpYXTj/AA7gGdpbHlMiYpEcwyQ/xz5fc1b
	 j4qEwFJAqzBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE39C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576023369.7375.18343177246148569935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42fe51e3a41e83fdcca1675a635d8cc9e09b61d91d6f7e9f3604e0b6a802b35
Date: Mon, 03 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785760233
