Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4088E15E5D3
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719840323; cv=none; b=ZFZIjSJU3a3vgNko5SQZP64l9u/pAVNqXvstDz6KTiBYw0lc0rPnHr1HBEu3cPdlirfePvBdBh74qrGPjRAF0XuCo8DUnCW4ZYtVhKMKRLYFvHTxEWV9wSUv+bKB/+VeDy7t3RP8ePv1mMyfDg1Bgp2jDxAqD5r+x52mcczWRpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719840323; c=relaxed/simple;
	bh=J3l9MGeN4vC+zZakXtOAbgw7pBcd45ejiuf3prWHM6A=;
	h=To:Subject:From:Message-Id:Date; b=VLqUVCCnC9WYYSEm1dBTWYc/+UnhL4gZgH4xXngo0Mc76se2wBZuYd+qFvIWNP9w2zy1RO/PsEqzBczsLY1KStTRHrtz0CJaUkX3Qfx5yMyP58KEgBGBQ7IH565qovvEGFMyWQeYqvuMZJwFPhSU875wXAqCg2G8hhR137HSLNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+9PnGiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+9PnGiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2661C4AF0D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719840322;
	bh=J3l9MGeN4vC+zZakXtOAbgw7pBcd45ejiuf3prWHM6A=;
	h=To:Subject:From:Date:From;
	b=j+9PnGizUYaITWAsFscMC23D2kBPkTVwoIDT1iTnb6Ev8d78MmakeyG11jEETMkqi
	 j++MzwKXyHzvhpdF+fvxs/JID+96YA/QBgnyNzKhNBqhM6J+Thq7plwOxwMn7b7fgA
	 qS79OKq1+49USRQw8Bv5KrCMCh54Q9uUBY1nTvnesxtl1sNhNYNAXKZ8ikxF92Gd0i
	 Uy58sEVE45JqSmq79GzpUBn4RhJyoL7zURRbOcPl9vxtK9KcTHRQFiH8Pfffer2bbM
	 sO61G8rJM6GmCVo7+C+UrdTB28IXy41FA9Tv6RiwKPfkZAEO/qiHemXC5iLkdNyWKA
	 MfEXi8bd/s/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1C1C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984032276.21289.467055130543476930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610308ff000e97fbfa92dd5ccc5392df037e0a04b7a338bf9f54fb999ac011c4
Date: Mon, 01 Jul 2024 13:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719840322
