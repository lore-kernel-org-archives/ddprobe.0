Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0933043231B
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786055435; cv=none; b=F/G4Y1GNnai5yqNzg0wuBZo4/FfK1xRwi4wUi5qnxkcQ8Qb5apmHKGO0O7N7206gP0ToUeHTYtl+QLEatEh6mAmNQdMVxRHqOYAg3HSjdU/D+9JPdmPk1UbQWTBmoX1rtC9cJ9MU837AnyBGZqbEAB+SeJWdMY4Nf4JMpePLyK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786055435; c=relaxed/simple;
	bh=EIWseHnEhCTSG58qNXz4Qy9KwRx+8JNcg0ROaMjjUrQ=;
	h=To:Subject:From:Message-Id:Date; b=J+o95h292hWk+KdpQXoOhA8TJtn0WlgI6beneESJSKpHFxGoaSN1Aq4pXKSktM9XHi0d9rWjHs4Gpj/gFFcdQUMrhnAUI9RHuYQJAhGWaP597d2pe/p3+sk3jQ/uDAbHdXe5KJdjP3eUv2+o1Jes4iPMWauDSJP2x6XN2LbMQBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6lKHJIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6lKHJIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E95C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786055433;
	bh=EIWseHnEhCTSG58qNXz4Qy9KwRx+8JNcg0ROaMjjUrQ=;
	h=To:Subject:From:Date:From;
	b=l6lKHJIbHfc05MbAzZ5DQFyLG2PvCSjnGqi49T0Br6tl8eewtwbBWBG7649LnrZ63
	 GDCdzZKpnLc9GDTaRSyEKFNBDuJtXjM7DomAQBnL6VhefBNVrk6aVlhn0I4IpqlgTa
	 AQpLe2Z8sxtXgEPYrCUbFH+19d3gvPq3EV8aFpqKS+lEVpJ6Csv796e77EYUxGfThV
	 gi0drbafpoieqi+k8hPt4WxIpl+wTvv+22R8uEeOYYw6vUzXJ4HznRIMbrDqp7CzsP
	 0ZKL0rbwdHkGB9ZqiJbBS7ygvWNCQDuHiJXPMsEHX/KScg0sU/KWrnpUqlyTHGKIb/
	 e9QuF3IfWTV9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6B9C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605543370.19692.1863978489750815669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528fbd7af5db44f7b6633ea95fcb1a9d15916892973a14b5f21e1a5efef9afd8
Date: Thu, 06 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786055433
