Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7696B190068
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720607183; cv=none; b=RY+C9YaccNiW8pGD6H35xfHzjkHAuAbNAcURKzIPAkBOwLYY8HxgU+pgozyAdYC3tPBG+QnF/Payh17WpE8K54j43UGD3I1849cQC9tPQ1whTf0CnHRTw9Fi2IOr+pxKhAtC82x45XuIqRKwuBQ3gTRAw/0sCIpD5AnXkKNbAek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720607183; c=relaxed/simple;
	bh=lzzjDmbbZLIWOPSzxtzFr29UwHdSwCQUhy8862jUwLo=;
	h=To:Subject:From:Message-Id:Date; b=kdQQJHi4PTWDf5qLwF8LvaSoBgjWn1EbO1Ib6Nf1EfBiiOYpO4HK4VTJtU5hdEmj7Yl1mQR+N5Ol17NmRbuK8kP0xcHajEKXZ9osoEnCwtr93upnlHkfZwsAA7GMTryhnnOfJHCR1b6msXBLaJBopu7pozel7Vjmx8IP+3pHLwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAv2JAVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAv2JAVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE864C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720607183;
	bh=lzzjDmbbZLIWOPSzxtzFr29UwHdSwCQUhy8862jUwLo=;
	h=To:Subject:From:Date:From;
	b=PAv2JAVyRQccWM9rdqCczD0e53cGo0E2LHLgQ36KFYtt3tGO4iLccn0dkvOu9sPdM
	 kfD3mffMa2RTqUBRss1vVHygaQXyggSMo+zrslTyT4PVBr6ydCsS8F/0JhsifFAhbp
	 ZYSPgdTh3drLSQZ3icvW+RlzQXdt3PRxAsEGEcVyfGqtqecu0reXlc/397kE73ZaLc
	 tBY95AxfnIhS2E59igizv9069L2hjxloY75ifEUwutZXkrs/oJ5Jt1Jeutw45eCKfg
	 BlvCV4M9y2Lt7x8IkZjt0vaLmccwWNZQA6JJerR+TRVnf1MK7dDBwMLKh8iZBIRENu
	 ivVZ3h69SyumA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF70DC3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060718284.7735.104443671831303532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c21cda6bf0cf16d0c8d4b6dfd32e9dd0fa695fda48b60bb9f66ee68043c70b9
Date: Wed, 10 Jul 2024 10:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720607182
