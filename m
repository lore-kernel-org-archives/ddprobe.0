Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CF93E3168
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780943674; cv=none; b=GMmUWKa0VkHCTgtboeGpuPTzbm1dpY8GYNOJNm7sFDjKy95iNzRvQwkKxlJ1YHABWx7X/aCxIYMtb4+anF2CXSt2+y0gN2HQgzvpXX/l8JEnYG6d0CHS5qUOsruDKwCx6v30IyW9fW39O1O9LyDEubDeQTh1ngyRiEAe2LbUWqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780943674; c=relaxed/simple;
	bh=3f5BKeJqgQIXg0rOoaaqBiE0wUECDU0hkbBVeEunACE=;
	h=To:Subject:From:Message-Id:Date; b=SmzSH3q9lF5tZ3XZ/EOiOOOTg9ZqyRgAnfPIU9b3zY778vOjZvUTj1JLMUUQXz2NCafCqtE9CvG6EI8Mwh/37+ByQYDeZ51QOmNLbqyoONps7hR5Ezdq9UItwFrjneLsULZLfRECsDl7hsfWiaCbvf/23kM52/ruMRg0p/AONwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTEA4nC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTEA4nC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA42C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780943673;
	bh=3f5BKeJqgQIXg0rOoaaqBiE0wUECDU0hkbBVeEunACE=;
	h=To:Subject:From:Date:From;
	b=GTEA4nC1pUT+AAOrFMsdpofxVzu4eRD/IlKQiU6cm6hDxfzpMv1qCLCMhiPjRoVSM
	 LPT1oMESaoZ1oZElskYHqZaJJTNoEOe9+7Sj3skcqO7ZPRfF6bJv53/iQtmH4L9cm5
	 GkycnaPJZmHB9OwOaFMQpk7A9aCWKIXzNa4FJP2l6HSwjGAjN2+uYatQtGai1ndYtE
	 NTVkaSgAwdfjFJQ9C2JXfmsV/3miTdK1I0y0qg7Aqbo/4u/+MtEpPMI2VEZSgoj8cE
	 Z0HnZ9uBnT7E0qqfDfQ/9OJ65/oQqBDPes5XtDOJlH9lY38NUVyPYXZq6olRfA+VW+
	 /97efvFUUtxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE13CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094367368.31352.2473953040483421810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9088d254e3f5017c10c83dfd9eddc6e67f106d28ab9496027428ef797d531fb
Date: Mon, 08 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780943673
