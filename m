Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE82F28AB07
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750424993; cv=none; b=BP1r3gtGBYQdLPvhz4sjFn09WLoE/ixEsok4GwHi5fI3LaeAOTWJqDMYBn6svunWzST8uJWR5GLE9WElskH90sGXewvOr8kAiJ1oDZFRaGUbWb+a4VREZmoNaoNkwapegTT8+CSogXwiLuPUnu+lR/qVqpskOWKxf1aJwugJ/oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750424993; c=relaxed/simple;
	bh=vhIZ58RRyNQa3G9tpuXolXgXQQ4mdHh8T6IE4jYfsT0=;
	h=To:Subject:From:Message-Id:Date; b=j4uRgkEnVq0RZmIwtvBajc21sIAL5Fq4/xS8x91KSNsGwSBDSXzXws3R53s4A/osHFzICQ7/DWFOGYCvm741nslXsiugRtNeGMEPQl9dncSnwZEwsGQCvdmKzZ4uNSgLXgPudX1zHjc8ryro4FGvsHjNpqOclfjH9FHApii/5uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNfRntys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNfRntys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF38C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750424993;
	bh=vhIZ58RRyNQa3G9tpuXolXgXQQ4mdHh8T6IE4jYfsT0=;
	h=To:Subject:From:Date:From;
	b=WNfRntysuvoYNWJNF4l7kriTvs2QYSMMGiEqts1a7bar44yIU24UxGUPtRUa8ggdb
	 xBMtrvKHxDSeZMeBWXYDerkwO4QlYtGitIDlby9GqGX81Zs9dIL/g8pj/Fz7vc9PMP
	 ZpIJowry/T0NaOyZs/ErLz3BAncHORpLqOsxN7xLudgHyFCtBvRkpulYnDaldhq56d
	 ZJYm2dRH5J/wRZbrR4i40o9nxqco80pvMbCNpf4ZggjN5XcMsCUhQxA1mWFFEFgmfH
	 HmrXfMu9ssEIgaacFpYa3GKv8P3cm+UXyN4bR34Os3WTjrJc/2kWAiPKAXfdukePxS
	 KAw364zgg/W+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F169C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042499357.431.12335072433664025933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcc8e71c08ab849165fa15241dd3d053aa11d953021bbaab2e42096b2829a00
Date: Fri, 20 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750424993
