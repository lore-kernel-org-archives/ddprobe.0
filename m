Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319D41862
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782524314; cv=none; b=TWLUFeTO0mSlrO60UjkQTRhC6KXrwL5/KdfAV9rs84PiMeAiCIjqoEn4kFBFweQaNDth/z77E0N0+fhLsX9YZVvMvXHCYQZo47ktpeyi/uOoVuHF6lYBzGYanO1M9kapp+PhXNigF/qBqdm2opv3s6sW/nXzlqPK0KmtOoh7b30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782524314; c=relaxed/simple;
	bh=GCltCzlfR8FnPCUC02NgRxFO8sgSUpW2qRsBc+S9p5M=;
	h=To:Subject:From:Message-Id:Date; b=JwSqePYDgWwwGw3SMTPrRwaMKuUUPplA9iDK6OEIy/wpiKroewEZfwEiBkKVPLhWk5+dhf5X9qXYgOg/C82OI0yVdQVBgj2msYCYn/Lyzz2Yz7vaiab4tC03ADqhKUmDdJxVhjV+F1BQWKA1iNM2ugPdELM8Ywe2E6jLq1YBFcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4JIKwoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4JIKwoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4515C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782524313;
	bh=GCltCzlfR8FnPCUC02NgRxFO8sgSUpW2qRsBc+S9p5M=;
	h=To:Subject:From:Date:From;
	b=Y4JIKwoHE7cd4AQ4GUrTu+/Pzij4qoWKHgmVgwz/Nxj8rKAbfA+78XPtWv8VV3AOX
	 /xhjLEIssq6QNQvUdm6RX30ArnAYBfIUDBnj5hkYm8fInIRdzf1DKl5GWQXd823KTd
	 lDSUu9Lx5dP4MfbaVdRY6Yl55zFZvQd2D9bkdnI0+ZNhRvKDJuphAVIg5PHIvDOPck
	 OF+njnY/mQLkd7PR4AC/lZpbCj9aHly1RNjefAU5CI9Sls4xrfItcMEzxBpza7r2YF
	 UAp94aXATBXA0VWqs1Ji1MRZwkVS3/TeO7CwLZDYYRxeUA5afdS2XJsjW2czmdXAsS
	 6O3GzI5l6m2uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA94DC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252431369.19571.6899639790557535199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4fa79037dc4f14726ac3acc6f73b2b3a542e33d30bc7ead0a6fa45e0ccaa21
Date: Sat, 27 Jun 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782524313
