Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBF222DA1C
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766229233; cv=none; b=cjNGft2mRTLYhWcQwrClnMTom4VvQtzer43LbBvc3We5Y1dRbIv53Tu2Kd505udUGP1vzMOG1ydtPvojvlR1YiKZQwOHPwrsg/FAQLR18Rdzugu9QSCpNW2MKiBvGK+7FWbR9RcYUpgKSwYPvy9DVf2gC0UeP9q8wpx9LwJtnRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766229233; c=relaxed/simple;
	bh=seCZwtMVPefR8lF1rCMgr9zv8xOJNDe+bHc5PPXaA6Q=;
	h=To:Subject:From:Message-Id:Date; b=MHUvYc8baM1fgWzoQjZIehc2wAc559qgie70fBEHlDTShI3mfmbGnuk9zx3/ulNH1D3wZJvqVMQW4Olitp4ea8I+VRGbISS77EN41ptsVCW18l0LuWpf5LA0lB5G1+7xY7OQ1LX0GkLojoA5TVqvLuNlEQIv7tDuXymtspJ3GbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgbC/+3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgbC/+3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD0FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766229233;
	bh=seCZwtMVPefR8lF1rCMgr9zv8xOJNDe+bHc5PPXaA6Q=;
	h=To:Subject:From:Date:From;
	b=JgbC/+3yh+Fshd8SPm5bKZWMT+psnFluxMrn/q5uY6tJL2XZ5RKcHDc2/nDjD+hyO
	 cVdl3V4FB8oqO3H+g+/vbjNNvDRyk/3qn2D90tE3kuYPKHBP8hU8R0XVeGrIsnWI9R
	 7TiPljlvydYbMGVz/HqNIZCUrk8dUaE5iDL6q8BwFR5xxg2153WVvWSCfmYPNV+1/1
	 CwWIuOEZ4HvT7BS/Vb7gklzG62+dgYPKCv3NA2PUfkqZj3ktHyX/DGQkO3OF51dyI5
	 Iqd2w4HWSvU2nLhoHTpeRbvv1nmsxyMZy1WkBSZqzxUf2ZdCzwG+4jwG98rhYo8n+s
	 Z2nBC6STOLh/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3CE668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622923358.3649.17945211187655390281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c388ac437e6803e60c205c2558d1bbf4dfaac21aa01c4d2f41b707709eeb963
Date: Sat, 20 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766229233
