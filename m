Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF462E36EB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754108394; cv=none; b=Hc56szgo7c/LMZl4Il/ft4ZQCRZua1slu6EUe/wL2iK6RrqTeUeo8j0I+1oDzbB85FV87xnrGCsazdgTVM16jowFYKtPIAMgH3LWNwS3k3rUNyxXMqLtRFAwzrtQeiF2m5o3uQtLscQKbDTstsrvTpx363uFAVOrZETP1qySM3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754108394; c=relaxed/simple;
	bh=laIoizxp21Lb7mo5gK0Y2903lY38VeGWQYvIt8XEjMU=;
	h=To:Subject:From:Message-Id:Date; b=HduBAAz5Ai+fxl/lrm8U/YE54io4ZvW2hYAPVjwGZz9TVeVXulV2dw+QZK6tRauSOvJg+I9yGHLg1Wk945SY+mN9pCBiiiNXU6vt8nH4aVI8Mu5dEjuGrOnGsJpQrrsfrv4zNSVw3cnTKxBz4Xkp+m7ScFeQvalNUKvYZCXdISM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcQzLAky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcQzLAky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB29C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754108393;
	bh=laIoizxp21Lb7mo5gK0Y2903lY38VeGWQYvIt8XEjMU=;
	h=To:Subject:From:Date:From;
	b=FcQzLAkyM18xMQvdaYGDyuJos17eezwK/I8OEIJt85otmPELiDz2N/t+JAOoqP+Ud
	 GDzEG2sGXdOl6JccBrBuhMgdTPlYthe6gefgRghTag3+6jxASn+nFamOmNldTxeZMv
	 iSKStqOK5R6Y6oEnPX1BsiuQzTXwzEzeMle4Daf67XC7TCT+WBFJ3yv4FWpj9Qq3Ur
	 S+QX6uHW/IPAYU7morSdIk8X7Pq/ikNDteagULiWLRBHogBfBwMiOclRKDvmEa9uxN
	 JEOVcRDSnq7zTKi2Q5xA2ROczzHpQrmjEu+G4MsKqMGV+WeSYDYvMq8uP7kITfiW1y
	 XkU9iZeOpATVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E66C87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410839359.13343.4134730913831510628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c90ff09c02fa0315c9395aa22a7c33de495c1e48143a3240e7e198591d4bb85
Date: Sat, 02 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754108393
