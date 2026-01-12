Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129E21A724C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768182834; cv=none; b=AhTU7xHfmEYcCw4KC1haebARrZHIzXlJ1v56VpygaT5GKKgMlRl1EJspHw6f/jNUyUc7kyzb+89S7qIo7eoRwikyTJzt+9abID2IOzG7SV7Wyee6e9LYYoMuoVZp1u4JA9k4qgHW4boIhc/8Bw78epPi+TRmMFvuGmayzZ7ILpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768182834; c=relaxed/simple;
	bh=KEVr3ZWALZYdT16vFQnnrlhZEMjOU86nU7xaI4HzO+g=;
	h=To:Subject:From:Message-Id:Date; b=L1VODRUo/5ZaDPMB88crIiM/gjz3BWvUZNum8xIZzlUQoVVAja8HrEvv1v8APEwkXidmaLdWFfL1PXEb54ztfdfmx8YwfSRatPToVIoXxNshfz9gHGx3mjuNR1mMStMTdkBRz1ya2Ke18zmtGgmCpl+2Rm8Fd/re8fy2dQXotbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6tT2+ky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6tT2+ky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A112CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768182833;
	bh=KEVr3ZWALZYdT16vFQnnrlhZEMjOU86nU7xaI4HzO+g=;
	h=To:Subject:From:Date:From;
	b=Y6tT2+kyxbuTeSBmsJ2oBVnjwsSEqhdKEPnQst4ttq74TUd/BL5Rsb5YLkiaBqahb
	 y68u5Q11Iegu/VnYqMDLxZzv7L6NgrM2XVboWu5xDXO30EWrcoFA3zpj51qOSlqZSB
	 nzr1zZvAS9jUsDikCz87vjhnnSBgNnxCM3srYCE9H22x+65G/Xbg4Q6wWBFTttZW+b
	 vJ8jNWuGINo4A+lX25o8riXuJ7Xypwj5q9LYcgwEq+XpAC3ZatjIAvfWWkSZfpca5L
	 UHGH7sIA9Z3QKJtS2wKrVrRg2vx5Rp3QY6o4diNUi6yYPm+p5XPwzBHVXTwDPvEm/R
	 kWvurvUoWEujw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F565D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818283357.5697.7427681595615201723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5c5bbe67ec1722605231d43c5bc6e948f866a4fcc09c37580fb45c1181e82f
Date: Mon, 12 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768182833
