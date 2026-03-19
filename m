Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1727B397E7D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773943494; cv=none; b=TADJ53BuAOehFq6WHFxcMhV3oEbdhZGtzQSq7A5uYPwehQM42uMCEaJdhsmXoXB6PZ8S7YufsFpIKxrAwly2bWO8sv/CKSvQaxkze75cwVVbYnsZXC527aHfDl/yaKPwWW72tOxtoZhR2JSf7GkTJrBponHihdqmf/drYpVhZkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773943494; c=relaxed/simple;
	bh=L9eYuSphW5HjZOTOueXg1V95gNk1vGo3m15lOZRU5FA=;
	h=To:Subject:From:Message-Id:Date; b=rdYOPyI5KTFjUJ3gYwpVdAQyx2KSaiwiMnfSq5nzmsH+5bjIdidfyByESxqBvqQxso0H+tgEX+ljkMon5XpkdpYi723lui6SMueKdsUSEZzj7c8yVCC8G6eN+/eJAvhvjEagR1KrsE/WutPfAF7G+CtXdZ0+2Dv6Z2HOQ2dI6+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1u0kPLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1u0kPLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A325DC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773943493;
	bh=L9eYuSphW5HjZOTOueXg1V95gNk1vGo3m15lOZRU5FA=;
	h=To:Subject:From:Date:From;
	b=f1u0kPLjnzRlFxd22b4NWYznTpu8lHeaXQedOxlKBy8n6BiZxcC6zVlZZ/C1uCPJE
	 RJIr9lEGqXUOe+eOE4rFY9D4ciMsLdkS3ozh1Jpt7vkRDzpdx28HTv+/Ya05UlF2o6
	 JcmLrKVHbhMne0URJ+FxSzzwXNX2ZkS/6KElh9hfJ+euYETPsZMOQwuAZGMxAS9dty
	 6vBzctJ6m46mm/nrETeWzXBSknn5qRmMmnNP7UT1PZrUTU0DT36nTnSK26hRD6G5uo
	 BQAkxMV4/bj2M27T5m7LaiqehW1hGjoME/1PJGEZao7LGQhTO/JLOywset7vFj5IH9
	 Zo1Vk6YnITjeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF01091903
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394349358.11716.17517770007867585323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff5e84a243feac532f78d51a29b2e39625104a8836f4a84cec1ffea386beefa
Date: Thu, 19 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773943493
