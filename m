Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486651E2847
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748371794; cv=none; b=UtAo2iDtDHJcquud70pHAQ63qrwLA1nrO/dzAV1WpBNj6G3Mpjut9jc7U0HqRXnuBPs1NYv16b7rwPa5eEE9bwbKS6l0q7UWSAQff+1ALZwBhJty6ns1xOZQUK7K+0UGy+FPfYr3W9xRED7ayT4+pLAFs4Qu/3va8/kDrdink78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748371794; c=relaxed/simple;
	bh=rSH+KiwKhxDUiO9DDcHvwGGJ1qvWjq6njkWee5cs6aE=;
	h=To:Subject:From:Message-Id:Date; b=ZMLdPyHPbZIH37rg1T4vjDvEPe5xqq5NBuacBQ6sLIvaR0DAN5+eQFnQ3bzodQPFIeYAGvzT20kt8DYwTf2nfG/Y4mDqUWJiCz3oNco5EyFcQGhAfHrZrUrfm3YtYSfp73v3luuUwpRQE+as+gOtldJ0l87/qeNAo1W6Fi0mr7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVV3uq0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVV3uq0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5C6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748371793;
	bh=rSH+KiwKhxDUiO9DDcHvwGGJ1qvWjq6njkWee5cs6aE=;
	h=To:Subject:From:Date:From;
	b=AVV3uq0YAaJhTplgPHowClJCSB8IaHckVvyMfdVu0JDvbvDPaNnO6k64iLUnuUNsG
	 4ulECSf68dOPWKK83Pknc3rxNzd2UHZyIDyQJ6wXuTS23BkKZ++oPQH0b9pAJLcTca
	 W0Tad1eEWgqZeto4jAlcHJfACVZbemYwKcmh8UmALFaDj6hLllkeXUWTyCLx3DEzi7
	 RZFXEUQQ8LL3R+fgRZjE0a1VbkSCXI1R/C5vvAZfc7l1X8i892HUhlpvAQlLS4vAiE
	 G6H5urVYblt+aQCtmMSab1fIqyb29rhIL4BydaCfvZNJiG+EwBYeupAW32iz4cFWIn
	 wAvnA6aZ1s8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96673C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837179358.2539.15069881052695797072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75096da725eda84de1a4cd1e60c1dd760fbd868abcd6d0abff73fae955329a47
Date: Tue, 27 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748371793
