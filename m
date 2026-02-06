Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A171346FB6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770365634; cv=none; b=ZvfAtfoudBPhNOXPK0+MbEO5tLDjP6W3GCJkjpJoduA3tg/90dosuRREerXv1rAy8lv6YXRHVNN5DPm1gdAOkuS3ujuKde2MSVczW7T2jGb9hDxyDUfPnYUFZ4uC6X+nZPyD8u1r2vNmNYIpOUSx01I8/WSz6X178GrCDxDyMzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770365634; c=relaxed/simple;
	bh=IpStlf63nT+4JfG9WxTK98/Bn21lqU3O8E4zP80dVIg=;
	h=To:Subject:From:Message-Id:Date; b=CwPouxrhZEg3yQANaGp2UqYE1h/LVR4YlB1KWzzfvwb0WFvdBF0JYOObBCj+i25e8PAOogpATFQxrbwQsgzpIdLrva1cBY7V0dYhQ0pJ96On73FGgODJYtMBMOFbup98+IPSXI1dlUcglrnWkgdZuBElloGKQcjOpjx8n3PbdW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeoxJ5cO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeoxJ5cO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A28C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770365633;
	bh=IpStlf63nT+4JfG9WxTK98/Bn21lqU3O8E4zP80dVIg=;
	h=To:Subject:From:Date:From;
	b=jeoxJ5cOQicKjpg5Y2rAb6ZmipVZ5SMFyfei/15m2Wq9klg3/j8eLd4heAWobBCZd
	 grkQIzo3dWFwLsZKUxHX2l+rCFjTgFW0UZ5IGnrEdBAME6qLkEJyRZ3k8cN4n1kU22
	 5W7+rHcHsIdaVB2t6325oq1xGVEKgdtc7xQdmfwUsdCWZ54tQflxsIK3I4df97P59v
	 rMjLsPgc5AVjUF2LtzjozIS/JuxqXx4kaxlTMliID+w+sHmNCtKmMD2A/tQqOpTq9o
	 udNgDFLaQPbEtxQfMN8vX/FEwYzv2nG1Mqwi5xZeCV54Zwsl876O2nBnYI/XIAgUJ3
	 u3e35G0mJBIOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B11EB28D6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036563358.6872.17096277514623357860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147376b88cf241969c646d7deb6d79883d1f641f8de6aaafda5a00c916ab8bb4
Date: Fri, 06 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770365633
