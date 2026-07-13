Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1913D1EF39E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940314; cv=none; b=FLYQRylWbnthSHXv1YCB8p8FpMHV+hJhnsOv0S/tJCuRaqwVE0arFY0ZPe1fr+RDtA0ko1wIIobkXYRaJ2wqL8WZC9aspZ9CYCW+yFsfM17JKWRHuNXC2M6Lzc5ihirKy1uoSH9+YEWDbHYY2kyVhWzzZAJqZlOyTIBCT0UIDCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940314; c=relaxed/simple;
	bh=8NGjjhnEyZWgZWKpYICvwPV0HILN5HA9EfoibdHvcAM=;
	h=To:Subject:From:Message-Id:Date; b=p4Cm621g1mrThLFKs0KDh2meiH1CraaWveAAeDbPVFPtRVm4cTgqMfO1l0FMqvgeaXe2znmelU9jyjFNPWlY4XSJ041WLV7sahq7NqMb9URzNxXAOhvj4qBuG4x7LWZ7jXjjMnKq6ptcVH6MRu3JNO5xlCLJlHyvmkLvkKjQz+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+6tgHMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+6tgHMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8D8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783940313;
	bh=8NGjjhnEyZWgZWKpYICvwPV0HILN5HA9EfoibdHvcAM=;
	h=To:Subject:From:Date:From;
	b=r+6tgHMw8JMW5UVl4taZ9fB9xU9s/OVDpewICBxk7FjzPWITnHIuhXDz7XHR7Oe7U
	 2xFblhq7pngIlDmLlr8GvYsu/QnF8s+zRLZCvA98jJMujmsfn05rFLAdzm8r8Sg72A
	 9Aoo2hRi8pp1vqhOW8Ovm6KU2lMrfEtpFM++tsCfyiwlG30bo3Yj4npPVgwpB9f870
	 pXu5R+AjZkXRvJU4Q2unlFVxNY0RWPbBkpGPegZVgmWdLf/Jw6NuagURFtHo4PhhDC
	 m73aPLzYAO2QpEA6ikeiQ5QvETM+2CMP6TfBzhXXAGAzWs2kG/lDMN+lbnjwKP/Afs
	 89/VvMWx68DqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97DAC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394031368.14529.1523388592655069279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f1a447d6dc1eb3144ff83739f643dfffb58307c9c9848b38982ed8b8a81051
Date: Mon, 13 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783940313
