Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB28460
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776126454; cv=none; b=aoO3HnXB4T6PFMR1NBHXb2kNUICuHZ+ROH71Vj3pFUsfwjz5NLCXl7htffjJ+904aD9DWM/PYy4tevO/kgt/hfP146dkR0seza1YD3uZo6O7W8J9F4TanHqv0kHdLlXJ4n9896JbJZtepqjVxYpSPa7kAlhwJhGgqURyDrM+iWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776126454; c=relaxed/simple;
	bh=Q4xanUmO1/ENvj9mFpyq0aTEBreGQY1dHavTQ0QXQWc=;
	h=To:Subject:From:Message-Id:Date; b=OQKDmxb3FOA+7O0YSAfI5p8hFoEbkqDXd91plQM9JCCGpt5/h+4lsjVD/cSALMxld9qfwr+HR4R7Db4h70jcyIDE9nHUQ/O2zMazRVudsh1ZpOl8kMhLyWDw8piVcKH+wY+lSqa1bqQiP+bTAQJZVqBrStON40EZ+AljFuLDl+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OegEz+Ti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OegEz+Ti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1463C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776126453;
	bh=Q4xanUmO1/ENvj9mFpyq0aTEBreGQY1dHavTQ0QXQWc=;
	h=To:Subject:From:Date:From;
	b=OegEz+TitZQqs9Co6SK3Ev88ImASaoODEMyPA/R5nsEM7H06iTC7r4kOh/TE6nXIZ
	 LwSbkIAIVdiXeCJS18vL1ne/v2DL6boz4/9dk/Z0KWyGP/b+Php8rhXRC3Fs4rykBM
	 RE4WTKUdkuJuUI9LDGvkUevHWO30zcivKwPeKFDeXO8tRSnKyNgPJyo1cQHEpVevC/
	 RpI1QdUBCMPpqI5wcOPi0DG2IMl+XlhbWjHw/6nsq2SISyBaYgKuK9lIqLx3VxWYVK
	 kriHgrZTfueiEE2Yv2Sddor9Yto0fngt0SkkOgth3DmHvB44NWn9D3nkoM2rXkU9JV
	 SJy5osBREF4FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEB0F531DC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612645368.1013.4018612762696666613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191c35fff88280eb0c03ebcf56379fdb94224da5ec048f7a964c9b84c6e500ea
Date: Tue, 14 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776126453
