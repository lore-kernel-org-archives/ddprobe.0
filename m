Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5573BB48
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774060494; cv=none; b=oy8Y/UUGmwPpVLkT6U5aZdzepVzhKfEP43AuqL3fr17xRLzSQj+aMxMnd/SYLzFIKXqHdvZ/QoCBGUmkHxyxS0cu2JilXpUIQxc8/kdujn7fzLOd6H5Wu1x5MDztRDAm9V+c/ixeDFcxS46kDm88er0hdG7MIbnAoKJpVANdDos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774060494; c=relaxed/simple;
	bh=IK0e7IJbemy0TpGSU0cUAkBieQyMAQWoCKiUv16xZF0=;
	h=To:Subject:From:Message-Id:Date; b=WTYyEIn2fSwujVooO627CInuSgkuqqf9k4GgUftLutp4DTyFWb0N6eVYPMpEFzsAyYmDTf1nJGfhNhp9Q6Ilqvi0/MXSD/crbWnOR1U8Wtcuwx6oIflKpYI9NuwvsjPXVKLHBxOfgcnmTsjaOD5DvulUjjP+YZrJl4sgvGrfBGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3ERViY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3ERViY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E93DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774060493;
	bh=IK0e7IJbemy0TpGSU0cUAkBieQyMAQWoCKiUv16xZF0=;
	h=To:Subject:From:Date:From;
	b=K3ERViY++RXEqp3G4abwJ42QlWdqCpKW4EepQ7serZ1P4TVpS2Ada/lVue+shNOe6
	 QoL6tdYGz2Ivq0D+QI76rMIGyfGjEEa5irCCxDRG2z7mZbTqgh4UUlLlhND8Afo+ce
	 SWJ4NsXckeN3lOA5Idh/ZwjOHebjHUhiq6EohQHaPyLGp5dmv4TGd8jzDWlYlCV1Vx
	 fwiSFW9kKWDN3kwDVZgzxSEh8NLMIOiK8mGEtAxvi1WGxoDKpgxQZDvzuQzU316blF
	 IBqsTaXUjV4gnS6Me7no79ZQeolWwrsRpJyLZu6SD4dQhqf5vZzSFO0Cvzqq8C8UMb
	 kBE1/bFLbeeog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9401075269
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406049357.12947.5773432824514082984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62adfc8db2b176772d77f60e1a93dabf37adcc53fb9114bc2bf9bf88ed1c793
Date: Sat, 21 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774060493
