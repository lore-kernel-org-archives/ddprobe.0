Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020C93C1403
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774284294; cv=none; b=lybZfHf5JcJHMg1Mvmoon2Bsq6YP1+7E6PAj8NGamKpOuTEjjTPeYldnN+Lz+/qBnVcAq/OWNCURDqTq2IjMAiNTFIdlsTH6h6sNiCAMoXy2xWUSza3+2M3lDrTR4X3RqUeP3m1Qon5/Eu5bhr8AI0fSBEYZOrce+cBM0DK3HG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774284294; c=relaxed/simple;
	bh=kcrkNXmxUwPVgQPFyYvNgGu/YHTSehvthMX7xCtqUOo=;
	h=To:Subject:From:Message-Id:Date; b=pjA9KAD9K7KazDe9mIjE+k6yivhvULwEEK/ow4sXxHFtRmeVbN4jJwk73W3HHS7RlZEwGldYE5Y9/GQmnIJJPkHhq5cEFaLMspHsFs+sE0vdvbXkh8Y2DApDOzFGkarlml3icl5bGgxkb4d999qP8+5jFdg9B/+RefsBB/ndFa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ho++ej1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ho++ej1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774284293;
	bh=kcrkNXmxUwPVgQPFyYvNgGu/YHTSehvthMX7xCtqUOo=;
	h=To:Subject:From:Date:From;
	b=ho++ej1J3YD8BNvQ7JvXXDQEqZ4LAn5S4Ch7bClk+BvVx0bHGy45KqkgLifxaEKNM
	 Kqa5h/++Gc/LCU/QzsVclKSU7N1ffiLo5xzfa3SmTKee71ehV+RCveu2k9yexmCPyY
	 1tP7Sz466COA+wtHRz1Ef/GLmAuPjFTLwbubMwL43W5eNz3uaL4Gv9jLKYJqDmOi8I
	 j69Yu1VokEzHqwvcSe++nJ+qMm45eLBLIckuVrLxYmQ9f7VQVYQWt4vdELgzvmlkDS
	 WFF0kSs755z/DH7XXIfqRwnIwd05rZjNdtcT7Jy1qJeVPUcGIVn9HKea0PD39nu5IQ
	 fYYGEhjZ3a2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DBDF483C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428429360.20883.1603042581280607796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743bb02a318e91c99f323ea5b06cba7fa21f77d8a0e8804e07fae4f0ab45e792
Date: Mon, 23 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774284293
