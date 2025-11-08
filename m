Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127EA2F7444
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762597194; cv=none; b=cz9kPlFrY07rAD+UmJPYaKIpbqhMNwUAhTvETVMZsZH797bPqULaPZMKlOf0RpDMVf+0WUjtPUHlwEinWxghCJNSYgpBni7T59SquHFkuWlAEqlPTM9lNtgH9QqgClLZk3QeXFmQoRTB0eKHeT9x1C55B1qIZY/5ml1FNRVSh2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762597194; c=relaxed/simple;
	bh=SVjemeWc4/dBwlbZoN3qWT0J9fX+MrBJvsJ6p6kmNSI=;
	h=To:Subject:From:Message-Id:Date; b=sctucKaO+2Cf3z1/vFLPxdj3NazF/uzXzLRH3wP//FS5NADukdDbD9LMrnbWx/RGvBcHgCUIgr3qDT3BOJlpaA83ik/ilv4p7W/is9LXdyPMyW7kzwITviMvA2cMLI20FzDVt/V9iK+DxT9k/GVkrKfiOPY/XVmDFEyLM6/7Q8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGAVBa4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGAVBa4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFECC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762597193;
	bh=SVjemeWc4/dBwlbZoN3qWT0J9fX+MrBJvsJ6p6kmNSI=;
	h=To:Subject:From:Date:From;
	b=UGAVBa4EOYnFCvFGiDtTtByuAh19mmXQrSzwgXbQUy5ceplOBgRi7xDO4ie+Ohsw+
	 U2bHdRrnfP5W+6qwPflh4Mi62qtfmIUNfi3UfkJZ2zPNVj0ept2I/b5zvl+5mACKzd
	 ffkH9jNJqyxL5pVTVUfJutpncHoS76/wQuOSCjJGTRPaqmGmIl5JGd5BuJlBOD1bqT
	 /Ajl24eHXoayl+2O436O37hjbH43nJzSenAx+Qy0XjjUE4pP405qpNwrueEjH5f9zq
	 jM2+nUK0oGyWEfEuG312b8ZQfYwEEA/Zc95Pcte5gA8knIm4RIiQu+X+PMxumc6uo/
	 PmqG0wJMZU54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089BCCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259719358.7917.14984987398346541511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7479a2c838da64b68ba9869767b9ee0f4a83b1f5a969398d56a16305794039f
Date: Sat, 08 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762597193
