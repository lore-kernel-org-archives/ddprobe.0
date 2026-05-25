Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626B328643C
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779745954; cv=none; b=QfD3CqTxb+z1NHr6lrzUe3foBiEH1MEgMdTUECmoKaSXubW7b1y3nKWIqF7GuuWj5bZW/NVo/+lJmKeVchB3AYLnk/MEd9baS61Q2rWK4E8OvXwI7okcPmOFRHAqDbLCctOostp9mdFIj260gle6GbsyKp18eh84ruTHqVns6G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779745954; c=relaxed/simple;
	bh=Hfi2co/us1Qhe8VwXH7aSNfaLwHowhHcrAbURkFnHf8=;
	h=To:Subject:From:Message-Id:Date; b=RpY+NzlSfZbybQwpZj1H8d5VEuGxekHsrQicmcpEtZj+Omg2rCpvI4ktthKWnxuIcLh+baY48a/vySy5ZNNLKeeDvrgkCkj13VviCRFX4LLA06qFQ7660wzVAW9hdISpSu0ctRikK8InqP8YYANQGda5cdWRa4M3F/k4hQbKwLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoxc7aW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoxc7aW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA16DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779745953;
	bh=Hfi2co/us1Qhe8VwXH7aSNfaLwHowhHcrAbURkFnHf8=;
	h=To:Subject:From:Date:From;
	b=uoxc7aW3vmrfyQlLv0tefGzffDBSWX7cnwPaHzi68dvZW+lS0Ct36rBct0Fd/6Czw
	 evaKXdL5vu+VN51dqDbM/tbHj3BgtgOoKgPfUnNNIacnDab4Sq8Z4bbd7V4HcWn6HG
	 1JAhcu/98dcrX/tRgx2gdQjED1FKXNeorCzRdMkekK2wpLbsZ27gyY4d+lAsLqpoOP
	 JSX7NS+J6bGXKftMq9I6ZbGnCGzNTvXizX9R+bbm0cuEcp3N4FnsB0eHMeN5dh3Fyq
	 guEMEPyGB4iNhYL/uyBo13QGQKQGDUqL4o1Mr+YOGFRkezmV24L4dsT6hCnkimxCUu
	 bIyA5mfIUjI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEB7CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974595368.24434.10939774857007783723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2c04b6b34d79baa7879ac6996e8bd6592ba59ba96aedba990b9089ceff35f42
Date: Mon, 25 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779745953
