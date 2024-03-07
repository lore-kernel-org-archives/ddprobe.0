Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6B8634
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709771297; cv=none; b=Q2VwSlfRqrsnShuswXbM6yarw7IN0M70WaacgjZjJQ0hEPNqJSxE+fa0DBKMkznuolhzkp7fkhrhA+oWRPJ6/16y1X3BsSoZSXpKtQ1oObQdgkpZNREBCjTdj8Qn/959FHetGHc+wvYu3u2CQR79G9EvgRmnQK1xmDrPUGYdzDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709771297; c=relaxed/simple;
	bh=W1XrzB2bDZ8cj3ogQNV7dp1i3nqQ4s1WP5c+HXPo3EU=;
	h=To:Subject:From:Message-Id:Date; b=R0HnSBlg+9iTmttYqH9gkHLFBT84hJ5C5pLNBbevB3RkW3upuwqSI6AmWaJdRtRbWMIA0VuUUAjg/vlGSeqLcTqCSsFSqJ/bjb8ONVwUf4vXQO/OizYOQl8NTzwH6rwcqOzguZZtkpgVwsgFsy0MwH5CK0ZaQUJELo2kb1QKMAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idXFzCcM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idXFzCcM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C44AC433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709771296;
	bh=W1XrzB2bDZ8cj3ogQNV7dp1i3nqQ4s1WP5c+HXPo3EU=;
	h=To:Subject:From:Date:From;
	b=idXFzCcMiplpRUa0u4Pd+YO985X7S2cAhuGmwk6FaEwzpx4hASyoV+H7dWSayZa0T
	 EqB+Tai0GnLj8YzUZ8uYURntYCiaugX2XNUKlHeJFNmNF1Nd1jqkCcmX/lJUi36AXx
	 IPzD3rSNVPTPhhgvVeRbE19iRJumDaWHHgRjRbajL47U8CbQSEiz9Gb8cXwxSonGzj
	 KYV1w/5iCmhHSpTkgi2ZwCCinl8nI47kL7UbSHJyQmnucFF4+h9aEtgN3+LMW1dvLP
	 sqyisSx8TGJWVsZw1BJI6Cb5Nb54il7JhNGe2I+zE9eQN2TeBnX+0Y1PcS9yNrTSQq
	 UHmKxKNT6iD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E68C54E41
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170977129641.4808.7297752961745790479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3ba33afa6fc8956c7b07a0e9b13552d9ba4a56679a2c920dc2808ba0ebe8c0
Date: Thu, 07 Mar 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709771296
