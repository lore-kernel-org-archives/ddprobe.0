Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DF9B64E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717745843; cv=none; b=rny7qWsPxTvjeSe6KZBnrdiBk9bQ6b3glyMp1k5P2Ydd9dWUoHPjLMWWRolnQhkB19TljvUFfDRm1fDKbq9lMEnuMhwupg0X/XJGr2s6Qx6cB7w/2P3D3YA1IqKU6cpNzS430UrKZO+gaP5GB9lu/tATjMx6ouD9WtGY1yaeV1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717745843; c=relaxed/simple;
	bh=dLDXuJ7D4tj2ncpDXTUJ8l/9EAhh5lVmeTVzhU+b9aQ=;
	h=To:Subject:From:Message-Id:Date; b=OwaBmwThaI/1eP8otKoJ8L4uO2pvUXrCe1UZTF7l53XaD+mE6JBm4q3tXF3g1pjHCrC93RAZ3US4PSGwDJJP/1Qx69e/VWDBMl4gEh832+us3xj8CMnVJI8tKzDx9Z7b+mvB/skJ3QUF5ECUITILHu5pO3uh0Ugw6QTW0CdkDXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8y1XTP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8y1XTP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5A2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717745842;
	bh=dLDXuJ7D4tj2ncpDXTUJ8l/9EAhh5lVmeTVzhU+b9aQ=;
	h=To:Subject:From:Date:From;
	b=j8y1XTP/WEq74pcLwOVTTSOE/s7eOf1ySUmuKOgIW0nuu6Pv3duGSDw4kfSZlxokL
	 oXXi2g7Ol0ntTeKVQ5QMRnxx9XMNCnFbgjlHJadb8UY2+p+FrwnwV5PhtKQaBaZl+M
	 wN/STGDnn8GLciumR003bpcuffMJj57EIrM1Gjp5KsGLiaXQu6Wzume0v3OTvonx/e
	 dnYYIeAB8zwbGbaOrrcj8YHZwaTVCUMsuUNTYFjYJMXIYfcQd0QyGupGuQmTVoINRf
	 1S8t3lWzE5ixaadY8VlZgWhbPpsO561Rn78Wftu/Iz/mJVlTkaCb39mcV0rByszsLh
	 2Mr2rZZdTzI3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE319C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 07:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171774584277.14828.303560735647760730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d403112821714532ea973aad3359ef06da0d917bc339b90f8a30df92844af85f
Date: Fri, 07 Jun 2024 07:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717745842
