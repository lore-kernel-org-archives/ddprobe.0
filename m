Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC4916EC1C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722092153; cv=none; b=NGUN8U7mt6ZVQTmvYjkF21hTwrKEy2oy+OUID0ddz+H1LsuGPJoE3UssS7PWwuasjobVeoNGaaxUwODFVCnthOvV2x6AxX0q3qHl2DFO5xueRqHtJr6cU5IjngVJpuO4FdKTzgytfkCm09LfuY1sSD8JH2F4fJMlSvfMDLy86S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722092153; c=relaxed/simple;
	bh=ehAEi9WWacd/1HkD33bCzHJNuJofCnXYzucF5Cp/+qM=;
	h=To:Subject:From:Message-Id:Date; b=hpzGR4bQ7fWvQ2E6QSDthu1GedfYRrV8//1NNTMQMFUHbhLwYV75nvMxtUy6CiFwEaGkgQRH1jraVsf5xASgjKEgBhGpzrKrlY3It2KpWdJ5ZzAsuvvsZZry98HQE93Uvao5CvTpT2p3P9bTKMRRtzvB4HGCiKvlN6dHXWtLoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsM3GTHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsM3GTHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA9C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722092153;
	bh=ehAEi9WWacd/1HkD33bCzHJNuJofCnXYzucF5Cp/+qM=;
	h=To:Subject:From:Date:From;
	b=dsM3GTHUyy4AYlfypK9VWgHXh9V8nAE0EhbkeRpUS02AIzdBN2GtHgtJWHD3trh3m
	 4NkOdVhYijG08nVwTPqTa5wPWa22u26soQ6NLXZrhfZX06oACwpyzkdlxnOfhcW5oF
	 k6ari2I0yw8a7sGvxnYsbS19hZRPMH4ke7mXnNAs7y35p2aNvq/ktCIEEn1GBiIKP6
	 haOxmQXcfuwbI94xYGW1q3rW2CSu3Ry6RAJhDkrDKF/vEMPufimy1Ae2ybHIvA5cuu
	 GAQn/omeJnBKSXSNHoZuZRtNt9LBhpRxg4Nr82HC7+w9C3xZJqIWXtPsT3nq5UXjYa
	 7qdGi4V8ozjCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA4C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209215358.6531.15534799357700872125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49644dec254badcfdde5cc5b7a6b890b059e5fa04c4b25c92f6f810f9ee2b557
Date: Sat, 27 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722092153
