Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34067367
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744400994; cv=none; b=X32a8QUqK5dMDbtOxcehV7WXgb8mGXmyyJxOXK/9UO/mRPm9EskHzbiwVxGzRba0UO4hY2wtJwygEDKl/jygKTV1LqWt/4KMcFx0HT67kWlQpfh69q6NcIypX7gEyeJHGlVJo5sQO3M96JbKAbQxWei5QSSTyrcjPXAYkPFAFWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744400994; c=relaxed/simple;
	bh=VBmJ7NiBhkXOFQXSvDbqWH4FmTVoMzfH8SnByCEzkcg=;
	h=To:Subject:From:Message-Id:Date; b=P+AwckpbVUkuwGXAW45XZgW83hcFclbGKe2Y/tZIQOKV4hYNutFlYCkyervyk79YsQDcj93Ft0O9jQwE8tVOGmRvJ3pxoqq8FNgaggc+ktuDnAjMKTyISuik+kBYnBL8BetVYZOanBjnVGmtXSZK8z7amclDeKifo1WgGzGH0NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNWiAlUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNWiAlUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB5C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744400993;
	bh=VBmJ7NiBhkXOFQXSvDbqWH4FmTVoMzfH8SnByCEzkcg=;
	h=To:Subject:From:Date:From;
	b=KNWiAlURFSGUSYr/ASK/lPCEnZAOGk4zWS+u/77xnDwtQLgAhu4Z3DBgUpdLrD2ac
	 YSnLWrvtihgeydB2/FfK2kvKmdnTyvJdcrRFq68ey5yBqc+Ni32edxjJ1FbbU5X+my
	 Qoa9OEYpKGkZMAm0dhAHlXxVmnnpTWg/T3HcYpj2ZMmoct9JD2UOwMWy8c2zWyPWPm
	 EtADNKqrV9muYg/wMIjb1OYfggpFxAYuOGzsSviJMKSw+K2/T5BeDArMese3WzZTjf
	 67QFr0DiMiTKuI6c9BCfFEz20Fp/bQBRFMme8uBmWt4S1jtG+ZgxXmqWfdc39vUr/t
	 vQy9vRALtK+5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93691C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440099358.10734.181252537649258309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c165a6cc4692b1131e1f1de40df8c4215c340c74d65c881a6661e6a6d7776a
Date: Fri, 11 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744400993
