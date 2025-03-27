Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F0313C8EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743071994; cv=none; b=K/zVR7yPixbBiYsHBrBPRRdACKDMHIOI/TX/vRWMm99ss2IJb5k2vjYEkz5xkr1t75wFe2YLh4iZ+MH0GcZeHTdhzYEqbyyq8UjspTUFrfkDUcze7N8GM8j6FAbHAUoOg3pGLT/pjHPSutW2NH+Y++Pc1v21E4jPA8Fa6YBPd0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743071994; c=relaxed/simple;
	bh=FzcS5BNFN4jZQCeFrLjAxy8droPHz2FGuVvvsmmNPo0=;
	h=To:Subject:From:Message-Id:Date; b=atnNR0OEB1w/pkDkt9kSzR6QY0fHc8hSa6ZCmZYtRatkhm3l8ybViL+EWQdQkDd1aQKyMGJMOZQlOe84jMtcuC6DpAKz90+EHdCOHTUF3322/1Y4pPGHcwBPoSolhewWKj5ry1wsf6UCVLy52lZewIGdCCB/ihokfoSf45TycRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Skh69Kgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Skh69Kgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEBCDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743071993;
	bh=FzcS5BNFN4jZQCeFrLjAxy8droPHz2FGuVvvsmmNPo0=;
	h=To:Subject:From:Date:From;
	b=Skh69KgpOU2ybNRqB0TLdzAaCCxAC1On2gbuhfd1ahkf9j48kS/nG0DaQHPisVrZQ
	 pT1eZclfwJrWZ8soootRp1KPNwbcBr+J9yaeFEjwqBRTAkF2FY4s+hnlQpovEWoWBb
	 xlxnMi7bKkv9ZbGSm3ivpX/Sd3B0jiClDaJ/jMMmX36N5kYTIFEGvc0mHvyiFR/roJ
	 +QkBt5DdOO+rzVuRF4VyLMDw3ffbKuJikPF134BCb2/VbV2OzIMDoOqfQ9dLZxh6Qb
	 JHPCSq6ULvlKz8mrdqKwkxBzKqDZHix0VIxE1w8y8gepo1e7r0ZqoBFBQxnf3TTur8
	 VD9VCEB5QRf9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC62CC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307199368.18954.6951346397848397631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89f72f34329cff076cd10d1b9b524ea3051c9f6ddd1cc125d6a5537504d403d
Date: Thu, 27 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743071993
