Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EAB3148BF
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789844434; cv=none; b=STkKTH9S5xxKvx1e+kNzSY4uVjO7bm6b02FhOE5jiqHqxbw6+wuodKLf9QXcmcb+dz8FgSjHwrwaaPxwl3wjMVs9JlVhpd1X4tGiK5s21PjJSPIKW2Pn2mQIKy5jiXKq5Acc+Ve7rEVswCDAoG6dW85ZtRiEggq/vMmsTjwowP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789844434; c=relaxed/simple;
	bh=lCMmljCLp/Ohy8N+9Q16rQHOkuSvzD+iOSJfpUzGVns=;
	h=To:Subject:From:Message-Id:Date; b=Nbn1WQnj41gPPvUvfuUkJbDuNZLNCycBzQN7wFnZI0p9cqfSjU5dMIOqMbyuyO3rSqntJ3xIFiU8+u6k/Rf6CDxlOk4WEtR4iYAsTmXQm9PyeILLqykrdCDloV372ipT4vNKfCQT5q30VPNJFTGxzOSX0X0IiBQn9V2dpigi9XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6M3Y2Zq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6M3Y2Zq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96B5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789844433;
	bh=lCMmljCLp/Ohy8N+9Q16rQHOkuSvzD+iOSJfpUzGVns=;
	h=To:Subject:From:Date:From;
	b=m6M3Y2Zq4ASo5noNa7AuYy1pQ3RPhdq8eZEnOCTGxbtOc1o1zZKToe4hIahvEl2BU
	 X+eqqO9iDXPCIUq8Tg8pgIfQqZBwXu1QuJAdiMIjrOQqSN8k4+uVW+guJXoGnz6f2K
	 lmU7YXOmuIs8oYkWyLpLZ93Wlt8pjFOYlSbYumNawnXNhNQb6mIYPhLB0XA1Fxxz+3
	 HjHXczXXMASgrtsakppPT6wQarxLgt1ejiCzlJIfpwWLl8FjJRk4RbWJpOF5PGHJvr
	 bzOvrA03B72l29moKNGprqZ4ClZDj4rrwkQUgx7AzpBUkARRihatq18ib/+lIpPwFu
	 xCFKPqZ1FySdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC35C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178984443368.18185.9584922142113177108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bcb5dcedeae410665536370ba1bab78c33ab22c4a3be6131ce44441b9805e3
Date: Sat, 19 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789844433
