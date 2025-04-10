Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E3F1EF372
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744274394; cv=none; b=m1guK53SYeAe/9lzgJprplBRMQt5/Tf2+/mth7I8V9zZnEplQzXpKRyRg48ebWEHzzFWcX8SdodHPISaJyfmWs2FOy+zSXpD0W8cG2wYu0UbkgT9BR4MlJKf5Y91v4++KZ+d2JCBEBNTFN2xXnJ4C5b7BvuuwNmTiVx1xZIGpBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744274394; c=relaxed/simple;
	bh=a4e3ECH2Cg5MXkm4bebrf4RyA76hhnBiOPT6WYXP7pY=;
	h=To:Subject:From:Message-Id:Date; b=SWYd3jI0tqmSYnOt7OPyy06J3Y9i82fSJ+Ziz621k+HPltVvUIXPB5Ke4YaaFHtv3cMnvzndwXSbchRiNkqjcZXs7a0QyqZBPZSFdNRrt+1jzHPlbhUyX2G8hDi37OX6Myp49sducSaFE80TcUeQMzRuWKN4r5vtBUwR79OM5qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjxjclIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjxjclIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA497C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744274393;
	bh=a4e3ECH2Cg5MXkm4bebrf4RyA76hhnBiOPT6WYXP7pY=;
	h=To:Subject:From:Date:From;
	b=kjxjclIo2bBd1UgFaTSQAUTzpaS6JsNJtCJWBHeRzvvbJi71Wl/6Zgh0GMZNIvE3Q
	 AftniRqUHcVu0sYWeC5/oZ1ixEYmKo2ck3+V5NaZLaozqNT0HLCkg/nZ8ntEIrrB2Y
	 /WWuv8+6GJw2wAnsn68Ap2Xnbi7hmzPy7l3ZPplVlhMSTqhEGO8EsNv91HJ1jCIm0o
	 ZOjkC1Br/VvCF3pKTPwBODInsTNckEBnMFPbUkPHjFamfVxl/dTopURWOiJesibGxE
	 N50s0fnPM4BnZl31RPi89EBbG+PzO41gm11j6BKR3vyCdgwlZEL0EnDsBNZoljULno
	 i/SBi810Z4ikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92623C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427439359.23868.1990156038878742279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4132647d92b920fdffd934a824ce3e121f9961bfaba1cd43f0b59d7765e442df
Date: Thu, 10 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744274393
