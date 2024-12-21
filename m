Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298B25949B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734778554; cv=none; b=Sw+raTVzIQQp5I0fSCiHOBVvWXZWV7n3kzrV9MUAslRAl4d+9cnpqHqZ5WzJgzQoUX/8KAvwtehQAR8Y25lx8fO/ogSr7o7oIxUmSirTqnzoVuSN+/nnDKO/oMpn0hZY52ULjvGRuIy/wrJ91R9cZNnICV1Uvk+Q6WtcCUVJn04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734778554; c=relaxed/simple;
	bh=R9WYqyT7jXUn6bABnQUpRpQwQvprhmBuaL7r33JvW7Y=;
	h=To:Subject:From:Message-Id:Date; b=fG02Y0aDNBMtwULG7cuVJxOuJyZdlsDbeYNKpy84K4AXGLcLpBKNxPxwakNkTcJxrX0blTW6SRApa+F7vv7jrVRAu1RjFdAisaGPz2YW/zdKkFTQRo3RWECz8n5iNmiy5UJeKF+A0SbKcXiCOIYjt/PGbSWHMclHYtlVknaZibg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0GH6Y6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0GH6Y6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B065EC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734778553;
	bh=R9WYqyT7jXUn6bABnQUpRpQwQvprhmBuaL7r33JvW7Y=;
	h=To:Subject:From:Date:From;
	b=Q0GH6Y6LnJjGxtgFZUCNcFAoCqFLbz/NclvyAbpG+HMwbs3iBLLyMnf+IXr7kUAnf
	 U6lX53QEE7lMi8P0Mu114kNTvUKU/EE7OEK5FyCBf73V9G2be1J9XkK4cKGgCjQIcZ
	 kVYJCTtEE2jW2jsGD68AWsZYAfzijRtIhv7qYx9t74/1ElrCuEhAWm+Wp77oCwnDOi
	 D1xQzyXu35dSw2Gkhxlxgc3bRmljwSCr0awrypu6AGYVT+CYXHX9vEFPSuEGVvPJA9
	 kKyN8trO85rKpt0rVNIcUECf1o/kUw81UCsrKn9d51Q6kcEGBBljgjxPM7GEn0KnsM
	 hL0KRVvGWvFTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EFAE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477855360.18763.15325192295650718701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3b826be46093942e0b99adbc580c8e40e87bfbf1e9d612943b41088fdc5b29
Date: Sat, 21 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734778553
