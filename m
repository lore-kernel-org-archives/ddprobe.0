Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3F3199947
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744741794; cv=none; b=QpafjTj9JTVu+tCTJtMCgMEiGgXtKasVyHk1K8vFqBO0OlNTH8SZkceTOCsVGqJjX4MgcJ1EqKoBQjWKMePky6nMOgBVgwSN0n3nnnAm+qPKF/olKfns9LWtQPOq4ryh2pI6MSQ4ypCcABVYbt4BuwjvaLxR2xNZsP18zhk4NTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744741794; c=relaxed/simple;
	bh=rwLbZGfnlUWIVZ0vr0XhnkmMfiX2fP8CRiMNOYwaSl4=;
	h=To:Subject:From:Message-Id:Date; b=Af1EtWHRME/pH+32qEMZLoSDNui41WSATlKHFx0VEayuFvnmmSsp/uDbK5DxnoWpU9jf9OLqEyLubazBGFmVoIrv6gCr+tX50X8oNjvUoy6ErlseI27qL/mwtrkPMHLzDbJU+b4UXfq7F8jqT2HRXHpDP4llOVMsD+EdPNObzDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6CgRvol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6CgRvol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0AEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744741793;
	bh=rwLbZGfnlUWIVZ0vr0XhnkmMfiX2fP8CRiMNOYwaSl4=;
	h=To:Subject:From:Date:From;
	b=Y6CgRvolo8bQstep1DJgjdPuIyZtRsg90tkLml6jNNDn+7OesMGR+9ABwPUAZP/Yl
	 3kK/KN1xBKwIOK5kK93hSE4WTwEmH9ojS3IndIAhRlOSUEACXX4ah+FLKHAG3mzESv
	 wonX5i/0WFDFACYqsHqxYumxlbTQuifAvqIqZJRuJ3sVwAuR5Q4vOGbO3HnHgp8xrq
	 4TrHZRaKFz1KAk6mFyKLFYopsXgVLSbDxYlYjHBBcpWd4HXkq8NwHLzYlB7kxQF2hn
	 dXip/ikMcneMh5p0KA2fcWuxScuuG839/kuCPFl+jMPe9ZQhcpdbJEp7HYAhDCX1P7
	 Gwbs9zn9zrvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E592C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474179357.5076.2392195028488370581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d581e48d3d23a07b009d9d1d5d3da188bd86eb97967272f632574c82767464
Date: Tue, 15 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744741793
