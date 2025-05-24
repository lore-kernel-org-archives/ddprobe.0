Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29F1EB3D
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748061594; cv=none; b=SeRJexktdOXKTTi9wr39UX+WEN365KRq60aH/2Ad0ZOy5gQIBxbg3tKni5Z5lUfHJgoNkTrnEP/nGkxfoUcwHc8WD7S+GDVwE6lGDUTvYRX3NadXYu51lh8Aan3uh1iOmQqYXiyfzLvyVXutgfsU/95lQUvPvumEztiIIa89+3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748061594; c=relaxed/simple;
	bh=mE7nInALM2lQAfOoXp7jPdQX43h9P4smSWEqDRPSyZM=;
	h=To:Subject:From:Message-Id:Date; b=hDyIhBkx6T6ZLAbFtK4X7RenYPuyZHuPGjfZMi6z2RghQ0a4zBD1tpx+VOJ1FS9xjs+XHV/pT0TcJYvrz3hnRwS3Yg72WW8jVbHDnbjAikPSOT3EaO4dGb0AkZfCLU035GF/IfzlSUhvDF4Rq3n3pse17h9bXPsQdoNeOANDsQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQZR3eeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQZR3eeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9278C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748061593;
	bh=mE7nInALM2lQAfOoXp7jPdQX43h9P4smSWEqDRPSyZM=;
	h=To:Subject:From:Date:From;
	b=SQZR3eeKJjbCRXP5paOWT8vnn4xmJhu2ahDJqgUKdm9hGZqJ1sRDSy7Q5kqQrS8Ag
	 /TQs/VO3Hzhdq4N/idfVd+cNGlhJlXp2aY/qsIJWr6u212qoy+I5RLngKXPmEJembi
	 5dFrWSJLD+VSpnP+TCcGItO8NIshDXTlQpPZtJbu7sdECQIpIbGBg8U1LzKS1KgfS5
	 dorsQL7EOQD3e8qlJLgkyoKkglNZQV1VgsxjObV6IjbEMnKxQg7MR0UAnmFel3FqJ/
	 wRP5AWryxoroDBavMoRcFlBEbgollk8SG84RQUCmeiT3TIp95w6E9FX/L7fZm54Yq8
	 XGke1zlVA2dtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C57C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806159358.13020.3877666870593760701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1defc0c134546d74908f2e801043f9d05eb15d86e5e843b231746b72e0f5e1e
Date: Sat, 24 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748061593
