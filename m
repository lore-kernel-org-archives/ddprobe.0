Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B57EAE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743826194; cv=none; b=tmsu6dgnYfXiRiq01hRA+sj20upi+RM+LAAtygrqDNBPd8RvkTZCneM7481NvS4YWj515e35dZXjl/TMo48W6O4Z97ULAUklKO8fAR3GxOYR5+WMBLL/f019XlnMmzLSnHBkxtqihWqOBSSBFnAclNu0oNnhEAvVXdtlm5bKpAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743826194; c=relaxed/simple;
	bh=k15X1+MZbFaIoQ3KV67OYW0ftBvV8WT+tdZlfH1LWEg=;
	h=To:Subject:From:Message-Id:Date; b=CU/LOS1zPH6fMT1BiiGpLwdd8hCDiMKqEPALptvBciQGN8haNSY0xO5L4s4sCL8+7gkjjKde348qfacWDblk9W8NC6ZlyZ51cQIGenYxuoax5ceQB90+RmelnPTq3/xfZpl+6mKFYJYZKssZCAK/dHwRhAwwrT+zWdHQP0me7UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB4Ge6ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB4Ge6ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1ABC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743826193;
	bh=k15X1+MZbFaIoQ3KV67OYW0ftBvV8WT+tdZlfH1LWEg=;
	h=To:Subject:From:Date:From;
	b=lB4Ge6juroT7Km0ygiIk2rHw7VW+kCoMh/KGHGE5NBXrOErPu5a3gokDiIZ119aFG
	 CL4WClAc9baf4CRo/BpW54pJ5AhieoyoY/IGtAX10ELHybENbP4I6ebenNi+++z8EZ
	 dfZ5M/Pw8RS0RkuNAk2YGLq+tfDqyzeKp1qDa9rsjc+KwikSk8tvIwC+zmqo+nevRB
	 ASJnpRZcsHsr1kuRX5jF5xfdiTJowAFJKyxq+XpSFIsoPrdaDzeqnPP2ZDYZT+SFby
	 jbN/8F46Ish2osKC7wGSAQ+f3teflHDb8QSp2PtBAPkiENI20zFg6JYcx5yBYr1ai2
	 EPm6b+2huM5rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2DFC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382619360.20290.7621836182791245484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3d96560ecbc1fdb44548950184bd25bdd4455ba9a732b647f2e1bcf9ad8f6b
Date: Sat, 05 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743826193
