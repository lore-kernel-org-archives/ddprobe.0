Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A0F6112
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711516097; cv=none; b=hShiqWDoRt9kiJE+AHFWkowHQSgmxoK1EgeoJQrZUny7oPSISX16mVtw3n/SWma0VCnJFcUoHE+7aTKFhM6vlmLSdWqdRGMpC//bKsvhkPkD4euccgCWEur39mWVIjzKt5zK7RU0Vnzs7KaUVE8XHx/EWUxUQMIV8Piw4hmzO+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711516097; c=relaxed/simple;
	bh=EvmhlT/4Lqw/Sc8aYzZB7afV6LqoZ1hwKPTUM8Pj45I=;
	h=To:Subject:From:Message-Id:Date; b=Oh8VP2zyz66/3ovSfe/J41JQcwhDz6yR4kFdmjbRDixKhwqg+0JMaIXX5bhAiLViJ/rtz6eiOrVFmGpxgqP/vKi+ih3gh4buRVNhrEyimQeKOLrcXyZ3W/IRJ+fYc51eKGR8jhOYR4gzxvhwyrBCxGfakZAlN2Bc7G1pdXnF4aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av6Oxq1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av6Oxq1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7437DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711516096;
	bh=EvmhlT/4Lqw/Sc8aYzZB7afV6LqoZ1hwKPTUM8Pj45I=;
	h=To:Subject:From:Date:From;
	b=av6Oxq1EJXCjtitFw+Yko8LKC9U/Ms9u7ZaJzk+bvsJvvU35odPhHhhDF+xOhEo6/
	 TgCZ2DpVYgSEyVp4tFYLRqMUJgDQR1v669Eo0hD7EAOgEjeXP529rAukUzBvr642no
	 1sjzZSY1fz+51pMo9KBdal7MJDCFwACPrDWcWVj7WskeRga0TTACSe74fH1TPtCDf8
	 0dVvsgEWp/8hrzSZc2ALejyup/d3LYq0vwrsSVzCykN1RF37+IGX41C3auYj+Xm1OS
	 h4v34gGd+Jcv2WImnXaFbB52Fi4IespEssm4TR58DPos85NG/Qtx5hAytbFdeW1XmR
	 f6oF5hc+bkKRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60806C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171151609638.7289.13886808030290716610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2067c205c57db80bc4607d972c9ebe784611c568a78c23c59d04b21baaed888e
Date: Wed, 27 Mar 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711516096
