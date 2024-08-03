Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7C56FA8
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722708354; cv=none; b=XQJUwz3ZXJpupruIlnrFfKxMBQ3lZIiW8vPNDk5uiq82zDC8pOR5z5wPJ/hiU3LLiJsPcDZiWdms0zgZNT0YW2hV1M3KD8Ou2Lv/fdAYWAcOW2Pgkji9S+Mk5l8hZLlaDodm70aTaGHODuYdzSyVE51q+P5bd+8mHgYlE/bE3Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722708354; c=relaxed/simple;
	bh=OaOkRzyTCdHrr37ACubVxQq3znWbI5vwdYxck+jJUoY=;
	h=To:Subject:From:Message-Id:Date; b=FwJ3XTms8Lp+9Kezala+GwHPic+jOqUwzoMEXt14FF2XjNAUYuPEY2e/bnHRZoFu8e3US+IwhHSZ/ko6WHPCDVXE+VjV6cpKMQsnt5IHsC3iR73PXCV0sSGgTy+1dSx8pAJtGHT3W4dxd+VALBnbr4pOfJqaETGltDft4EYBVow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXFqFoeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXFqFoeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB19CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722708353;
	bh=OaOkRzyTCdHrr37ACubVxQq3znWbI5vwdYxck+jJUoY=;
	h=To:Subject:From:Date:From;
	b=PXFqFoeFoUfN14xxEtmj1jTQGjcsom6HO/tA7plBu+1u99mWehq5wKAxLM0LDf1GJ
	 zhIwySCa9hsmWoZaCd7gnTzI7RmxdK8ehbL7iWL7AAfmvJphwVTAUt2let+xXSe1xo
	 4ryZllxanPjeJt3wMFpNNDLnnOPbSMs4t4L+23aNdkv3CWOOxcAVR3L5i5ZbfLxAA5
	 KAH5sqUj2Js0L+9zzE24nUfwkvY9P/HTk/BDJeDxb16drJ2Xmautvafx+AN1W7k7c2
	 vrSDAifTxeBVZ1bJhaGL5FVphZwsHVtovN6+o1kvQr8C/WiMoG8f9SxSomGhh49Slz
	 Uwrurfjeccn+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A134DC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172270835362.14055.5742139777359783887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78f442787f84181b2dbc1747ff3bb873b40d48ac9acc8cee798f5d7553832b9
Date: Sat, 03 Aug 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722708353
