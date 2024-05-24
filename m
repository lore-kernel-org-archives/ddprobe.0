Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 755106EB4B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716544403; cv=none; b=P0IphOtj0OLTtPKGZhOXf7Pu7RCndcffCu6s9x/g1cWThh66ImBRQIA22gkyRpKPGear1vN99z/PI1dNG6BVcAqNNTZPb9NCLeJCvWUA/oqKYr+ciOYI60tDBjbHBp+7o+N4Xt4eGhOLUGZEpLh1HvDMJXTqTv/IinrhhnH8lvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716544403; c=relaxed/simple;
	bh=fLC/lWAyrnvwX+JYzRPoBKkNCjol1/zKIMKvkc2lILM=;
	h=To:Subject:From:Message-Id:Date; b=kOgfkV4jDzY2Zse4dwWrpcRgNhivYEn0uKcjTSzI7I+edfsYystmKonaZ+wAP2d4ezJo/P5yRrasiI+6dstvUVQCY6PabIbi49il2YM3e/Ku80PwBCDXKj/MJ+j2HZpGfP1/obWrmO6L51IvgBIph6S2ojFx/KuTDv4PpVaIpM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hz7bmceh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hz7bmceh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA017C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716544402;
	bh=fLC/lWAyrnvwX+JYzRPoBKkNCjol1/zKIMKvkc2lILM=;
	h=To:Subject:From:Date:From;
	b=hz7bmcehERU9pAlLBGl2uGOrf7E8SvcgKxDkt7bdsRVPHZS/Z28VdYYd5xtRNY8uU
	 GUiHLhuXHnNWZu1Qjr+YC2hGa70VEhq1Y5ThPuhzWr1C2yQMGQ7bgUPU7VZkuT1BYC
	 j9CDzoBzXzEEQd4mxHQ8KxoFq4RsF0FMTzqtEcxVxsBcusfBXv7GaVQC3B2k1X6pq0
	 VtkS4JPnV907sba0/2WjjV4sJnIWRubpsJP8fCES5d7AMmM1h1HSaZCL8EcZDgcMq5
	 FnL6HQJC/TrBnPAJj30kqSbMpSvE1UaL5j4TT9thdpOQUBzrMX8uZbuJETgb4ia+Cs
	 6L3Cb8lL+k0ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DCDC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654440277.29794.3079937983893083274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb72097f26ec65ec60fb27edb67df16222335f5088cd98f05e154916df363284
Date: Fri, 24 May 2024 09:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716544402
