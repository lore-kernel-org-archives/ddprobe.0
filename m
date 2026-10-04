Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AF6244687
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791081634; cv=none; b=kDwZUp+TGc9zNJzOvtSAbdM50Yb7K60Atd4AmcDhXkxcwsGm+liV8IT3L5fqjMxsJEQj+fhPxL9QLEOjk8y4lIdHYZs29uBoRIbQMY0LFaUyUjZ5l+dk3r+aKjOZG1QAj4yQIIr/AvQXfget6gsvTk9MwqfNwFN/mfXDsjNMsGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791081634; c=relaxed/simple;
	bh=XFG9RCro2hPOAFNfM974z4DMSgbZGtFDfztmaUAYOfs=;
	h=To:Subject:From:Message-Id:Date; b=NIrfAuOZlrvTVnbrRQ0NlcdkW+hz8jzMpKq7+0eUI8WGa1HKt44X9NdwSe9qg13Zv/DDq/a9Z2q+Qg6Q/uBDUcKk4K8fyQ5IuXA0KDTMQSqYLlizkBibQiSkfO6x6yDMWTNwI1UADPtiVSXvgYa88a0xk+KO6/12SXI62M03820=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7t4g7As; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7t4g7As"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC07C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791081633;
	bh=XFG9RCro2hPOAFNfM974z4DMSgbZGtFDfztmaUAYOfs=;
	h=To:Subject:From:Date:From;
	b=Z7t4g7AsHkWRGRq6Vx8sZBhf0ZUHbLiP6O9vefzOh2XAmhTg3mRpzkPH1Id2MRR3S
	 2bf+7KJevOpiUHQ31L5MPKZFRiU+0Kxn8haFRJeW0U1elTf7FzhoKnhZlPCLZDRB/W
	 PWFd84kIUtPgi+7AGWFHfp+ctba2Pnters5ADwulGfgglrXt0478CpPp64TIaem+IE
	 x1n8qkqzrOZ+tsGLNG6GoaPssdb4UM8edK9FoHEoGa7DEBNKYao+XJK8uP1glqZs0G
	 sRSIi4QON6OCEgfBfu9CGY9nq77l8BmIcP3EX+TuiLIUgUtDS2/Vw60tak49z/gAxv
	 bJl9WCEUHXslw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46D0CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108163369.2302.12752584339801944593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 715b002c843ed54abc29411f7ddfb13f66a19ef225c511dd272e720a8604c635
Date: Sun, 04 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791081633
