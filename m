Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6BD15855E
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759169994; cv=none; b=S+YXKMSOlU4j/NnGy7y5FoNQx+8Iz0YJ1MqWlwYTeTTqHS9dBGvQf2CXtshXyOE3XPCmB9WWDoD5aj2gTUnnWdKAqmmMoFYowrj6Eio4D+iYFexvxWcIv+9KmDtM1tNA0nyTA5HfP2x8+dMF7YZ7Jb6Kz/+ms+hrozkAzWMexx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759169994; c=relaxed/simple;
	bh=T5cHVRu+ouXpY6EODS/0/VQIJ5L3GiONv4BA/khwk3A=;
	h=To:Subject:From:Message-Id:Date; b=i6ahogyNqUn8G410CH3kx3LqXpVnwIEIobeXDuDOe/MPu/lon0WTZXPbnf371GyMgxebN2o4wht/I289JRLwOekSSzrWxrc8kYJ2G7YuCNg9RtmOV+r2La/Evs+Ro8/gcpCxP9KJYv9AT2na+J0WHtWHzIbwUnvEUWWQDCMBQA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ3IjFin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ3IjFin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE9AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759169993;
	bh=T5cHVRu+ouXpY6EODS/0/VQIJ5L3GiONv4BA/khwk3A=;
	h=To:Subject:From:Date:From;
	b=hJ3IjFinhPHCAUfiLek5F6CaLPLBeiB6d7aFPyX02iCxKrgq1qtHi164ce/cz1WnP
	 4oxFvGPjUhZDwgUdBDscCHpwan4/5KC7PgOACYw3xnX4tcoWr+AFPi6p3s3Cc17kmU
	 Blt6nJNy5YpqQjWA9QQbDPCmuBI3yGxiPeRFsLQ+POppdGJRKA0icDaQQ4sWPUkeDH
	 ZmvcG/0fI4lXzKKic7uVPvivakrDU5OwNpIZF+sGLHeMGcitAPpi6kq/+yt/Eftoco
	 Qv3dGc2dhdd1dLF5cD9t3r+6OxY5QPSOpw7+EzqsBeYoN3FF21Z0561nMZFA5jWKgW
	 spLeu+G41ab7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25C5CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916999365.16592.7668346648872986502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd9f7eebd44281e776bd6ce60e0fac3d9e929139403ce6f24c83d7490065c94
Date: Mon, 29 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759169993
