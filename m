Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B2621FF4E
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753961396; cv=none; b=Chxo9goLm8ZRLQJghXbNxNrefDPPoXQzjFjfNETqvIQM+8yRctrR7iKUUwlZUpxXhcFeqomAR/v/lCoG1+9H5+OK7K5MAd8bFUvGlfVpJSGRqgvb49KFdnM1BKpXWwj2+WnpLs9cneB7xm5mAJIpg29s+n9mA6mvKCUTwwZhoMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753961396; c=relaxed/simple;
	bh=SRSBGNWz/FbP6Q/SUwvbXK0TZCBotHq+UE3CRaiM+Ew=;
	h=To:Subject:From:Message-Id:Date; b=EndRXeC55aOalhR9FhakVC6NIn66TGbuAj3ovrZSRiHWlIzy3h8vqgrqHLoJ5vmgVPb51ufnwNSZZrw8nnx/30oVqj8rJ8kyFcFbCAf5C4IyDqZXDPY4giPJiTirrrCmBXTA9UaUtDBri12AyBeFwQ5m4pXMb0Qk1vb+S3dQOPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQg7UdPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQg7UdPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC27C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753961393;
	bh=SRSBGNWz/FbP6Q/SUwvbXK0TZCBotHq+UE3CRaiM+Ew=;
	h=To:Subject:From:Date:From;
	b=FQg7UdPfrLWd5VB75eu1ZUAK+2/alxv/sJy27r5W/e6/wDKD7lHvFJAYYB/IB8763
	 50W+olozoEN3OD6rMrYFgvkmixruLGdYlt4AOSHrS2p6p5qo5FacSsxVblJLyTMEPW
	 VV0+fx53XGZody60Cj2sZwe0iUWAXp6BetDeHstF9Attdw+HdCENPkGXDxCQ0XfrJ2
	 q3UNhXqiiFdjppFCNbCf50eRIBWPsbr20/76OAA4wbm0hHV0CKndaHoGYx69ijJkeX
	 NZmWR1W54mzDncbkDvZ0Fi+fcI+c5vDanBrDky2I9EWfufeZ9UJTYSP4MeDogdRtdG
	 EWsrIoEjTIicA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C8C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396139357.27990.14464241983743666197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf9e0c1557349b84251846861c4efea4a39e2fec99187323e445469863df96f
Date: Thu, 31 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753961393
