Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6626B82D72
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717197263; cv=none; b=ZRB1lnrjij71wBQ0f3WRLsjDKrET/G9oJGGPIJDt4ZG7cqio3E8oE4vUiBMbckRuic1TP+vbDSvdy+ShDsUMK1Ofi9uqYQuihKcaedW9/76cZQviUR4RFtr0DFISYUGkEoW9AjY7nfPZAfVhdtdmo0GF/WbWlU6mYwZTn+ewSWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717197263; c=relaxed/simple;
	bh=TZIdGftrQA7HdQTJ9mLGZLQsMYAuoqxJGulgHabWd54=;
	h=To:Subject:From:Message-Id:Date; b=hcPe8BJIeFm6nHWAmM+XZKkv+Qb0YCCtXIsDXpAslKD8XgUKWm6cxuAELnJv5iuYMOGtz4RzUvk1s5LT87IcxrBOdScN7bt/znvmCHWCD6NgePMn13sKhNS4axNTcoQsNykdRGZiGqWHWEAqURn3CgzOcXerauvcr1xXlH2AH+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlzIQyZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlzIQyZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B5BC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717197262;
	bh=TZIdGftrQA7HdQTJ9mLGZLQsMYAuoqxJGulgHabWd54=;
	h=To:Subject:From:Date:From;
	b=jlzIQyZJAjkUDXUQ3DNHTfjs6coK8bOQ4xuh7tV7dOvM7w2ePQUS6VsNSDzmxx3OI
	 KmqY4QbcT3Tm5to8okB89ex2HBotFqWfg+PNsLso5qWU6/F9vKeQ0V5Ke72xV6+VPj
	 BDFIvRx90brJCJ+KPVoXwuYSZcPR0W9L11dXmKMU5h8yr8kV3uAl5gw9JmUyJ3yQ2T
	 83xlFkCSoWKOYrupR28gPSNe15W2/70KVk5kVy8SbZOnvFwr625FQ37enLGtGVhYP7
	 WaQrY+XcNoY/WeSD0RD42RWJM8m+jn/ZGVrb1E1teZUO2G13z1XULiwiCTk0eFAHzj
	 nbypGkLn5fDZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF651C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719726276.6668.15070918400819368454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4191c3a1ad800a4050954d432910893f4c5151ded676c929631a27f50b52c3c6
Date: Fri, 31 May 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717197262
