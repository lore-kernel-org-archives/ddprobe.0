Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB1517741
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738374954; cv=none; b=e2Yk7H+W49NRIyZRBNQbDyyHWNxMUKK7CBDWCjKItTAYPj05bQBlWDxfwLxJYfo2qdIXbxa7g+BgDgzOihGnjXExLM3vElQiH5iX0krIT7UdlETlVnLgJs8zFbqc0wO+FQEvC5ssShWFzk3u9PL+Zi+GoO3gQBQBe3Pp6OHXHNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738374954; c=relaxed/simple;
	bh=DuKV3I8lhNHzurc/BHyomJuOibfFBCIShrFyJMVWETc=;
	h=To:Subject:From:Message-Id:Date; b=gUWIXc2YT5XhNuUEmpGiPFCAeIjyCutO6PIvTLjxwtkB8eQRG7A6tqdTFLN37i3aAvS4iVM/r8xouBTc3Qt2enVWfU5o6FxuI8x0+f58CdfFBZzzf82bZIoS53VhqU7kJcGWDmNENz5j2AdruV5VGGrUqFZVDWKQknYGtvZoYLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLH/TcDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLH/TcDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B381FC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738374953;
	bh=DuKV3I8lhNHzurc/BHyomJuOibfFBCIShrFyJMVWETc=;
	h=To:Subject:From:Date:From;
	b=NLH/TcDloGwYj9F8hGqarykbOM9Li4H+xgL0b0PqpzFI0YiskJjzvZkN3SF2yuZSn
	 VKz4/m766Uy93u9X4IAUFqc6a5TqujdNLdK2JrzxRJH5M3QaDhswo9EXfd1P8hqd3a
	 H8SgbU4t4ODjzmnf/kJZV/7g9PK5wDcPxMAXKANwcS+f7+lBwsYVTjG/FFtQXuawdp
	 z0Omfv1caJrsqtC1eLU+0SXxwgXmdxVNmR0Ut2DRun3nTQXvuIYj4i+yTdMhqXQZUV
	 AqSkHLOyEG6aRJn3q/O0vOGNZ7nBlKADb88FKflot94D0Z9Z5Lkv8Re7yjlx26mVnF
	 raR3MXCvUv4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B691C02190
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837495359.7706.5040129614166157303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9bf2c2c5dbccc3db8f113fdc386b7e1e322c5346fb3e868ca1fd46c0be98b6
Date: Sat, 01 Feb 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738374953
