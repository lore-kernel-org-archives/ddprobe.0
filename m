Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2225A2571A5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757459395; cv=none; b=ExPc8fZuxWoMgzFtcmwNEgdpxyofS8r93DgrnHNraXYquWL2OgK3sX4xlZtHOsW0Zj3qkb9a8gu+JzwAd8UemTAyefrdtkgqkykl9CIBklDABkAoYxoTSGn8FrjX6ejtip0+uHuvVSPfVdq2d5lvYghTe47XAM0OQzTBV+UTbOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757459395; c=relaxed/simple;
	bh=3acV+T2tHFehuIiwbAi16MuHa5Z1NNHHoQrabcKe52Y=;
	h=To:Subject:From:Message-Id:Date; b=ZCpE7BUIYLM6Y0+3mqYEvjTWU8EYfQP3jsXbEBfkXI2PKV6x95pzmvDc8omKoefN5/1CieM7Pul79LTKl71sAzT4v58ngTOIp62bEzswffCLUTnNhSthDTWMQKpvF//yopdmnlOyFik80kePhVKLg2gjt8ZhKfiBcy2odmIOTiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRSAou3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRSAou3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF73C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757459393;
	bh=3acV+T2tHFehuIiwbAi16MuHa5Z1NNHHoQrabcKe52Y=;
	h=To:Subject:From:Date:From;
	b=vRSAou3bPEMZQ9X5AGtXFn7rADWO//P6mumn4JGuSB6lHBUo/57OB8yKaNSOmdgLc
	 fcd2WNhEDcLpVvZHx88AGViYqInqGxykmmzzFedhZEvZmSBxnd+AMZjCYXYNDaSWI6
	 6S3CrpiftdpVfCfaSbCPr5Hd35RlaVSg8Q8YsEqmPAEX/vnhMcOOBQuV+RAn4yFh7x
	 jyCEDE6erv1Yn0bkyO+xmytatMo+oBaR73uznQbDUdshg8MKM8+SaLhf+S2WHZlrZe
	 L5i5ENwawKZ8kD33ogro760MhaIruAMxmINI8aB860r6BMilvfvGn8ShDJAF1uffXG
	 qfsDP+7r8zO4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8FFCA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745939357.32039.9551450410433583552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2142ff45ce8d2476d5a15b3429f8791bc851626ac8d273a7b55ee35bc4484f2
Date: Tue, 09 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757459393
