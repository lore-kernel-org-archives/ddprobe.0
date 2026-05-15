Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F8440B6D8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778863834; cv=none; b=FfJwtiQmR/W24J+LYFvqVE+UOsWohzSgHwH8X8Ohox+xKe6/5lPxie9/u9y5ZXEKbcK09UrYXI57sqzbTZ6X/K/ZRVR7SsYvGjSBSsWlxzeHMuCaQDl37/tMUD1LjNd5Vp6DcsCsN+sTFyHhzm/GaH3KTIxlu17pk4BttxCGgFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778863834; c=relaxed/simple;
	bh=0j6dglBLKk1KVBcjk3H0I7oCeuAJO+UrDPFlECaAP28=;
	h=To:Subject:From:Message-Id:Date; b=tbA5SKCsWsw0AWfUAlUqoKp/KBsoZYnuMCGqWqzPjbrjhIDiVXq32DVUGdSLYrEdqfOkPSPIrlXkMDyJ6ZTTbP+t/4jepp3mTdD+G8+a2uW+Tc2Gvd/76aczZB2spu+xHRgzdUEjhkFIPgXK7Xo8Jk1mPlnGJE5Y2bxYKV7qNJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1biNzuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1biNzuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB56BC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778863833;
	bh=0j6dglBLKk1KVBcjk3H0I7oCeuAJO+UrDPFlECaAP28=;
	h=To:Subject:From:Date:From;
	b=J1biNzuZOcdruCZkETAx/C5adHNCNgcKF8ipc3t5eswZpeQ7hxieobyHkI5fBSj+q
	 YyQI0bLVpmprKUeuwi9ncv8PGt1AQ0PMPitUncplMdxcF46Lm2qtVxcVmSMdJ5C84j
	 iJ0SEQWOfZfwpb/dU/AINfbijJMf+BMmzcKzGwKZon1piER1pYkL1PkKnYEKnMddfH
	 ChURiFweqYNpNzWg8COtbnID2ZUSMwLy/IlqduIVly8OeMO8Av5CmSDz6HMtYUuz5t
	 ReekUEeAg2vQqwRtp/0q8Qxmp03ov1rWO63c2LQYjROK+6nNVUyHowkmzORvv6rW9U
	 BuG5f8p9s1qHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA40CCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886383368.10559.17524130216200787732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72cab8ffe81875cc70fff0e3784a568b95e8e91e6f8cf7700f518d0a80132cfc
Date: Fri, 15 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778863833
