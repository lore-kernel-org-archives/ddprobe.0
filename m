Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44246E567
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748398796; cv=none; b=l4Uv3VmsLdv1rP1kYr4hrppo1Pcdh5GTYRiJYtFtTkofdXQl5To6Wf8nunHWdr7dot83ShrbMZUJDakBbx0ci5U1HSuXUZ3McS/UyQd2S75Qdk26IoiGq9PD117ySYxoXQlmYhg7Sra96ZjdpUz3WqK6MqYM7BZULXkPIwvD+mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748398796; c=relaxed/simple;
	bh=MmBVzMGZPuv54NC9l2xEmah+BBMX749zt5UKcJkZxGg=;
	h=To:Subject:From:Message-Id:Date; b=kN5e561e2qovb7p8lJ3Msa4rOWlkCxwiK3jxijtskSygBJtagR9aXOP8uwQxLFWA5+xfU0asg7IBRjCdT5dSX6oGKysf1/r4Ytc1qOiGa428VhNNvLegzXqZEsXgeK1nvi9QR/hDSpj10yS17GiES+c6RzfdKRm2ID1nnEvjkD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DO/USK7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DO/USK7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4959C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748398795;
	bh=MmBVzMGZPuv54NC9l2xEmah+BBMX749zt5UKcJkZxGg=;
	h=To:Subject:From:Date:From;
	b=DO/USK7Y5BjiRDptGvHh7Ly03mT9eahVkWgL70PFodNSfowKjl3/GpajdE8lyKpXr
	 MNnSma5M1KOlX6+k8nlUhjA4eaHKCOveSMFvPL3UNyb+1xq1ebNznbudIKWpSBs9mn
	 AN7EG/qfXl3d/EPWtGj+fjJvb5Z6xO5E0h0XzxPY8vlc3mAMRaf73gqHUMOXT5JqQ7
	 decyJRxOed9t3prqrR+KtSUg51OqoN/pF9AUfYOZZlrQHxu/e5/TgK/pmxQ1QWSE5b
	 UlITGuGbVmNzBcndN1hCfbg2btU3UCsuRmexD47xy5UmbzjRbVD8YCzwph4678QxdO
	 hmzej+2UIoISA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C93C5B543
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839879359.19866.2790055311112915737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77972f62019f34d49aebe6f6cd0f395c9b6777d7596936b7580f4437b124cf5
Date: Wed, 28 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748398793
