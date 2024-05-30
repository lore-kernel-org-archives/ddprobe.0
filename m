Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCD08249B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717101863; cv=none; b=b5R1pxeRdq+wfBHiBR69eOFTafaKjbX8OjFH9+IQJ/6h/OCumaobqUUe05DqD3v/RF7I8JLYJSaIchGkZSfbvI4IvmW10Kn2EpoRbo4h1yHmmnS5HbKW3Jn84UhOshqpzIudOXHqhTpVJYvTsOXble6mNs3iXx2MruP3c2JUBhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717101863; c=relaxed/simple;
	bh=YVBMbAISSZY/Hs15DOoeOEHXlogAzSEYL96m9C5p1gU=;
	h=To:Subject:From:Message-Id:Date; b=Ypf105b1/GlAmSPkqOPbDfye3xB+pu+VPNK0p+nc0JWxPxg+ZGSf2m3KSnDgM1YO8jw1XT9ZiCdZoUBRKZBo/HR0e6/GxKMC1Fcmm7wFXsDQ3dwPQhHYsGZITb6NN+Y6CJo9v/q4ggrS0AJAfQlmiWezonGJ619w5ZXRPNw1Kz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXDcpk9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXDcpk9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25F7C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717101862;
	bh=YVBMbAISSZY/Hs15DOoeOEHXlogAzSEYL96m9C5p1gU=;
	h=To:Subject:From:Date:From;
	b=NXDcpk9dchWN1h29JooQw1qyuAoH5F5h7PxJXlkW6EI5bY2uvS0MaKUUGPSQ3z/qz
	 23wZgQnp7S5Rvf55vA3waOAO+BKtsRlq7LCkQBGR/h4ARRSV6qqW/jOvDfNawVdp6D
	 xbgTvnHY9+eHlLe0PIOuME1j0T5nY7QWveOCf1wXerda38qg8MJbBgEZakEmp/FwZf
	 3ce2FDpRfTaZsui4COycVI7cZ68IvBN9b2S5TiRLAzdaAMbBKvizMhLG8irpH6BsOJ
	 4C5Hk60K+F1ZrbewGS2ZK3PiCc2Bld7V9f/+s9HSeBKqkcwokcV+oLOXP/YQv+Gb9O
	 5eYZaxf8k7XPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF18C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 20:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710186283.23422.6610610800354380737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a89f576d9fb6e034f52cd4b182b3320f95950867244dda9945fd4edc3dcf598
Date: Thu, 30 May 2024 20:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717101862
