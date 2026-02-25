Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4053F393DF2
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772019294; cv=none; b=d3pFgGFsZguut95DnT391p+amYPJS1O5AO+SfbnPRPjAWOThUmzOMn4HxKu9yhlYB9OGVhxJLvXZY3/5dKWyKChlLJ2iTtewgE4Wpm7igrU1MLqXV1Xr83yXPk6KY0cCUIpwpkCkfDTEP1WUu74VrCyvpVU4YepKsXKljNNdIO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772019294; c=relaxed/simple;
	bh=FmGl8HTdr4TIk8zHxhGReTn/PKmgwp1OS7oVil+UA1E=;
	h=To:Subject:From:Message-Id:Date; b=poMDu1sGBiTgts4MMhwNaWFkOHc7Q+Rt2qX4r6RCnYdk0Aaa21mnhTD24KR39TUyIrojYTeyYRFifbx6S4cX3TmS/0s0TMMrzCPTVwfn3b8v9jDLWyO4M/prUVWAjGoiWsmh2Z7kSwKXmVbkySddVhny6uXWSZ9YzTRkHvbXLCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8ag0bws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8ag0bws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD351C19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772019293;
	bh=FmGl8HTdr4TIk8zHxhGReTn/PKmgwp1OS7oVil+UA1E=;
	h=To:Subject:From:Date:From;
	b=q8ag0bwsiu9hjAIVn55bNd7N1z8pwFtEfEm4pTibCb/LVqMORBF1q3P8sZoUpJd31
	 EXMbSW5KoT6YX32Zv3D0InmY+Ymtv76+ucJwew4cYdQwm6Ei+IBXPpgOL3P1OEBMWe
	 FWh3QiN0QrZl6sEvfKU8TUIx6Mf1F1hxia1wTrspT8Z9MmArmaOgC725xxpNtrpaU8
	 TjkCpAnAGphP50D8Vekk4L7PccPRroJ2RBc7zuLwgs8nI9yBOmvZ8QnN1xn6odoMuY
	 GpOR+nxBdmeRmacU2GNAv9kyiYthai/J9duDjcVySwhxcLYqWFYI/38DjYZ1+jo61W
	 Yev2935qDaN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DEFCEE81
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201929359.13474.7046965163771184993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e749e8659ae81e1da2530948f1126b6876accdf677491766a6e4b7ae7e83888
Date: Wed, 25 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772019293
