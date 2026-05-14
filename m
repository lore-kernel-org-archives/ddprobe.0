Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C323823DE
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778785834; cv=none; b=tz03VmVYIJ5EwFWSKOfFHgtIFrGjDY2oavu9i3xBm97UE4Xx/TA0tyHAc5MhvO0tCpnTDjRxl8s6tQ4+f3U3rxwytkKihnWoH02WiKP6F/Z9C/4NtXAY3T/sz6n67kKOFGcb8rlodPj/7O1gHROG6vh/p1CayGL1vAKcWn5kE7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778785834; c=relaxed/simple;
	bh=qOhquG5NuqMjY+4oi4mh8Jtz5I4aQQNdSJRlb+1N25s=;
	h=To:Subject:From:Message-Id:Date; b=dflLspkf04Y7PSdp8yIMQbkdZkMNH1e2UAtTbPqV9dApMvzZ5wcn2L2NhJtNPqd/DfWvBr6ba0GJ22bFEBxQ7JVUJx9ReOTNbm954Xm8anNlxINMqy+U1aRxFCnRtTjREsl7FZAzEFJvAb6VbnnKYU6k7q2vse0ymTS6OnrEHik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B62DQ19c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B62DQ19c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5D3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778785833;
	bh=qOhquG5NuqMjY+4oi4mh8Jtz5I4aQQNdSJRlb+1N25s=;
	h=To:Subject:From:Date:From;
	b=B62DQ19cl+11tD1hX3h7oG9BDeXyi48E/MWTFhjRKmSnbY/haPERkoos/Q1W/Stso
	 KPnAg2TfC1+KC9nfLUoBAgRefMSJp5bHySgGAJ3p1KcxKJm9ZhaEFnv2IJdXivmMrm
	 WpSPkuT1AN9Py71LSZrmP9N+FoezhboBb2ws4uva4VVVncG9/qE+u91e2+KZ4GpivL
	 eC7hxwZ0netYHeXmffrete39683DR9DCgVzKAznZsY6lLMTDhdbDRKE2/WM9taA7Mr
	 dPBcRAQdEr5wNmsEI617NVXNr5l9TpUcbhsAqhLSrv9bKHwwdXmuYa7aThF16pHqVw
	 iBU9NXef9mV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07C6CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878583368.28546.16897096894830262734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abe7c083872878250b7d82f055bb19c7b5949a919698b921b4503ac419dabff
Date: Thu, 14 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778785833
