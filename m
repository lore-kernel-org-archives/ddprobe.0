Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D26CA64
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743655794; cv=none; b=F6jF+53zGtioVUOmSV6Lxo5anC0jaBoK+o0J+h3+mmfKjdl5jM1MG3FKCalb+OgI0kxakwikbteTw8TBBNskP5tYGIi2zYipIsEnV0skY3q/73duyKiNj5d1MoPjx6LP4M2Y5289KWSCBGJPB7jQfYQMaKqobj8dwrGSsbT5Tbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743655794; c=relaxed/simple;
	bh=tjhTVnG/Q9qBwb5zDnH3AMdB+q9F9p/RMMqB1E6s2CA=;
	h=To:Subject:From:Message-Id:Date; b=XHzk2es226Bq1En5SYNtquxk/uDHNYR3/t4emg/oqchQd3Kzrqk9ogK22U9jBvX3wAMEWd+qax1lR6b7EDBv4sMyDAl+7DioEzHgpRytqcgpUAHmb+fT7xUbJmZUaBRtlUO8GzZgEOqOumMLGr4yj4gdb0fvsunaK8kt2EyBO9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDReScbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDReScbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AD6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743655793;
	bh=tjhTVnG/Q9qBwb5zDnH3AMdB+q9F9p/RMMqB1E6s2CA=;
	h=To:Subject:From:Date:From;
	b=FDReScbLCZaKm3WgPCa6fAPxZ0RmBXWXSmznTFOjgXMgmKQjz0WTHFGTqa9fiYNAu
	 RZlnx7gi05cCURYn39X2z48l4x3uCqoYOCv1RyarqykPoeEmHI9FwtjdiELPxC+Npv
	 4UdXrkncreZkWTmO+2YnT/lZjcNnEMnIJK1em91aG9FbfYVlek79QGDzR+Tbx/vK9Q
	 aDqOoooUskx6wXjBoc4VK+zwjfFl7hM3liDjl+eT0EItZz4bL+SLrshvV//GOhY9zy
	 hMFSJyn9N1a1i89chwRnOsf38iOjODUEkS5tnmZEMQhF71i3XcXYaEN4nvvBzcFL8F
	 qtlQOIH3uEK1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E32C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365579359.20744.1111454917274182250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec3f7f3610c271401ee1ad2ca537cdcce7a93c4a72045cb2179605fcfeaf53b
Date: Thu, 03 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743655793
