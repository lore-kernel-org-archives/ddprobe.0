Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A872882BB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761668394; cv=none; b=h0AY9cUV1iDCvg84qPmu8D7+N+lUuHqAVdbPfuoApI1BIK0li7L66zCS5siilhLwqCmpNrC9U7LM8JWeOdbn07qznY/WByU+Z3YtSJf5rSubmm94NNbR0JvrerJoAcs9MOU7cyB2k1UrNLbwLpaONfhM9bHKtsCBbHVuRMINO6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761668394; c=relaxed/simple;
	bh=UIZDcaboeTrM36fhwZa8qu5OFJaBJQ6kWK+cRXa24ho=;
	h=To:Subject:From:Message-Id:Date; b=fBIECk/BF4ikPQ1qjYvLeTzVwrR6Aep/Tdk4Tf4NzeSySs5nT4jDGfod2KfM0mBUg4H4e7YMsUzxqfywAxA8XHiHek3uXpiHgHBS80w9SkGfL678quqBuY+xGscUE5+AmDRneSw+H+r+qJsyv8d5/DEz4OzZJOCSYyIr2OaNjII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXUeEIIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXUeEIIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A448BC4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761668393;
	bh=UIZDcaboeTrM36fhwZa8qu5OFJaBJQ6kWK+cRXa24ho=;
	h=To:Subject:From:Date:From;
	b=oXUeEIIO1pruxQUOkIy09iKueZryNsbGrt+xbAdeY+NXWqYTIuUlFv7t9JaQJmvg4
	 qEoF9rgNzye7xHC3hau1T4oyGJbm2akd6M9d5UJ2UjUPpOySHb7pvbWW7Vjaf7e+gI
	 j2V3QFs2RaKTSyTG7PUl9SYRl6f30Zp9QpkhSXW8BapGxdx2FVInBgYERYe7+YEQt7
	 sseBx/Lj4X/J8FEaYzWXS5UhRMmLJIbN2Bgn/Zk2OHvWGsMLuvZ/mCroUtDoA1HhlE
	 AzA92AUzuMcP1Ni9p1xQK5Zoxj8L4Mu11RwS0kcsPwDvSDF06vtO+xVMN1ExjP9Z+B
	 sXF5/5cGPjKnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF2CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166839357.14255.10497911602634016953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408d1198a0f66647ee1469fa18f2e9fd34d9a166bd9b8dae9951f02f97e1d229
Date: Tue, 28 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761668393
