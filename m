Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074593B3C0C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772559294; cv=none; b=JYPHYnc3XeFZETMzdiEi09BSKpWIe+el8V/658bHABxzmFaCUbmwEvnZyZE2/WOaQYBxh86QY/IuLm2GdqV+EgyTH6yaD0Mmt0ugDLHMyvklboXSefY/NBa6R+u7KolP3hLm+J7UJw1C0oMTR09MWJd/DjDBCFStI/IUqNmuzfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772559294; c=relaxed/simple;
	bh=QZelzjlUh306F8AcPACYiM2AahA1/7lcltJm/5sx3Ok=;
	h=To:Subject:From:Message-Id:Date; b=ILkGZWQ45V6Zd/fucjQvi+O3d5rUYe6+byxgHxrsUJWeuBJwozgFVt8yfyUKAPAoTKD2PJBHbxquE6MTgGOjs+PxRz4Vdfl+gPqZRKcGnpqBD5nXWdL4hgFrgWouqYKw04a3HBCfN6+kba/XbQEqDvZfzjuU6X4wQvcxqtKxujs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5qDsPsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5qDsPsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8017C2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772559293;
	bh=QZelzjlUh306F8AcPACYiM2AahA1/7lcltJm/5sx3Ok=;
	h=To:Subject:From:Date:From;
	b=u5qDsPshFViq+Zkj8P4gkge2bQubbB5DAm5UzUFyK6++NAX7ggMt+vRAs/i/er0Hb
	 Hu3jWww3Z62rtCVR37alRL9cG/X6HAoqexABL4abisOFUycnnS52GQjTiFuaR+580r
	 X7+I2pV6kAduJyHn1n/bTmZvBMmUrf1hiWzgXY8E9BNdvV5n0rQmqQCUPqOdYoHYhD
	 wRhQbpFKvFSfu9N/4e4DMvj4MpuY75765SWpq175Wq/cOm94JA4HJZ8zeLxut3cVhC
	 AHtoiVstGOM3y8IsOHzqV7NXkN3GhflrjsRi/zu7ozU6WQTaUcAr3RQc/lQPUwHmsT
	 3Q8aKPwkHuwZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93173E67A62
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255929359.29520.10061047423291823448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b79b32e91a202e833b2faf6c2945fbcda1398d8f4488d4b6e19e2f866985794
Date: Tue, 03 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772559293
