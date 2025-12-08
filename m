Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3009E5695
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765203174; cv=none; b=DtNc/iEgC8A9aFod5BQgaC7MXvDzrlaFOMdFdSZZTPisFR2mZ3yNRdfhc4YbrF93NM0RHKUYewor4pIIIUk8nJmFbkyQuqfmRF9/Breff/vS5QnObdOl3c7NOm0wM8AG9ERg0/WAD0RytLaEwtG62LSzgf1cWzzkHVXyvwYcdoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765203174; c=relaxed/simple;
	bh=IDZwVeB4KW3YNWvVjQMC3ttPb4+3HKLWLA+vc8Onz+U=;
	h=To:Subject:From:Message-Id:Date; b=FlepvlML8gp39PZw0hfJePEeypJoKFUYu8qZSjp7JtS5I9DJxqSPdhvgkAOdtMNxRMSBh0I35gynLpo/CGFwbFZx9jegTW6OvYVszBk58CtH1RL3Diq028gehnTcDQ6pYgrHog4IIQxff3hTofk6vVbgPGWozUCFGnyn6tYpsQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHoHhADx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHoHhADx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765203173;
	bh=IDZwVeB4KW3YNWvVjQMC3ttPb4+3HKLWLA+vc8Onz+U=;
	h=To:Subject:From:Date:From;
	b=nHoHhADxuBpbU+whlZRoYf3gKNS6GDTQET5lvI6AVVzcwSNrv4FLx1+btLjeEFP7C
	 ikd7NzSObZeZhF7qJ7+EgQ/K1o6H6oWvJF9/qHaW1Mmyww+rboLNNG+W9JeCn5nNQq
	 YiQiKgImySHC1tY0Ev2tvdqFP+38Mw9fEPILnMXo14XMBEoTbhKL4NKF/n6Ml0p1Uh
	 PCN7LYXyWSHtDsg5qhuPVo4xvokh/5yW3od65F9fTbc2o2RdGGw7OqEyYJ9usj3JAj
	 AGMvcgQEfz/UCKTo9sIIaADK7QQjk2WG1qI7SwCwbiV95vdKfTp/20ueJI/8q3j2rq
	 52KNRG0eg4hPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC5D3B7E7
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520317359.25204.14046644313748291224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c59dae4242cb5ee17888a09a822697c01eee3d7d9219e261709f769f1d236b5
Date: Mon, 08 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765203173
