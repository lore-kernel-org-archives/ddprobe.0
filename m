Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29037171D2
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751762394; cv=none; b=af+JMCoUa1JvHx64z9DQ3yhJFigDxNeFJgMX53svTz1+Eky5Tl6E9/iO3RGoFjlCT3V3X9RqJOfa+Et7nYxaUU6zpUkDzS4TmOkYkNiIPRAZgSRBq47xVIrzcCOY4pJKn3iTZraUXgSfNaInz/P68u57nXb8t5ruuMnQ6LMK4eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751762394; c=relaxed/simple;
	bh=NmvRoXR6HNH6J0PZnICmPn+hHOgnnQuyHgIoFnzU0rY=;
	h=To:Subject:From:Message-Id:Date; b=Gt50zRDwXy+pH+sfhZyeEtdWxP1yhHsZB0+3ARGlalM15A9MZqqjkot3N6P/8Zi0E2htlbU3cpQmGqHfgBBWd0s/T/1BsqsS9r1SPTF06xTr0aqf3cAkzejNYoHlCIbyYZzCXrpPbKRnSzIs8bUWtiGPMD+E1koj2Ba4jpNo++s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gP+L6GdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gP+L6GdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751762393;
	bh=NmvRoXR6HNH6J0PZnICmPn+hHOgnnQuyHgIoFnzU0rY=;
	h=To:Subject:From:Date:From;
	b=gP+L6GdKdvtcq7KdNDMwwA3kGSi8kxFCj/hPhERe9Y9+lGDd+Cehv/H1YRv3C/gRd
	 qTUQpDPlTugzsGMzX6p1EzAhegZy9E1oOnl63Pe+vDXo3UTPBfedN2uza+WFrNy33g
	 k+MEKX6kHLojlfaKwi+LOH4tP6nr7y1yhQapJrxWWcDzN4WDayMze5qcQ/HvUkMOmu
	 mwZ0US+toLyzEYC2oa6B/EwtjV94IqzgPk1zTqpc+0flkBa0E9MisrgblRgeJBYAf9
	 rwRp+mUR3tld/IofZPAC1j0VE640LGAR2VWl6kir8BLK92fR4kTDeU94aEg1zaUWxa
	 nU8wzkplXo0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE6C8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176239357.12134.9243505305317707213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324417465ec11eb7081cf8af7c0fff2664577c1f1295b5550ff5dfc61d6aeef9
Date: Sun, 06 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751762393
