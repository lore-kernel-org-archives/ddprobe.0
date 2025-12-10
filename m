Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1197E1C6B4
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765362174; cv=none; b=r6h1e0QQkeVctEDYch6Ka3VgsId46wM4I28r4wpp0RBozsHB0aUPYUBbbLnHbkZE9Hb1MhJpS+cqXDuR+KYP4D7WPNZCfhoHP/s1u+ssggEzCnYY+IEVlfY174m4H1HB8RgkJrflQyG+8WYRXfkMAGjmsv5Zr7FG0UxB+Cv3oeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765362174; c=relaxed/simple;
	bh=R/EUvfFc9tQt3ntmX4b6RHXESrc+qqDODSpwba0nrIs=;
	h=To:Subject:From:Message-Id:Date; b=e2iG+TS/9LxD/eockrESywcG7rQxD9tIcX9wC+tH3UqrP15dCcQCSFlCrNzwo426c9BXoDw8Gg78K0h7YtWef7jS7NujgmUutBLJWvJQhkpcIgQTMc7cvnMPBkl0XLTsEsEEWLTpzz1v7hJ3nbpVqS5YIie3Mq5rmP7QlyWg4uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAeGsiSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAeGsiSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45CFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765362173;
	bh=R/EUvfFc9tQt3ntmX4b6RHXESrc+qqDODSpwba0nrIs=;
	h=To:Subject:From:Date:From;
	b=pAeGsiSHrR3NtTP5RoYaPDzhw7Cp0A8hehDt9jtK04kMjQZjXmF9Blc9mH0D0Ce1M
	 rRcqufVo5WYLe75EVeIj+dsBP4nJDSQCeX9ZSgjeEsuRYdhi45HdMJuur/kBi1s/Fb
	 7QpOjE17k4M7q83Twh6aJtImQmGFCx/ZrdShqrjvotZ6FSJZg+VZn4QJ1+eWUnrX8B
	 hcGUTwEv4+VCmaLFbjSfVDsAL5F47UjwLZvm7g0Ny7e3YuLi/tFRArUVXCckoom+jY
	 DdlxE9azGP+XN5IagjUhXIh2GP6mBropf/hafVxWHDPVEJg9QzDjb+T47Ag+HkcjQA
	 lWd5auEeOwxxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90519D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536217358.19244.1071048122720828263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6725f5adba9137937d3c8b201592630fc8851505fc30d51ad79724d6e7ef45
Date: Wed, 10 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765362173
