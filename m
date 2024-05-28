Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E29178CFA
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716908663; cv=none; b=m/EMd3BbsNjm1h4jKIGRfyKOotUMugQwLl6upBpC0sZt0ytMLuVl6cZvAh6daucrvhFpbLEAzULZu3skK1Jnt1N7nekv+ehZo0pdBOuVi+jrq13jGjtz2HtrJt9ezrBUhbMnTn4dV6XDPo5GIoCQ3x4RbYh6TVus4jUA2TNIvz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716908663; c=relaxed/simple;
	bh=mZz/v5pqrGhOYnIrzpR5/FL1AsyyoWRQWRYRumPwXzM=;
	h=To:Subject:From:Message-Id:Date; b=HxyFnwOjl4xvnAfgOUgSA7KnmXrREz6mVE2ozRRxj70eyUAiaALINu+q5TfXif173UMYBZcSkkECjlSBFqovL+bJDHYDAcrHptqmEMVamAr6Ci7jlJ4lZTVznnLnfXeFUlB5jGy6+4M2OQctBhQKCKkcR0sD3gAq1mZFi2I6ZTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzaLejxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzaLejxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE8F6C32782
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716908662;
	bh=mZz/v5pqrGhOYnIrzpR5/FL1AsyyoWRQWRYRumPwXzM=;
	h=To:Subject:From:Date:From;
	b=tzaLejxUrttr7s8zdlpSiylfiHeGfP+H+Whvh2jovQgIAGXqWvaJWFoVkmiMJRAJt
	 XzifbIX9SoWmGCG42IlB9Fhsbh8cA3QIitPaXV2WJbmDw4TguhlbHpFiKhkKrD0bNP
	 y5dELDrr+wB6VFUBovzmR4NZ4eYMXZe9vWR2bfPA3UzmR3Mf8fG/bRTHmEaCIcG1Yb
	 wgZjIWSIv0sdHJl+gz86Tsu3kwQ00TXMeQGnIT4OQdKw6dkf3ehZ5swRySDyWJ3qtg
	 BJZQ2QIpUvxGiry5RA5m2N3hfH6lINxLpdCQbAfoVV8wJDQfHJa+HHE8IsVGpEs0vv
	 PmQUTmQ7/QBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB90BC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690866282.1055.4090004636895386078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723e55bc04f62c5a2ef22312c0f1aec4fcf2f738e490fc3056893c7e0449ae28
Date: Tue, 28 May 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716908662
