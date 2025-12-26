Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B97146A66
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766741634; cv=none; b=XIFMCXco+npNUgILVqV8MhtcSjVq2mAYwjS76i3y4eevOUOqE2VrqFK6hW2uUp/bfs6Qd9MU3KlhWBQmzFUgZbPHPEzo7HxFoWqKIoO50XNGF7wvC/M9V5jk4UAS0+73DErdnz7hCRJwUwuDDc8U/r6AO6Q9YxmrPykdqBfSsv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766741634; c=relaxed/simple;
	bh=G88yaMbDqEj5qWod0cKe5VkxPtRoq3KKgq88FyBK1+Q=;
	h=To:Subject:From:Message-Id:Date; b=aeOfFj4BHdFP6T/uMmAjnkEwGaVb4rskib8h4QKm9m/IV105u9RdBOWFPg2o3PgS3jkDLGtnEBrGqd6hX7atcsofz5gDrva67g08qOcRS2u0qQ8svMkAsBBbbsbRq7b2cYdJJmZ3lMnTbbFWlwhoK0Z2V0O/sENAGpg3E3Jh0lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4gyH5Gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4gyH5Gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F6FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766741633;
	bh=G88yaMbDqEj5qWod0cKe5VkxPtRoq3KKgq88FyBK1+Q=;
	h=To:Subject:From:Date:From;
	b=D4gyH5Gpc7QKpp884HjCEKiSPK8lvvZ3BApqA0ClX1/wuOv8ubNqPildMFzVJ7s1X
	 5yXSlpn6dS0APtXZGg8U0YvPRKFic118S9i4L4IvdhMacdqOXF9Z54Z0yB0loKkkNw
	 6fA+SDDh+KJ4DFK+Iis2m+A5iJj+2ujDLk6NangQP5897Ini1/p9Em9UikjC2AtrZx
	 GeWaSYxUIbCxcaMiHhEB+g/mO3fYHvIj7EaeHfUDUxf2Jnx+qDJMGnNuFJbBOiiuL9
	 Tk1XLzV+L+ZA95cqgsQo5DDcyj5mFYPAMWtQPY1BJq1tyMo+Z0HFycNM8TlJPDkwzQ
	 i9R3f2uRRi/uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A34E8FDA1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674163358.30375.10677655515946718804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b33cf5a982d96f95a50569b2d0e2e0c8fd9db7d938390bee2abaecbc6bf99f
Date: Fri, 26 Dec 2025 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766741633
