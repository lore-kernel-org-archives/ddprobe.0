Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D11B8632C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743386995; cv=none; b=SDcdsJzIGdkJY8UNnWauj52swtW/xRekpFhl/le7Ky4yaY7ZzZ7BRPDpC/TtHfgG8dkM+hSPvjxUlYvRseTVkXIfEhpCTb4PPgAcP/KR9q+/TzJD4GOme9qLX4xHNeEMoHzXQ8a+781lOIfgt7BAqRSiz6WlhfWOTMaicc1NiVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743386995; c=relaxed/simple;
	bh=L3NaDW5JhgCEt8e2KoZXVEQZTCfPef96OGlhXEoVUzY=;
	h=To:Subject:From:Message-Id:Date; b=DRkVh28JEKx7uqk8g87XAHgkMEIXER83mPfT27POYVozWEPXbFtcQK31szAiEbFvJI+OCmtCqKpQksXgRWS9Sl68LMZaehSdDmQe/m3wG5YOV9QfmYNa/GxFp9fb39H5AQX5GKqHM0e3Km5xayQO5agb7ginfb29cyEGXEwaqkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMYJzvo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMYJzvo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7680C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743386993;
	bh=L3NaDW5JhgCEt8e2KoZXVEQZTCfPef96OGlhXEoVUzY=;
	h=To:Subject:From:Date:From;
	b=SMYJzvo4AAgqcxZ3ihvWGpFnqUoNx7AKVFkC8D9RcyU6iQSVFgRhia0NNeYR5k4B3
	 l5/5slFw+xGx7qWA/c1ZTOoVRPjSnb6lysLnkQx1zjleTn9CRZdEEpkKFWEnAKe/rr
	 YQ2ZgBXmggofsqKCzWenJK4itRjMtM/qHinDyHrMQ8XHF7aDJpEk8xif+dOlGl0QzS
	 Vs43LurVYUsSI3j1D9UPqwmI++QqZH/9OqWwBlXXOICp27yc7+Msd0WGU5gVSr8ZFy
	 X9w0VJVTQ8PnPJ/LpLBY/smkLIFnp7/dwCWI0AXoqPRPJ9J01Wn2HQI40xdWQZP5PR
	 wZ8d6PW5NTtMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF9BC28B20
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174338699363.30546.8169592508514868132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cf98331300b8510a32efc08db534f3f0dbff96df519658f4e3c518ad967a88
Date: Mon, 31 Mar 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743386993
