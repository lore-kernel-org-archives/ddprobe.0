Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A4C21324E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746143395; cv=none; b=qlcn8vJxxPN04y07h8Dat0pcGRHOwBlX1N4cWYofEdIw/CiOMYqdvkkPQ21LvAx+ZnUrmxCb5kZdmfvYiudtnNvYJcBoPeb3A1O6yuHNa8Gf3AAFP3Na2b1kQF/QaJO2sCQabctTOdYpPYu4VslC7yfSzDcXh5sj9eqjn08u23I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746143395; c=relaxed/simple;
	bh=8yOa9snZNhleFEfxt3YZ5Yq+brYoKoXlMGTmP8suB6M=;
	h=To:Subject:From:Message-Id:Date; b=dFBJp9MLzATi4mRWW/+MSQP/NMfRbLV+L/PrMYrJobAJU6gfyJfuH+n9tkY7E6Ob3fdBMRfPgUe52ebfe6Byo/GApB9yBrqPUwcfZBDV2OgdLoE2UXFl7zWbZMSk3hV7/pZ1F7M6oNiL4PK6wWFE6h4SoMfAxos9ku8kDccq51E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQgOyvYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQgOyvYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E232C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746143393;
	bh=8yOa9snZNhleFEfxt3YZ5Yq+brYoKoXlMGTmP8suB6M=;
	h=To:Subject:From:Date:From;
	b=XQgOyvYRqMYGAtLSRLI9WznB7G5tivK3nI2KEi/hS89WxBJxKtiRhS7LHaa/Rc3zx
	 UHN5vuPFfp5dQxP1u9Xp20VW0ai3Quf2fPf9EvvaXs0aGXytxyKpLuqNSxAEl9L7lx
	 E6MsHbEZdnxBFMYrfWYc2IAuZlBCnSpH+pj1qHaZS87GXUBpRoiIff44lXslyAN9nH
	 Nv7P2vY/Fx7wfUWDXyYdI2CPa06mTurTNI4ycxefiQQtSquTbrnN7HGTin86Nk2GYm
	 HgYlzsulvyU78zTT2d8vWpCU4b2OuSjV1v83t6TrF6OfFjMhEQ/+2x4fhdG1Hh8jIh
	 zfKgQxUkmFvtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A6C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614339357.17725.1786353699273101337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7223b34a6fb639e771ecafb78b13e61567520bc549c4f090e86e371ab5925d9
Date: Thu, 01 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746143393
