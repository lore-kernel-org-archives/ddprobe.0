Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313412DF6EA
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782716914; cv=none; b=TMBeNECzCO430ecsOWS3fwHWkOxrPHfBxfqWWkYYpXPx6Kdlifev3D66DPIVwk0O3Ez+4Hq2U5rVCpYXjeBRIJz5AGn4BCqTbSlyrkqXAstmZOW/28oNEkMXv9643V2GoyJKmvdxX+4IWbRGgJ4gZkDeVdc6wOdqroMntq9huE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782716914; c=relaxed/simple;
	bh=grRYVmmiZRw/KyCw86joJszDe0GszhHQiTnZ0HRDDyI=;
	h=To:Subject:From:Message-Id:Date; b=qt5NGpeQ/AcKxby0Ydf2c+8f1JqUq1RfgvOYvL/OdGYOF/NSYUp+1gqjHzSnxeBgLGX6p6UqQAVJ/FEJGS3HtiyjP69S3mlzhDUZn4jw6fTDvjIuXBueAgQZmiV/FKTtl5NNqcaVQnj6BRammuwyZc0TpN9sQQrX59zqoD8F3gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SuBtpGGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SuBtpGGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DB2C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782716913;
	bh=grRYVmmiZRw/KyCw86joJszDe0GszhHQiTnZ0HRDDyI=;
	h=To:Subject:From:Date:From;
	b=SuBtpGGMp7iJObSgWGFNhgG+0bLYFyub5HCPrXiHYJLz7goPEQ4Xw2ZVZcKJ5YGZH
	 H1iL75de72RDPcnBWi/wwLrFNPt7Io9aUjJORShv6R1li1IiS4Dj0Zeec6QCplCgb3
	 ReVuf671HznvRNKWdYqt+snx9PUJasQrBRXsFTvPlWWq8JUL6/P8pTPGdmsidJQedk
	 h+9v0dswqEjXAzxm/1J6LrRzr3pg8uCjZONNjj9g1ucO6gG7kpiOYUpwBcWSYX/Ysp
	 EdDMkRn/PMwyORxaqXtXKem+tH40ZKnCkYGj6ovTgVpVCfRkHHc9O9RCRygDTTr4SL
	 bhdxx4BKlSJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA977C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271691369.25089.8127839918521867186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affa7558baf178f2da20f85a973f9c24b677aa254eed27e6051dae45f1946f81
Date: Mon, 29 Jun 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782716913
