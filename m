Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7373B9610
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791856234; cv=none; b=IX5r1Ns5cksbI1eIn3lkXvHz1kMoBDzzxPghHxYwgWr80hMGqPlU51JxWWp9twQd5SjwZa2+f8/bmmuzBgyPtnXMx/56NSz5cO4wR2l36zbKol7MYOvaqQ856pztrdzDb3IPjmZ/D/3pJxulFLzfSgvAL8xPMQ/HqWhp/z+kjyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791856234; c=relaxed/simple;
	bh=rErvcJdpTZHATMa/5XpP/PKrnOltNcP+PP56RnoIVrg=;
	h=To:Subject:From:Message-Id:Date; b=QBz7pCGt7wIO7+K3xw9hO1PfB4z3ImAyiM0T4MCasNbAW1xwrMPXJT+zt9tsZntArBhE90heN0xMvlIQn/92dr2przfreBXug2/0vRB8L/2A9Q/RpBLJVcAe9PEt+crt2Q+6+zMJ5epGg9bHXkfZmuKlhNdXwxfBHFqySshu26s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzB4mPL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzB4mPL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D0AC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791856233;
	bh=rErvcJdpTZHATMa/5XpP/PKrnOltNcP+PP56RnoIVrg=;
	h=To:Subject:From:Date:From;
	b=VzB4mPL4DaMe+H5ONhOOMgG32ViVqptseWCRcNNQAD7zBEYf8LBQFk5EXQKYuY/Z4
	 nCokJE3busHDdsG40oZgh0CXatx/sxb2CqrTSeMbqqHenRkeMEZimG7vx/dOPADS4B
	 8/s7Z8QYGC/0xQvSWn5UibMvPsdFJHkoxGxz1s38VPxRUJroec4EkyaczjwHiPZRhh
	 bZh90GHLPUHlNC3+ZZ3NlpiF+/KRyh1zTkuNzWCrPyxReBrqcRvTHy2O6vZDvTCchx
	 41kKwgSlaOtckFCkx1/z8TF8u9SfRcXUlVkGZlPC26mmHbYGVctqy3uDhrzmSDgldB
	 0bV25gmW/Mn9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEB5CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185623368.26957.2858594267285377929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9561409e487950d3d4694e87b0c6beb0a88b2211c2fed6325c254086d88f08c9
Date: Tue, 13 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791856233
