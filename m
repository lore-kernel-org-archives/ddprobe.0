Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A743332628
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780039354; cv=none; b=M4pqwS5N4gsjAMgFu3QRrkJ6vLk6IidYpbtciFm3tOT2fEcict9dDk5I1TAWhfaYyQz59n24/aTrsbGeUqcl3yb4BsqwbgAtNq+emCfCQOw4itjtD0iFqTJoEKoDapRsBUaT04AFMv2u2dP/x2KM1AdNRmlGsGaVJSn27ltodCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780039354; c=relaxed/simple;
	bh=ziVI0jQu9bsqkGK/RZZOVbz0nbXPS4p59DqnKaXMx8g=;
	h=To:Subject:From:Message-Id:Date; b=sm+fQyUrbrf4eBwdFXqGpYyRC3G6KFkc5K36U/qJNe7EYMvXYRdFlUYgqYnVzcDKD1AUK8pdTlTe35kvUqAKv2ePnNf5TIMWCp50wUyQV+V+2jHFNbao/vIow3EitYGLcjODKCLjeM+RbyXRiLLM9hwsdpKqSPYKtEIabMTUIn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Caz0Og4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Caz0Og4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F22C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780039353;
	bh=ziVI0jQu9bsqkGK/RZZOVbz0nbXPS4p59DqnKaXMx8g=;
	h=To:Subject:From:Date:From;
	b=Caz0Og4NDtPu5AZsukPEp0hC5rGWfxUvJC0PWXHQ0a2TfeP2ZVATNBgv3ikqNvs6G
	 dBgYha6PF+1YfZIS2eSmOyVaFype/enkIHGthCPL7b1NrNsqqGx4kTJHRrzx33fGX0
	 CvFMA+QfweW6vp55PQbuCe0lcmwnrkbcTU/sAgmZSDajrZDUhX6atHryYNLz3CFIqM
	 Ds/1jiLd3+EYhqgELVyw1WFQkEq+M5Fde3OMJoTffGMzTHGqcaHW0iIC90LaZ7AQUB
	 guSNLi3V697IbvXO+UlUE79n3v1C4yF8K6njaig+w5dqnKafRUk8uZw3adCUON7Qv1
	 GhyylMMinF1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F8CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003935369.19709.841782759667482817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971230ef15614c77ff92aef69a91d36ad698a04a101193282da233921c9471f6
Date: Fri, 29 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780039353
