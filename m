Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880DF21FF2A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789398034; cv=none; b=AxZk0OmpgL5QTyk20szBApkGnWqJPZHbYmzjlz+u5mo36odxN4vv6LSlas07Uqgu7b6Qs0jH94hBTM9a8giYmnRZBa/ujPJGqVD5RV0Wa19ehUImIfyl4u9/2jcpd4mKVyGE2iGckZLFJEhHCdnJ7E28rb33IDwh4EhLm0pWWuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789398034; c=relaxed/simple;
	bh=AIxkNkEju9YVtoTj+fdIdSL9/dhcDI+ZRGPsK0V2/KM=;
	h=To:Subject:From:Message-Id:Date; b=vGJXh2RpZXDTBxcrBxZY7OjyHOPHdkA+Hl91FLnJhNzLtFWtcKNiJg2tQSLZUCw5VnxpRrncDf3YSgA+otQXg6GQc3+FVRF6DLmzUZ+tNvZJGgW5xXXWYNEHGbH95nReUOcVn3SxxPp3IrFPgTKe56EQWMCQvfbC5lu7lNEn4VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mjqjh2jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mjqjh2jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7722C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789398033;
	bh=AIxkNkEju9YVtoTj+fdIdSL9/dhcDI+ZRGPsK0V2/KM=;
	h=To:Subject:From:Date:From;
	b=mjqjh2jrQjYaMqMn0zD9yjkoesFfYN3pEA/nFmrr0Ud8gXdMSjle5HbEKFfTf4uv4
	 Sk0fJCac9sz8MIC1l7H1U1tNz1WHBQZvnxaucZ9q0zluAFGS8zTwwKiXiM/77lYTGb
	 jMO8QWwahMK8RF++CGVwbl4lG2zt21kj4TL+7SSzdfn+qoMOzWmcEooTzJbM9/0TKv
	 Vw5uXpITntJVbAW1VT9N6Ov7AR2wnmm/KQjVjgcZD8m7Us8ce+16xlcrxXdxXG7WS/
	 zkQBINTWEXIfoNWTX6QkLQXE0+e132M9A7ZVzX2GNzvAb+jgzHqDdjZGr2l97LwnE0
	 6Nrdcprb45mEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2692C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939803371.7551.5162586231553647251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e894ae81e0d34e7b6c38383fa5e34541cb31ab0f61eb0cb59c845007bf8be7e8
Date: Mon, 14 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789398033
