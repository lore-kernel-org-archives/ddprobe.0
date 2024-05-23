Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A66B129E6D
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716499403; cv=none; b=Wd4re4ryPnwD2Z5pkutEotGVHZQ32xIKU5dyQiUoULkf6oCzqi988CQCx/ZGBNsWFg+gWT6PUyRQ/xKqmJmhkF4f3buwrFCvVkq9NAXp9G6BAzL1bE+ZFASFph8+xwm6eRialnYuGvAXxqk3hB08nq/vVu6goPVrI6PP6bCT1Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716499403; c=relaxed/simple;
	bh=5Kobq3K8l7HBaqKqwLL1LfohOeojxe5OvWvi7ElymbM=;
	h=To:Subject:From:Message-Id:Date; b=thD6URK5Q6NOYklRrpoXhOSOA1tDwI07K4yAZ7cXXJuoGK92MjD/96AKlK0wLep4lFFQX50RaL06Ub9Ef2Ixi4xN8Mf1vAgeZOoU8HdcYiLfVR52Y/ootfPGtHi4QC6SyKlhu4K4GMLdxKERBC/VWLk4KNUJVbR9OUGEU6NxcB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKozIKtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKozIKtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CB6C4AF15
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716499402;
	bh=5Kobq3K8l7HBaqKqwLL1LfohOeojxe5OvWvi7ElymbM=;
	h=To:Subject:From:Date:From;
	b=TKozIKtzISiXRd99J2+TBVi0lEm+sIx8c+FMK+6bFtqgC9ilsgnkUMl8G4AjlRjnp
	 bneMOyR2ssAZ1DoRidVgsJq6qcbTGhR8gr6MTKLDn0MrHdTqgAsSJFAjOQOKSEeIt3
	 JXvtq2VG26S8hehmyXooXOTL7+4Gob3o5w9AkB5iT7QGx6zAuHViGqOdfUvjkv12zf
	 QNSlxguWQIpZqFDAskFuHgMqK6rDMzGDKN1FMRIvnJieA86jjTkH/uQCFGPv5JrDLC
	 KDXVF836jA3N/eh5cT5zAYLG+WgYPlOlBG87K8klPeqCy+kHaOcfgZZDHNoMBOcSWL
	 8RKPB8EgbnKiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C808BC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649940280.26814.4453599559373608970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40cb6637e17b2f559037852584fa080a5d8d4cb9186b51b93b7153af9faaa844
Date: Thu, 23 May 2024 21:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716499402
