Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287271991CD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750816794; cv=none; b=l90lq1hLF2QSyFV93D2CetEper2QC7j1gvTmPSLg/DiTNdRfTcUuoImkprj0rv2vaiUX+ptZ98Z6w3ONlnm3Dqtpw1kjbyUKz8EhUUkNsAEXJCuk/C7XSnpc6UMe/JGAYG5+tKxjy0kwQWbEcdBl+U94I3hlZnSg3yowWggMbWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750816794; c=relaxed/simple;
	bh=WRrqRDwIctKabUR/EGHrUS7o1sZ7kzDtZWGYnJsvsJc=;
	h=To:Subject:From:Message-Id:Date; b=mRnHYlpusR3pUmYD1ppBSFLB9wa6DydEecmMBY1mcruvAFSJ2ilptiZqY4+/JpZrAeLX3gLYY2GI79BNvRZWOvDEqPmWeRbUflRFIIN/9e/y7usXB4/CVT8gjXcvm9rNS+61wRTJqmNoMX0riUyZdMdWVPcc/SI0qxNbACUR71c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cy8Ee9Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cy8Ee9Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7921C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750816793;
	bh=WRrqRDwIctKabUR/EGHrUS7o1sZ7kzDtZWGYnJsvsJc=;
	h=To:Subject:From:Date:From;
	b=Cy8Ee9Dt+TTeGBnPKpsiXycbppU6nXi04xc1gGy3J6Y1nqFMC05e/VAJ1SGEADDaN
	 IHfJLBooFABEXiz8HYtTRtztIuzLfgtObXUvEsCR7sPR413tqrGXgrs/wUKwC8M3B/
	 Qcmv/6tEv4DxBQRHN/YO+meknhjlXgpGbxIdc2rPTapdS0nXlMn+YUZIyPC+u/cYLw
	 vUfMLQJMmV+prNBkCsM7JzJpEwMZGeo6L3amf3chD/OvWkR1DCj+uphcCJZhScRdzC
	 o3Wrw6AiWtCnUnsy076IvDyvEicbmTb5NDj3daErezXEeK77EEyfHIOSyjfpzLqnzF
	 4T7SBq4W89cUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168DC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081679357.839.8027921060059743164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d69ffb7c4237b31576129b8f1f2025c38879903ce6a56e7a8ecf74b0510dded1
Date: Wed, 25 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750816793
