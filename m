Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135F330DD3C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769379234; cv=none; b=LWKlURoUsrPE+NxVSd5cGn6dH2BI8vCUWAEADqE6f20ySTgInigDDSMIjxZbxD/nOcdN1nOvFCXAe/FucjTErJXNlZZGPA4Wpf/K6bY+EpET9zT+iFvXe73+Gt3jHP4ENwgUoM95a+JxmEJV8tf8qANiMydtddVrqxZZdLenVl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769379234; c=relaxed/simple;
	bh=t/V60XZUbmfyXhDvnnlDvVgaY1lDc5gc0lBkz5rE4YE=;
	h=To:Subject:From:Message-Id:Date; b=lMh16BcHVRZEVhGujtZBBheXyANMQKTJwBUy2XdIX5NFtoOkMNZA25Gm6jWBlO4F8lX+csqFNvvGWn094P1Bee6q06CN7JRC9D1qT/ukFxjDmappJDD5dps8PZ4DsZVbLjDpXjLL1bQ4dJM7cvMtXosqdwe1k8h+nAd5KaHBWuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSybgXq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSybgXq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769379233;
	bh=t/V60XZUbmfyXhDvnnlDvVgaY1lDc5gc0lBkz5rE4YE=;
	h=To:Subject:From:Date:From;
	b=DSybgXq45hgsK2TaNMl1UdOLK7uHDyvjueIlKYdSmewFB5MPxXDt9Pm1pPmqzvk9C
	 K2em2kG+A1KBjEc9gLtnCUkIMtvMpHcPB0jS5Vf5ziB99potc48mxCVXZHy1LBbaxA
	 v+RGC9zylAQsDtIf04qx4wmOCenrvUN/2nTHrJRhS5/GKAp0obZH1az6zoc905ZOQy
	 1s2LIBWSdkgw8flJ/wUX3CshA+cXlMgK2ok8iwTI6c9oFt76IbW4B9AQ/85J56bgEr
	 Trljg46JewLyRjZ1PUy9O5qftdd3qObuBEJRsWXtI6mRqKcEpSrGsea3D7+RZBCqK6
	 v9FyX37DpTrNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90702D7237C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937923358.19984.5222814556347069140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ed4a42f8118feafdba3051fae79238a0635156852b87a1588f44af4de18dde
Date: Sun, 25 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769379233
