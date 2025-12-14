Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108E749659
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765713774; cv=none; b=BhChJD1np+79Y0/6/4WF6WBYIYBJ3mCLlFEpbbffBaDEy27HAMiJIpXT6oHh02w59b7FS0YtdZBBzO1Ic2TTDPK0G1WuZ0k3XYCt9jvZlXJHNz4dYRvAE1hWcCEnngKUEX24BAMLkenHw2m7Nsj3UvOrmYXKGK9sm3pyQ6c4LV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765713774; c=relaxed/simple;
	bh=WcQiisUVU20esECpEAYGFnenjaFj/V4RUYI4n7P4488=;
	h=To:Subject:From:Message-Id:Date; b=VuePSifB6u0+hfSzzPZ8om6twGo6kDaiL1L8/LrA19nA6bp6uX6VFAxAKLaULTHH6scTiA7ozz0jMBAgiQeI0OfZzE45A1TUjqxC86midutLH4+ABNXCn63fPUfON8USGyzA77aLHFI3HRUDG+SV6TTPLUwVoJ3qb6sv/4AdLF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJOSJpS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJOSJpS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC545C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765713773;
	bh=WcQiisUVU20esECpEAYGFnenjaFj/V4RUYI4n7P4488=;
	h=To:Subject:From:Date:From;
	b=eJOSJpS3KTUMoq4gu3IN49I/7/0KO+lvx5kMjzKI0HA4my8nRnjf/ip5xSQROkd9Y
	 sXd+nKQ9QcCoqERZtHYiV3gaa7HqTTqUlXwJK8RBGTGAX9WAIXMfwDUD/Fe2ckFbgH
	 aiLC5usbFHfLAlRR5Xl1rNfNeCWcjejdGvJyV+9vfzkiaGvz4xKMl60lpCVcpqjU84
	 fhvv/9dz2FnBN+zNHwUgwTFWlv9QB7sChzyFQEd67zgdNDNHs8K38guFaS0FhY26Jm
	 45kiY20f2ziUVJe0o+EKPOgITdn2y3pNd++jMQxftr2rfuI39k3hpv89wArrFgLeyr
	 Of1GvDJlPbZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9978DD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571377359.12390.7497401147182861235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d69aece071c941458155950a9dfb439bb3e0df92f5c304aae0e9ff98666b143
Date: Sun, 14 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765713773
