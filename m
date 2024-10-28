Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8581922FC
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730136954; cv=none; b=Su9cARC7CIl+sDVoh6dkLbW5bYBWohv+PiZFxnHZ8r2Fldg1d4xgAYPdMPUWpOD+2HL5tHmP+97mx5fiVAuqDEAAX9+4vxzGOjJawCQxGyomNDwaenWhhevij4m5tAY3B4en+6oTphRNBo7toAu4tFzZgENY+Q44+rJR7vBSN4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730136954; c=relaxed/simple;
	bh=tg/Y9esfleyPDDc9wDH2LWITGPsn66Cn039PrHn8iSA=;
	h=To:Subject:From:Message-Id:Date; b=F+ldJX7jYN4hms4F8AqbytcgAqm/ouRah2eWhNG1nGndwSpf68yHbojpC2Gx0aaN3CKoLZxuFvvJRykyddbBDMDM4mb23DesJvMB52yO64NOATcdwLZG3Lpku+AgR2XmO/FqZKDUJH32F0zQ2/mrGtkmacmBH4fzWBimNeY8opc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX9PUH6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX9PUH6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7561C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730136953;
	bh=tg/Y9esfleyPDDc9wDH2LWITGPsn66Cn039PrHn8iSA=;
	h=To:Subject:From:Date:From;
	b=eX9PUH6pMrOhVnhmUT1n9U+UKzYWTud75+C/MOtaR67RQ71SOrL4sPmh1d+YpVHB8
	 n9C758JcZo9rvNz6siPXCla700Gl6Lp2iQXVG9bMCzSFWh992ZnZxsgwPFoidT4UZI
	 BYQVw0jjEqiyjmOREi135wRSMU5mEfGuqfWPsXidb2wMVIXFS76plmSnuToBYwfU/5
	 ig8shJIXe+OFB+7Rh4Ykl9+4arrzEe0GzQS8oHVMBPDbk3MStb/Xhnt/yLshozg85A
	 eEp5Cba6Dt/cwwn+z65whmod4AI7c52QllH2ppcz47Kn9Z6oHP1C+UjOJPUpxmEp/D
	 v64k3WSPjRsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659AD339A9
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173013695360.25625.8886076562157489936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559e3dbd77bc79e27d3d653d8433046f2c10dda6e2fdc3d1bc69cca7c4399fff
Date: Mon, 28 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730136953
