Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1712EDD40
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768854234; cv=none; b=fIOPq9RBmrFCOSLa9NJCut6fBjQNVgKiAW4rPq5WrVYhMMM1wiAUsT6KCp6Vd6zjnKysyrLEDnrIBvXe8TV3vxCWoVRYtH/HRiFL9g1wB34XxGA7zzDPx/M8lvQxsVoX5t2SUx7S6E37MHKIMK6piOy3r1PsQE7Sd6rlC21zb84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768854234; c=relaxed/simple;
	bh=j9uAhb2D8ScmAsR+eimRT2R86SGfWBrdq91G6CSwpEk=;
	h=To:Subject:From:Message-Id:Date; b=dKVXYYLiiRnXJ0BCYt0D5Xjey1RMWDOmL7rWYOsZnmh1FkqxjOptuP8+NvRaXdjC99ssipbCW5BHy0Izltmgv5swmmjRHgGmyOTJ+BtuUjkYyNBHmUPROdjjs4P/2PiIQS1h5T9z6jzToqwnAvFSK/dsb8L+HfJ1MZVucEvWNxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vxj1bgqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vxj1bgqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0174C19422
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768854233;
	bh=j9uAhb2D8ScmAsR+eimRT2R86SGfWBrdq91G6CSwpEk=;
	h=To:Subject:From:Date:From;
	b=Vxj1bgqvxILlLQm+4Rnw+qhb6oYie9fJkQnxJ23wd89l03GEYcLFcezlaPBcvMOEg
	 Zc2Hwexm5F9ATjVYdaEwINpZc+jaGbwkYFQL2iMA0IOaDe3k9s1b5yiOyoH59tPNxK
	 YIs0LXutVZSRzAjCE6i0Lnhzei8/rQYcXzcwFL+Ne3rugDuVy04v7jz1vCyrNR+Pir
	 t+wIOAw0rqLTIUZk919K1FSDkDg67A7a4urOfPMOkB+Jmgj43syk8/kmnmOiLuWTO4
	 JIRcpRx388rkCgQ5NI3vwAkmh3GZR7iFbGJrM4QDNIHA/IyWNlE22vXgrLHAEb86S+
	 QbsM5k/ZzGaAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF22D29C4D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885423358.3606.8016257804778220464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ab2e5f1bb2368e3a4a8fc4e889ec999e785949f234f232150a96309c7ba671
Date: Mon, 19 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768854233
