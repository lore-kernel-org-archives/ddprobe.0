Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C24BE5E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772703294; cv=none; b=GRJQRs+Lc52k8OhAdQ51m0oDKcSabErSXwFuq+JXChydnOP6ZWtcXY/do0RIxTsgD+hgdtNPIQR7D8kph04lpFkYWJgoiX3LvWXBVLk5qZBB1Y016/M1JN4TPvIVzHrDzAUSczKftYACrpt9kKluF8vpMf3t8DKUo0IWOg7wlUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772703294; c=relaxed/simple;
	bh=86HnJQk8PJjcds6JJR7gcuD9gt6QfYEE0tNVLbnCOwU=;
	h=To:Subject:From:Message-Id:Date; b=EdBI8JiVOfoONbz5M02C6gmSNUCrbbNilNd9Cy3dcKo+YASciObDuID2S5YDufff+aIp/zGFp7igizlam7t5EDEsZgnZa5m6qxj402jJUUB/SoGkN8Gamy5dyRyUDsk6LPcjhn0qyxsOxJZuOkElRtU1vI6NmgG0lGtefhUKtOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDN4Lbm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDN4Lbm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1014C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772703293;
	bh=86HnJQk8PJjcds6JJR7gcuD9gt6QfYEE0tNVLbnCOwU=;
	h=To:Subject:From:Date:From;
	b=nDN4Lbm1dhbR67KeZcBID1Vhp0npMAwoqDvqT9sxPBtqvbdrAhsFMas7Fdst5MYbA
	 kz+NYc1cloQs9g5KCILHq1rPD2l+hj5W7IVIoKV4Ycmtys13FkJH/Ce6LkKEf+c2nz
	 czx0HWHVCdS02Rl1PAtxO9+D3H/X5leRXEc2RMG/pZM47bcI3IOG03kM4Fu49evgfJ
	 asrdYq30yLA7FfLTrmd6z2vEhOVZtgveo2HCffOLro4YCBjdJ3Dt+DqMIjVb/Kcke3
	 VUG9kFM96XPQXxVK8PKlRo0w0LruuzTVzwRQqe9j5T46RBGCXxvf50KoWZ1RhvSsJE
	 tLmT3juxkfD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93176F30924
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270329359.11105.4631010342699712664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9892206eed1ab0fb13b07df89ce8388ef9ef1f80fea85f45591f64a1a99476b
Date: Thu, 05 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772703293
