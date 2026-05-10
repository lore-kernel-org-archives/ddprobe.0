Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099AB18C008
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778420434; cv=none; b=kJn0zzJQnTVUXDgSfYSNCTEhZ31xrLBuc8QeNOkRaoOEfEsdGw90ny86Hrqhq0P7uFq/H6TncxEN1yAxpVP1Vr9daKjyUatxMbOK7cwfVdqyhvTJnGzgaFm3sMAXKxkYI/S+3yh2H4R/NEM9oPLnwLumiGddMnzTRjt5vuTLfCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778420434; c=relaxed/simple;
	bh=z9atlKnimRSLNv6jP/Wp7K5bwhld4edBSgyI5s8mC8c=;
	h=To:Subject:From:Message-Id:Date; b=gNWaYoUm8kWCvaVV3Basrq/R/Q5tKT7yPCRyvq0NDpOA/2DWhrjSo8TG4p6uQMv5LgbODKhPxPbys8rTjKcPjCTm8q1bhkkwb+BASwIneI3Xt4vMHetoGeX1uFy1RUqaWDmblM4RmiXSCuKUdeeFFRQOYQNMvaWZCxKZVvhwdms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcFXQ29D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcFXQ29D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D4EC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778420433;
	bh=z9atlKnimRSLNv6jP/Wp7K5bwhld4edBSgyI5s8mC8c=;
	h=To:Subject:From:Date:From;
	b=ZcFXQ29DP6DGT0uKMqcXjLYJtRgJbaNRVR6ucOg8ZsbUL4fAZQrHja/xKCOJiHNIE
	 FdnzO55X4oSEoYknCByLbuG91DlDFtEwaHTFnpN/ljI1AOURJ22WCiRqCi3CCnCVnX
	 S6zoJ0NvGmIxvW1PO+6iFsEIJLDumnisJEZS5CaZlYny0NnzIxXBVOu+EBGLO6ODXM
	 3foA7X6hvAQuASBdN+zb886swfX/ez3fc3R6Y3nbyl6PXO++2pwTOAD71w4ocrWF96
	 SNQYMe/zjJAXm5DiugiSC8LizDf0e/DT3G4yU6zoawB6OTUeSzX9cBCOcIElAqBNMK
	 XQhFXAVG1qTcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08B6CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842043368.29671.16791016292436283328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610d124c092b6f7ab912bb42620ac80fcacec7872c6d82bd3bf420041bdb7354
Date: Sun, 10 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778420433
