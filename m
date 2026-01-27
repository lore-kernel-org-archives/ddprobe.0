Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC5E2E718B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769520233; cv=none; b=CgHzx4sN+VrthoHQbCvoDdzJeppZKE982n0n883PIZ8npXYYXb1p57HlHHpRGMoHu0RPkswQDByhlByc3Gb5B9ouW42w98d/nHGvTND7n/rg1CVW2Elw/OBShD8EKXooMzCVRTdvEAy4OqusPc01DRHHnebdRVdP3Pd0l3LCYQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769520233; c=relaxed/simple;
	bh=y/SNbZudVB7JuusPrYvCGc6SIEZ5kr25l0TJBQwuF5o=;
	h=To:Subject:From:Message-Id:Date; b=Tph9+zZmdPwLQosawxOUT6q8kdxBcnJOiOb3zsvmZeMunWLUGhwZlE+/zMyWSeXKlKFd0zNWnS5pgRJ7PNuvCqU6XzwRDn4JBVL4/a/fh3XjjKBcNtzBHqUJN3bUzij58rnyb7VLL5Hp85X5B9YrpdwiYOsgcHTirIeLg/Ho0WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adPNuy8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adPNuy8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD16C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769520233;
	bh=y/SNbZudVB7JuusPrYvCGc6SIEZ5kr25l0TJBQwuF5o=;
	h=To:Subject:From:Date:From;
	b=adPNuy8Ue/oX4M6w4zEIYyyfnZYmquGCAFykGeY8llDPoP0m3FxdyieXtL1ra/MlW
	 bC/nO6ZzGkPOjYwHGBd3W8ZMevtwJxpoArwLLoh8XVMiPUbZQlZbHIxZRsUK4hBCi8
	 xGKBzRfcxV20YvRLIlwFjt6VQcFtVR/+3/uDY+ZBpFJuqz/9f1K11d174kHv0KdgqU
	 4DhG/qg9LBs9rXLBrqyi48YJ3vKwRqO4JUD75+qHu+aZbJq8hobmbDblkhzOIJjB+O
	 H5+T6mn9Z+mCgq8z887QN0IH2sIuF2lAh/ZdBgl1GsDCJJK7gAkl6uHxbwVMQPPque
	 KFtjIIpixl7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D9D2F02A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952023358.16276.17553780896289897820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50145533e4246d39c7a5132214498d471833b123c736880b937a0daf815b5a87
Date: Tue, 27 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769520233
