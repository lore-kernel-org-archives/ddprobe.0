Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A460145B27
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777580254; cv=none; b=dqkKWF33L1b8KStx5+aiiqEUh2i5GyjaunOsg8YSTJv8XduVTPlUaswXjH5Ei0GaQ9R4LIMqqjCijTeUSs3k1CyDeLaE1fim/kGUUzJTQnJdZZn+6KDv3YZiu5XkuY1o159lA5U3nF9AeaijMVs63i0+6i0S+AHlwNVthl5Zr+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777580254; c=relaxed/simple;
	bh=CRnTCmfDcNCS8cPfJF+9ZyNdgkHsF1Ec/F9t/CdK6gk=;
	h=To:Subject:From:Message-Id:Date; b=kkOBwyt2iI7eGCBuEKpIgZsLiTamOGSnj4ce/2nWRZEnY9zpLPOR3I80q7MfuIOt8s/HM0hEM7NRAxAMQXfZUN5CVf3lo641+AW1CPUIbnXABMEKTiiLI/XqsCiMDyjOkxY0Gbg/vjnU2zZIl6vVg4CioRZ6J2JdXdDe2yT2SWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ud5aem8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ud5aem8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21C1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777580253;
	bh=CRnTCmfDcNCS8cPfJF+9ZyNdgkHsF1Ec/F9t/CdK6gk=;
	h=To:Subject:From:Date:From;
	b=ud5aem8ZmHNcZsEsFn7xcx9T8KbL/vAPv54IxiClHbK3RaF9uAhcwJcDWQ8Ph7qXi
	 gfkpafRW+kbaVI5LTaxPF9S9r0Tb7GwvVXvO7tNlB65MQ/+DJYmWPaMgdVBxF62NGv
	 IQbc6+Pp8rW4kPcY4ZL6eNMWiN6rG4AGQqGF1yuCqK6DvrevHSlaqNBUxSun91vKh1
	 2YTRI2t3mqDlbiegeWWkBAiOnjhEiNAHOGBckyvhs2wIl7UEUnsihuoOaWBssBOM5L
	 sx5na4nyXeGxPT7lmE6il2IfFgDXSWpxUC9WCrR1CD1Z6IMRNZDPTtPLHMKMSPpqw9
	 YQygZT3EwAodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0137CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758025368.6902.17014713027997282600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad280c8a950e4a616c46504fc2b14fe02f4c7aa51aea4e2419a746968f177f25
Date: Thu, 30 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777580253
