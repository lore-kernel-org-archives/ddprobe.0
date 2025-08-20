Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ECB27BF99
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755695994; cv=none; b=PPIZnx7LCzuHbvP8uiF7jQ+c2oRweB2o7KSYUSWImbzLaawzOKYGikMF/co8RJmEdsLrfCd3HsSdBsw82fBJal+hRu/V2lYF1ibIhnPox7n9mD72/zND7vCDqWiKOOhPTLr/5dHcrCcjRhlY77KrdsKAoaKKTfrumvs3VlBoANQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755695994; c=relaxed/simple;
	bh=4Olh2CDwamgh8sI6Gwnwl4eR2j9jyyyspzjNPXeUo80=;
	h=To:Subject:From:Message-Id:Date; b=He9lEUbMO+aKUKN3ujY2PEVl4tBKGuV6R/0SebLYDrBqfasSnfHyXjDYMHFhYebG/Wtc2m+us/05FkAP4XDpSvEPX12PKwxUpdRVzHuZLcPTRdB82Ns+9WU+NBOOWM/sgDE/EH4/UQzFpXyr+eTuc7XnMXJw5ciqGd4WhETpFuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBTAlAve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBTAlAve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE64C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755695993;
	bh=4Olh2CDwamgh8sI6Gwnwl4eR2j9jyyyspzjNPXeUo80=;
	h=To:Subject:From:Date:From;
	b=LBTAlAvesPAWb39WzIqAQpZgO2eon/Qj7dqWCNnRcGZJ0GPjnQX2rpm0AhY4l+pAy
	 WhDMAVGMuSVxWQ6FEG9Km0r555C40i4aQ7GqSDVnivhljYskndBtcjCurZH3al6D09
	 K315cWGRkf6XRIx0pG9Uk7XTTZmmjScohIC4UeqNbW3H0IbZ5M4kmcHFtgi/ed9sLD
	 ruTAlVwa1YXikS2UJRsfX1Dyr75hWOtD50VzazRomhEVddLH0Yzz58AiHvHJgTT+M1
	 qHhITdHPKAiAjJ40eKkNGcmvAdnLjpar2SuwBdmHsibLF6SRTAzPnW0i2UDXmvALwX
	 JcoLs4s9Lyq5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E423CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569599357.15594.1707382234984894545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e06d322af0d1345e5733741e90d91a94991cfdecd2f682d3f8afee517a9615e
Date: Wed, 20 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755695993
