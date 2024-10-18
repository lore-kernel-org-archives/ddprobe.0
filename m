Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800D117E918
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729232754; cv=none; b=kroSYu7V9JXotYgaPNX/+gEud0074AeecECfoDqdA8y91OmW95ZFfgVEP/rjoc9C5jdV1dheEdWl8z0nqvLoeehFnQf0FugwY3+2vpPzPkWcgVf9unw8VEHtA2ZAsQEY0gKoWBpz9f0pvK2zBFqyVmDuao02u60swUW9cSMbypw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729232754; c=relaxed/simple;
	bh=P+mBpaKZ5XICgl5N3V9x+ujxRPBL5UekB6a6zZngc0s=;
	h=To:Subject:From:Message-Id:Date; b=UxBLmJmzGCRdHakoljhLnSIWWSM4G0AIUk/uD+FmdHD263n/7HxNKZhsQxvTlzqVrfM0BRU9k07yiKD8xcfglJ0WkAyJ61hCBwVNz/73FUo22LwJm4mhuzp/sHtQLRIuxVSC3KIK8Rlrblyf9jzmJA7Mh/2gQwBSACB6BY3/FX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XutWK3w6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XutWK3w6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07A70C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729232754;
	bh=P+mBpaKZ5XICgl5N3V9x+ujxRPBL5UekB6a6zZngc0s=;
	h=To:Subject:From:Date:From;
	b=XutWK3w6OxNxfnBuTbHTFnKCFULBrA8Li0twDHyLZyNwKeir54ZJ4dlju5h9pu/Hr
	 wu8IQWfaD/lViI0pEOjXkO4xqAVW10cKEGvAO48lbOsNOztlHZzGfZXCf3YZMMWLEQ
	 TABx6yS5RYe1E4YdUswy+DIBUA8cuzWwcxnry5TSLVSqs3AinQ39IFpfYGCsQW8oO4
	 erlpKaSJo/Cq4FtQkyh3eqAoq1d56IgobjQl68oz64DbayKfNd185KtfDfNMqY4Hty
	 6/1Ilf+EKnwOOykn73Pd5SY1cgZvNgFIZUyPxUwMQ+9pC+n9R1bj6kWiVb4A0omrua
	 wjwhFY7UB13QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E78DBD3C54C
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172923275393.29783.17105376911508105155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b0b99b69baf4462ad93b83ba6c91f06ab11d58239d98aff9d64547089b1b9d
Date: Fri, 18 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729232753
