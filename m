Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534C7218E91
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791953434; cv=none; b=gTDWW43hACl1VLJqmu36nzK6aQ3TORFMV0eEXtFSdWi00Yup5P8fDSRqQVsHS9O7icxNljqW1ruv87RK/1404LHwWzsvkdAepboe1dDMphOsPHNPxeDBrbwRcUFGb7vlPyPgjmxFHx/R0lobje8pGBz6NmQQjX2B3qBdfnFo36Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791953434; c=relaxed/simple;
	bh=77Pbj1UeiqZLUMjRoQcD8nbP5N1f+Dte60dA0EnfNLk=;
	h=To:Subject:From:Message-Id:Date; b=r7yDYnb9I6nS00ol0FoarBgtgp7YJVOlXdr/H/3O4JK0hBCGge/GUKopK2YYzk0wfAdf7bjX7zjomlM0gT4zrjGFoU6XkZ7RkkGhZLjnE2fH45zs7mocQN1z9OjSAX8eLYTirzHaNZd4ZbadS48vW9VRLbLRT4QE6ifhYWk43XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS2TZNda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS2TZNda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29F7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791953433;
	bh=77Pbj1UeiqZLUMjRoQcD8nbP5N1f+Dte60dA0EnfNLk=;
	h=To:Subject:From:Date:From;
	b=TS2TZNdamqGgQotV8xGCuAaaxMVXAH5OsZnm8gdJ1MAh/jIrN2WoBkYd1Jvp25O6+
	 5672IpXgtXZYVAyz+L6eY6wi8iy0+I4u8UHtQHtIa+JD+A9xnRfaXtXWzrAT3QJvNi
	 5VYUYCEyRFwR2KhfE4Mf6s4/0OAsDEdwzLtWi+BVFOE65mrr1VRi8jiA/clWDcLVbh
	 SxdfDNEfD4Z7KVW+00Dp/47Yje/zns2qp7hMYQPBZaImqecHV619Bz7lNsDm48wXJ+
	 oTcrBR7hp8oP93ojaQg9mn2SOFcC5S4/hAKg81ST3r9CULDazexZBb2PNqarZOqoM9
	 ZtfjVQ00mGGuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF23ECC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195343370.25415.8980447126582999306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b88a202b013c17acf860bbb014892fe88833cf588098f3f023a6315e79b2d9b
Date: Wed, 14 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791953433
