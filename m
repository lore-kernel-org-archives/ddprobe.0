Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E70923ED5E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787089834; cv=none; b=FLQ2BB5/y6nK81vOnMfLuTrvRCFWGWavjPpaInC2M5GfKjoG1p/kE1Kuk4VY5MBJ5VyJB2bhTEBjhSM8yE+XZd2bF2k1wMpThvbJxCJmiE7ETo26uG8zd4QZ6dveYGWTV/+eAGN+zIexrsXD61zDdNZGGCkyN2/a+DMgSXDCAvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787089834; c=relaxed/simple;
	bh=RIDfSo9Tfa67BO2n0nOHr/XrbAQaAiJa8RJPXxc1dMY=;
	h=To:Subject:From:Message-Id:Date; b=G29xPtPcPYcdREpZRHHwDsjLrOd+kbHAloX8GoReL9he1GRIzER5eXyGwPumiVwTbfjZxG+X/pZsTXdGZKfOQUNxM6zuAUKQPCSZKQ/rH8c7g97Ct8LTkwV9fmMT7xqSszt4GDOMR4wEKCht7bUZYPjxIDw20E/oOLNGFOZQRp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdKsperx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdKsperx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D182AC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787089833;
	bh=RIDfSo9Tfa67BO2n0nOHr/XrbAQaAiJa8RJPXxc1dMY=;
	h=To:Subject:From:Date:From;
	b=WdKsperxDPriz4chU1rcWVg7fAp97bEIj8soX6qw6uZQ6+EhSgPklRpjJP6pUnj87
	 S0NBsVG5RBue4uvcxCK3WQ3tdFCxPeFEbLKOaomzBRTJN0uwNRlvuO+GbCZ7UNyY/d
	 cVKYWcgLEePqphYAdsMqUhkCSVDhP1yJZepSRws9c/qq+PjdH2Vgqt2J5mmZtJRY2H
	 r16daZGVE6RpXd7dyzbAesG1qnuyQgABZ8uvYYQit5hdcjFa3XFrxRgLqsm2iESJlW
	 IWskKCS30ErvDw/B1078hcWKBVr12od9orpzmbJ52K4M6LE8Ol4wcNSn3DGnrU9q3U
	 C114BC+goG1NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA419C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708983368.1118.3158385709956969153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dc4b30eae90728de0f12b1db1327dad69d0616db8652c5ea2463c81cf17c3a
Date: Tue, 18 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787089833
