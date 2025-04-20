Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4261F1547F5
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745156995; cv=none; b=B83AxnxXyzOiAfzz32m89r81eoioLwMpFOQ9LT05yS0d8IrKSpamsQJgkaU0eWXwXfdvWmtc6kjXYFsNCC7RLRovMKND5pPOW5yBUG9pGNxNCs2+CyXdhMFIwoW0CtkLoHnW0Kp5LME/ZL4vCZZluyWCZEcua0VzuF4cqI8742I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745156995; c=relaxed/simple;
	bh=ihvzqVdAQmR8Bs0DcGcxkBVnqVG6NucdC6vJYM0oYeA=;
	h=To:Subject:From:Message-Id:Date; b=UlAdZ6mYjPQyeOD9GYhnySzvbanX8XgFJvs98bmYjRa38r2mMCZHa9zsaSKzOtq9YX66oSbYcewRkNYNNxRlnw46Bie8YhSuINkFWnA+KorkgnvwdPH7clcTFxphRJ6iD8vc8VRCz4sgyUWNNtJavJp2ZB5uYlN1QGVbU9KEazo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXztkqcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXztkqcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C1DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745156993;
	bh=ihvzqVdAQmR8Bs0DcGcxkBVnqVG6NucdC6vJYM0oYeA=;
	h=To:Subject:From:Date:From;
	b=nXztkqcsIJ3AYYN1nWEiZoWgktY77kqma+r5/8jktSG6WjXt0qO/mdHQ0zfPX8biv
	 Cf6H+FVIcZRBIwVuIZxMXENKMATu1O9YIRH+jj6V370QakkFmfQCWGjst47Fkf1hCh
	 R/eeKL8LnOqOWML/K6g+tPm/ic3KNAPUOZHHc+nocQVCpjLFiYgx9StowEcFtaPdL3
	 DDS6LwRPeh8F+dTpuZSoA+0WYD2H1SHbKZlyf1ic07Zmkzxs/wpA5hCJ6m+VL10ub4
	 qvX1Rx8kSwWpu+JF0izrxPtCg2/MoQletiQ1dUQ5Ak8xPUbMYL6OpS6kwJ5yM/H/mQ
	 pWY0b0Vwyklrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C76AC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515699361.30980.10587604203779879365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f7174e302dfcc9e7a8b34798cdaf93ecf700314974ee9f90540a2912d65ba6
Date: Sun, 20 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745156993
