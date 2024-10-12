Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34468136330
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728729354; cv=none; b=KZ3aLc8acr3REo7pXyCOJT3NXejZ2iyuKfAWKjdKNVQuHEfM9YoOTnrVoLscYOhiTol3DU84NjaAzlbnFCWZCxYAWQ4THpl7xsXvl97Wm5djP/JWBLmOLWgzNqoiwafKgouqHXyPSz/jErRo0Gx0RpbVzInIzzn4iMr3RwZyKTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728729354; c=relaxed/simple;
	bh=Jddy6Ofw+zCS02fFTwJpsu6bn/ntHBTW51IQqz4KJPE=;
	h=To:Subject:From:Message-Id:Date; b=L3CcFTWiaj1tbZLsvgHQSTM14FvN4KftELPm3uQ63VO9zN42WDs5Yp3S5Zpwkx343TaicgFVh7WGorABIfLGTi12ED0XNBxJc3TQOrunEz8ebkPIOsgth6V0dg9emP+7kKfZuV+bBpUvqC7y6sMwTeC569aef+hvm61SQu78uyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPhgkgzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPhgkgzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD786C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728729353;
	bh=Jddy6Ofw+zCS02fFTwJpsu6bn/ntHBTW51IQqz4KJPE=;
	h=To:Subject:From:Date:From;
	b=pPhgkgzX1GDQiuDGSI3kfI44FRVMB04rBTWdl/8BlmT4IBMpVoqkB0BZUEKloy/0w
	 iXS7gytuw/wPoqJ6ohOUDuldO2VFSNtEso1CDB/oS9zsPcCqYoFLpCo94c+nY0NyPf
	 e7xGl5IBz4Vw3HM12ZeV57OlKQAPnWm6bfudBZsD+Quet97y2DvWNMZ5j+UI+Smf5/
	 eIpZLkn+fncHEvufldMAOMd8FozONYXdmdHWxrUfIhaPqJczgAhvGIip8XI4vZmfaw
	 6vsHWgbCuIRiTF/7rIQHK36nTO2OIDxs1AXGiEnU6x51/HBFjBxxTcwJwnVF2cqiM+
	 A78FhRhFMLp6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6FCCF2560
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872935362.28312.3719309315429078260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22aa23b37558e3529b8ade7ed30c6cd44fab9bc60bb9c016ba668f9d90d3d39
Date: Sat, 12 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728729353
