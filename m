Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4151C3FC2
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724286354; cv=none; b=N/CVOI/zZ8B4MFc9bjIl/MlTnr4ZZLFWS9tUJCKDDb6RktovDEHzPxveC50XhGEURKK8jOKsbxllbis+7YMRnY0Ts/U+k0TL9C2qnKj4LjY//1fiPxwY7JaRgXafHUI+ACZSAr+ygYkkBsevGanlBAHsx2KDz9x2jYvhcEHTraY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724286354; c=relaxed/simple;
	bh=H3jYMVzBxvgqxBZ+Wwb8lFLd6CXRx01C5rUX8AT4jU0=;
	h=To:Subject:From:Message-Id:Date; b=OmLgytWwFtNHp3mUzifUOUdGfq7bnkdxQN4+nf+MzncqZuUtqtJzUT47mvxDswoJaeKTf7jUEVG94PpFLQm0mrCGdv5H9RSyk4enAcep8gyrTtDi613B+Kbz/v0d5Da1fiiKXpl8cgBAprSZxljxpS41M9GK4K0m44xpHMec558=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsn2ox7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsn2ox7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11D1C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724286353;
	bh=H3jYMVzBxvgqxBZ+Wwb8lFLd6CXRx01C5rUX8AT4jU0=;
	h=To:Subject:From:Date:From;
	b=nsn2ox7fQbjsvqS9u2Aw8wvI4SQGh0SMLBc0bRZNPAuUwuvMQlVU6B/9uCNRc9KUQ
	 wheJrDSFtwKYO/ger9/+9RqRqo2yvU8zsZqTAcUM64id8zvxx5Lb/uP9ArjXUSH5lG
	 EFeCQEhobVAYXIF1KSf3TNtpy4cvkl6jFpGDIjIe5iLo7cjnp2HzrhF8PatEBVQMPN
	 SOyXDd/+acP5YRzqU6DTBjEh1XrN1XQD4SNXEBap30ZRrdoOrnjfoVhwTF3RK9mzsp
	 KP7VmL+y+WklPnvQ2B/ghOBSANDmizhdRXntm9bpq5Abl1ilxCu1LHMJKhey22qQUE
	 PRbfhd46sElEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF9AC52D6F
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428635362.28813.17158915085699200414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00bdf8d8a3b27134220337fbf70e3ee4007d008fdd14bbb463d94e998413c7f7
Date: Thu, 22 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724286353
