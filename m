Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1418D38F64E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783713514; cv=none; b=ndydVYunFtIvlAEXsaCWFNDLC7k6Ke5H+7y1x1dKi+CoAAAzYInsntAOQCEAYEDY27W1tUvwfhXSOLpbns7Wkim8jQVmsme4XyZStq4TSyOw1gtRq0570lMiYpSg2QYm0SmVSGdIXeWuby3C9A76XG0n2XSpSZptFPdyl/MFXlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783713514; c=relaxed/simple;
	bh=wES2iwTKKeEna9UAEQt0i+CT6Csf/wT/D/1au5aMAiI=;
	h=To:Subject:From:Message-Id:Date; b=houn2KmmdKTnANN5HhJKMukV4u4V8pO1Rx3r5a5FeMe1Tdyy9OKZo0Pv9R4Vy4Pxz+COVseYrGPt9m0lHNaRFCYAeRwVQXHJwLn90+KknSVV+K4YYgelLiwrU81APGMOOYGWPLTiP+C9RkV1BS559UFx51HM6e0J9R3iH9A6K/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueSl0RV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueSl0RV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3698C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783713513;
	bh=wES2iwTKKeEna9UAEQt0i+CT6Csf/wT/D/1au5aMAiI=;
	h=To:Subject:From:Date:From;
	b=ueSl0RV/5uxGfDE7oY06F1NOWMoVvyc0vX3vuqRt7Xrs0EoGMtzsqAE8fMhmTA8Fz
	 Cih88Tqq7zLUvsFrFBrOmd2jsYoNqcqJ4Ky2+rj0Y7PnxfduZ7MW4NELDHb0v3Iwq1
	 vZ0cEaHZRRla8TsELmuAURBVfjbBS2hJYLwL5PSPMfaBwx7Af06YWZcDM9LKO0hm4W
	 7pVuEuQ7knqXk0rYsUsKojUvEB4RqrrgVdsvRvn8srxp6AQ4HUEZi3pf3wR/CqXKjl
	 Ywjc1S0PlIMTmP8gxbkJejpVykZFOvJlOzGEmh2BPsOx2NjhYfcteSPTGLgr7PSRqC
	 xkO/prvSQmHzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA64C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371351368.10019.10058855560394407494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ea320c3a8c42496a1912141cee0ecad4fd132e15e6a6b1df75c1587df7ffc1
Date: Fri, 10 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783713513
