Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EB755887
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738892756; cv=none; b=QntRvAb5wXymnH5F4t2SLrhZK0k+xW1uVuVpvr+AMIDTTu0caFrbrdMK5EJrzJ65YxRJxH0osPVqzXiJp4gc1e+MwYjzHd/X8OKHjc96z4zQpW6w/ob19FKsw7w7rXVdu3byH3nmLJUKI0pxOnmQ0Xe8fmSDx5Gei9cjsQBqWzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738892756; c=relaxed/simple;
	bh=YKF/+KZfhLtX53Hk0YVOHRWenrZ6yTgS2uxWZBRIw0M=;
	h=To:Subject:From:Message-Id:Date; b=NKEK7XELEde6TWVrSp+wIySUjaowihbMua5OTA/p+fWcMwbefnx8bChk0ptEcriTFpKK3dHRW5arb8v8SOhgxsGh1AD9k8nzmW1ddVgg1P3o1DKy5jttSgTdNccf6bPQl4dXd9O4v9+sjPvE4djD3bYL1rJ6dZShKWGoYTSVbUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSiWfhLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSiWfhLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF57DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738892753;
	bh=YKF/+KZfhLtX53Hk0YVOHRWenrZ6yTgS2uxWZBRIw0M=;
	h=To:Subject:From:Date:From;
	b=FSiWfhLweboS8vZdE5Je9V/9uH4HqwKtURZDeOlzedKgVOHTD/FF6hP4jCQtyFz57
	 YB/zfDiJtoo4BJLsr1Ut/s08M0IVm+gtmE3voDUZ5q0pykHIkYZrnaaNl4pVu8Y8ov
	 JPfrJQNhuGRWziZEoQ2xEy/NJdpveVQDXp/kQoh/JnicNTrqoW4H7ymNxQtUd21dTI
	 ZxGJW9jx8arR+Kr6+5880E753TSNkvRnPCIH8b0QC5Ufi68Yoyv0ATEJmLwS1APyYu
	 KSEdGHWBTuK35oMNrNLEARZmOnrXa+LDXaYnsFxPYuICG3wu152jWilTvuwByW4i4a
	 942A1G0aN+1PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D98C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173889275359.29401.10784461998378676546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f216082dce83255960be338a6db55afe2ed43de48a2bd88c6026843fcbf53210
Date: Fri, 07 Feb 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738892753
