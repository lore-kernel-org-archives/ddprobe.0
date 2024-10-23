Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4AF51C5A
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729652154; cv=none; b=Kuulzludcat6A/4Gsv1GATF4M+JtKeV8CC1J9agwNbmG0cJGtbUHDt9eIBR0H69y/KxOEW9/+ACL1AGUVIu5Vu/jGBoNRen4mRMRsGpvsIGyLn+L25n+wfPc2W2L3G4JcD6kxZq53vvTpIY3ElvUiBg7cvWaX0V2Uc/F1ZVOfGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729652154; c=relaxed/simple;
	bh=KdVsFxexNUS56uZKGMhYufTqpr9byqFglIVrS/XIqDE=;
	h=To:Subject:From:Message-Id:Date; b=UUhctd60ZE60NcA3PngDNoIWh/pSuuulvFcXAqmCbKg9aNWjfXwJIa61a8t2B49rXvGTFwxO0e8HO1jaD1MMXvyel5VAMw5YfeLenAB7pwaDDEIMA+KR5Ao1IGvaNQPiN65G+5uFDrQ4la4l2l6w7RIgLLICPbS0czv2FrOThAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+T3/OIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+T3/OIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A453BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729652153;
	bh=KdVsFxexNUS56uZKGMhYufTqpr9byqFglIVrS/XIqDE=;
	h=To:Subject:From:Date:From;
	b=i+T3/OIVes1HUflWN9EULbh+H7BDw6illUc41LUaihH66Na1rej5mFywOGbunNpyW
	 Glcyz/3XW83c2ndTGomLSsqUoscOTHlOK/ZteXNZJZq/ASHvEcM9Rq1urZacFEnfEf
	 McJjVJlAiZoRoj9AdriM1ZpY6ipPBpfIhPJwldRth7UAwJcSts8jJZ8DtLXz3CpdCi
	 AE+5sUYEou/QMpU96doDV8C1fqki3ZjXCvcQSVFJc+z+mtJMq0paL45zBOGCHxxvSI
	 DV+0sq06JKi2zUGozOevzEjyv7NYfGfv+gZt1Et4Wba1UAUEFpOYmLkWJtY67YnpVY
	 x98yAxeu6RC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706CD2E008
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172965215361.24947.18055858705282906213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4cdeed2f9212f3e4ab563691a4533b174676f8ba4d88725bca4199f841033a
Date: Wed, 23 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729652153
