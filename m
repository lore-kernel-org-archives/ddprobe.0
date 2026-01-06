Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106881E511
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767670434; cv=none; b=mTaPTzZ9/xVose1KuJF/lq3mhlX4EYKJbGWas+yG4CWb87zGTpEASz0+BenC7//RXJ9Pb+YFVzg0dzuU7AhNNEBLwPhf2YrzwnoTPdIG6Grlo3Yv1SbOOYG4LmP2J8B0k4uVZUbLxiph3eiwdVVmhgjXC7sMDQwjH3ugpxrxeS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767670434; c=relaxed/simple;
	bh=RWuaUqbdpCtvUQ45sC/CghAzyQCHWK0fohTFbV5XW4U=;
	h=To:Subject:From:Message-Id:Date; b=oFvQoNkCiFUQ/XR7pJVk+I0DCMlbpT/Nrq5tXKPhpV0Pvi2dSJ1oyew4jIwUA8xO14QSBxYyX6Gnmy9I5/J8BgKzI++ej/8b4f9bB0QK614woa1lh7UiT3CMCI3lsUBt9PE1BNWuJagVT/3j3OU5TBollcjjJibO2Q0yRvsCPyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9bMlhGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9bMlhGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BCEC116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767670433;
	bh=RWuaUqbdpCtvUQ45sC/CghAzyQCHWK0fohTFbV5XW4U=;
	h=To:Subject:From:Date:From;
	b=s9bMlhGnCXuvmVXZzGyFfJAT9cKmIKiJ0qWB3G9NjcFxc6bROEJucWGQo7+138CPZ
	 /zr0XR5vyuh1axV8ivTsi5fxbFmNy5O5mCZQMcKghgVpDS3TaZ0wGd6SIaw0HoB0oc
	 +GKVZ+2vYSCvt76Tp5a/PEI1sliRt1FSCAS4581dWkzTsVVWsI+0rY7WzO+9MRfyGW
	 WxAMk4Pr9rmNIcZojv66YEplKfIOTGmp4DlpiwwyHWckAlxXhjBrWytTy4ZoVtnaBf
	 BTOUSjxqh3qJ9/V6chqsDDFHBXNrsrYwBAPFaPK64de8W8qLDkuEx9Vmz4poP9byJY
	 LIulFCMIfciRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94968CD0431
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767043357.30063.457590288571374517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4486f58ffcea9e5814286ba00bd3d2e88d59c2a0d74062c921e6282b7885d6d
Date: Tue, 06 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767670433
