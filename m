Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BED828F1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745382594; cv=none; b=SmET+r/vA6l5WRgk6KZh/gheLVeTkk0+Y/wOzEET8AcpzSEX2rLG17mA2eKGi5rJx+r1fMvTBnFytLif9BMQfcMOTWTVJJ/J/KjMdTld0nyPbc9LI6VG06MAqOvEXYjcVo37OGYVKQbcky+O5N/M6ezW5m3Eihhv4q6dW521Lns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745382594; c=relaxed/simple;
	bh=Iw0vsSuLoPMu5Ws3t9XE1hwRC6ngw9NcTPk17FFPB5I=;
	h=To:Subject:From:Message-Id:Date; b=DqMkPJMDGz3bCATelGejptVRZKJ/CMD0Z9JV+c47JZ5i9i4gBHLeIVL/1ikKYawHbOq1pVF9Uow6by6x8xQX73I4OgsKrb+N5EJB5iOEnychnNXdRtyU1i8a1fqMwfBbCNlrIbwZSPzRyTamHDIctSDqNf2CF7T1Ra/S1vV29FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R54QG6a9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R54QG6a9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA00AC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745382593;
	bh=Iw0vsSuLoPMu5Ws3t9XE1hwRC6ngw9NcTPk17FFPB5I=;
	h=To:Subject:From:Date:From;
	b=R54QG6a9o687+/F1qOOu0lxbt8WZ7vExUexa2z6YUGMctWlwAUadSXGDUyEr0HKKK
	 SCvAB6nLan9LelU04LdniM2BTZBf3+dnfKV/Jf1WfTQDcEOsWnjF0RZPpzdv+/Wgdo
	 m5nh1X/gT6zPkjOQ/Kvrk8GakCT1etjkiy6aBfJ3Xs7bn0KKmJ1/X3D6+oLOuPcdzD
	 hcWU69bgq/K40LJBeGGIILJTQBrp79RRevZi38cZsHpDLmIOWEdCdTVUNbxbfEmz1x
	 B+NWrlTwCiRigP7fvn4oWH34wKdWucxVPi/zZYxWluKYIfkMmdDnvruTf31hqwGvug
	 xYKEQWWlBzjpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D829C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538259362.3939.953053316131171057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f90b59ab20936116607ba584600f0193b019596dc28870463eb76b9de3d3674
Date: Wed, 23 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745382593
