Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E42334BA53
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760297994; cv=none; b=ZKEF8fpTlvQq6rhZFyQFpFfHqArumx+sskF2LEto4v9nugBIRSv4IlO8KK05cOYcfJtqUkMjldOMntAdko9BhBEWFvvPv7CF+aLze3Q6GUmc/0Y99gO1RhEcLkRWir7Iyp7cP3rrv9Cm4VVwW1O04KKJD3LB//J3eGfJo/LwDAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760297994; c=relaxed/simple;
	bh=q6xNigCEYNsVVpCeWLXz9Mckv8D6D3Rbg3cEaVxdiXk=;
	h=To:Subject:From:Message-Id:Date; b=tamv35Jjbyddbq+wcW39MckHALDpfyBFfth4HGPO+XYHeslFyyT0YFkGqPTjjN+BQv4IYaUGv0naIRexc5RXEJb+9j3ByKEDM6cm8919foWhaZBRu82Rl2pyY1Wt+os8GJI+WhizbIWSxtnRBkSWZFqsBF8qFkoP9qWwc3WaARg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asngVXyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asngVXyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3403C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760297993;
	bh=q6xNigCEYNsVVpCeWLXz9Mckv8D6D3Rbg3cEaVxdiXk=;
	h=To:Subject:From:Date:From;
	b=asngVXyUYJo14gI2WyJE9Ai/SMT/Yrbq5BSqr+jQw1zyd5kr/2ge6NpntOzsZywpZ
	 E7N1CYrJ0CKCLZcrIFcCfeURisasQd8Gq6UbwmQQkkUzNvV6Myv7Pp4Gpmgz94dS8U
	 Rm9bQ5rAd9uDmY36iIwvVaroGjSskDSBAg8nWKbgU15qgNgGltgaOjbSe1waFgEdtn
	 8FN3I9cV+c1+jDayNKlzk7yHzkdwgJN04KGCnpCXL/u2vqs48YzJFrBYkoLKPp3lSe
	 BJZ8ZJb4KtYNzWy04j5zNMTYY+xAzW/GhosZQu0q5zwK4/Z1E2zmgo4x0lC1IxlX7z
	 Tgxob4g+xBTpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9059FCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029799358.3664.13155784618326124869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d199026d7797e3512f6c87981e8ed7f9c6d6a82d755f5650f7dd677162683f
Date: Sun, 12 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760297993
