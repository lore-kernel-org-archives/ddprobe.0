Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311FD3595C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744219194; cv=none; b=pR9OL3FLp7jRIOyTdFB1em05tCI2P5GKYiohmBD8ek9rSk7t5hYGy2BB7VpTHbL9zzYu0i0KrAaAJlHWwA4c7fPD0U7aPNOr848nEWjKjJyxxqhMPEg+oFgSE7EYj/BZKMMGZ4NbT9azxKpnXfIERIwOo4ZXOx6ZKHuiqInIN2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744219194; c=relaxed/simple;
	bh=1eYa1TjLwQpW7bqHHH6FIkmC9miIMN2OPaicFdx+BRQ=;
	h=To:Subject:From:Message-Id:Date; b=hE9yI3cbYnQmjEPGc6A4JyAnbgmfXxmyaeuE/6IPItjlZz1rBMuD6q2JulIaJ6xJJIVqUIuQRzUykZ1KASjlELEKwwQFrEJmRQ8DupqzqSbBrEXAwhFswCsBux7Hmz+KaUmQMd4O3UfFv5owY2Vpue1dnGfNY1R0HAiwEbbFnRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVUd5rDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVUd5rDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2398C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744219193;
	bh=1eYa1TjLwQpW7bqHHH6FIkmC9miIMN2OPaicFdx+BRQ=;
	h=To:Subject:From:Date:From;
	b=aVUd5rDB40K9a9yQ9V1zFDaO+ngQ17hM90lQsAv5QRRXWVnU45YBlcFEPtTlv0ce5
	 4LLAlM/KlUoqUXSKNwhOn+bTqE8LXG6E28Z85FJRBvVNULV+wG7TSEpoX+995g8cKg
	 ywkXClwWVqg6cspWsq5a+9bcl7sr4Nn2k/XuCxF0p93eEFCP1pGRIe5c27z7gC4v/V
	 p7mLueZu5yygKTfHjMxlX07sM5bs7keM9Onx/ZVP3BFJcf5AxkFDCkLkvVu2B1YH27
	 duYZYWp4VcV652Bugxrvb8dGeybQzXJQtBeaEWcpYb5oO0uCHE4l9jtJncmQqn8GWz
	 X8eDMHDKwBK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91871C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421919358.4653.17157274393164626424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c0702a52307b0a9fb5d32d018032805d25f4bb58dbe9e171c82eaba087a80a
Date: Wed, 09 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744219193
