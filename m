Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E86E155327
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737188754; cv=none; b=ITOe3c7fo6RcMNIZMfeE1ULyffrz9jIMSL8m3y0sJGUT6BYD7i0gm1Fst1rnMDjeG1DIpQQRSRZ2gVUn6XS0KUEkwVqXoh2P4jV+XHukVZPPN0InxtwPsbDTwPIuxNhUSAvn+nIT1VQbFQQgznKfP5re3K2/TymnLCkoA2r7i6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737188754; c=relaxed/simple;
	bh=8DI22yCfGyIxCpTQGik3FX5J5sdqlyjmq8Ho0VZp4A8=;
	h=To:Subject:From:Message-Id:Date; b=HsO0BlHgMO+ndN8SYMZCBDGsT4gaTUFbOPIoy0zztXQWuHw0cqj03oYkTSGrvHtyHgwJb184LS9i0EUgK4dmatvAZLNS5AClSJLTh99mV+yciHGAYC7H20+8SVRGTLD03EUVq5Wqz51QclfFnKJ81/6zBW7xAxoaunU5f7rodHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngaw/NKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngaw/NKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC7C4CEE1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737188753;
	bh=8DI22yCfGyIxCpTQGik3FX5J5sdqlyjmq8Ho0VZp4A8=;
	h=To:Subject:From:Date:From;
	b=ngaw/NKqwXPS9hfzVcgPzCVYmouw7IK4DYLXbuNW1LPlgX3L14PniTPdnPfUdDzyZ
	 RcqRwpLId9RJlc99TsneQHwGX/guZQiGV1/yjksp+n+oHP+GjGNeoMH/s2nsQVguwZ
	 6aJUiWaw6rC+whoIAHe+9TREAw96OkAvDYCwHWdYHnAJR8+egteXWXdPFbiNbhWQQy
	 F8P2tlckIdumWUiwanyhAKrz/1/meOI9qnXMfdwdjTulVBcLpE5Auf3WQ7UGrv2tla
	 uvG8yruAsV2RDSydLdIYs/9KT81bQnTh7JWzwf5UZt5/Pn/mWhVk8I1b7JLzmFqlfl
	 0J6KBs96tmnhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF9C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718875359.25825.6254745728826235512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83803eef9a82b82f8c7ba668c1aa3e031297efdf98147a699557d9a553e84d2c
Date: Sat, 18 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737188753
