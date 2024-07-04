Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661BD632
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720052123; cv=none; b=f5jNp7e36OX2+tBrSn7q8MLpxBcmoriOjYvQpZ2Pt1ocy/ey4RyOg+dzgW1VxnZNLXJAya/usrhKWQ9NDHl9pUI2gmVWS8DPR2jrAmQGs0XHtuyYT5iaTfvZTLTF5sZon8az57WiLSa+vMjXt+zldRtlqnv+3GGQ0AYXYnsGzCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720052123; c=relaxed/simple;
	bh=qvYSyjA7MpqWfeMgPpoObypcn1RwTVfdAFugVeDtZH4=;
	h=To:Subject:From:Message-Id:Date; b=sofv+a9TxQkD0HFXuMml2Nd45bbk8TVIgttleWoK/R9GnsI7/zUoq0QNMTTXq8KxwmQ1Epjc9/A4dXi699TNFqGZkJpct0gnR/rO5qOrUa1MXTp2hY46jg6qxJ0rHssxwQXmnl3s2f3ip1FMY7iwpUAdYn7qjlhFUiiFHqfqHII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNTUySJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNTUySJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DBEC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720052122;
	bh=qvYSyjA7MpqWfeMgPpoObypcn1RwTVfdAFugVeDtZH4=;
	h=To:Subject:From:Date:From;
	b=eNTUySJmZAMn0IulT1kvG5FRmg/N6zEOLeZ7xmgVs6i9O+oVdXljyC8qFaiSRcnEF
	 7Z0rFEhWtjCt1DVyt/rgW8gEG6lHlaL+7SfoIiA6LWAeVwR+ZZUWoIjuqp3py+8LQw
	 MPBhiGoKeK3ZXlcX48PxGTzxpjj3rYsooYIcQ699vt40pbgl4way5Ks0QZnn2fqO3j
	 0tqS+P9ZvY9tDHDLZcwFj6bSl7LX3Tb0FnX+Qepj1jVy1PbI2vwP1t8n2/FNJHSaLc
	 Cf6yOnEF08DAEtletIpiLdB4iTG7g4+0EPFfUInmkW9IUifhdPTHujIn5Vqf9M2z43
	 k2BBBehvwoVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C190EC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005212278.21951.5181865281153049946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe128b4473d79e851d4823608ffebe1832450019862ad2d8e9434a0c5a25cd4d
Date: Thu, 04 Jul 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720052122
