Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360B51A270
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741903134; cv=none; b=ZWFJw5wZU7tH6ZJuBNthk3no1D6WhJnvAm9xcvkavY+LGXdQYWwkZ6yN7emsRi8zRm+CQZq3Dpy2Br3AZDs0P4lrw1MtDNY9i3UUn6q1zOKNDpEwmAs2JMeQDHu/2Gh/kH25Tdwbk1bxPG36oNAB0dTOAQvX1neXjp3vVZst7rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741903134; c=relaxed/simple;
	bh=aUsMl25K9CS6T0FVFk4Cbw397mbPULyaUrEv6DWYAzo=;
	h=To:Subject:From:Message-Id:Date; b=PmNiUor3kQ8e7ml2T2Dk+JB04QsvBmVVbpKbRTz6pLkOeZbDgvbNgA9EgNVmSc58eivENavY8ji2sN9zEUZ88LQlNUFiinVV1rKP2BvrCUwQOVcdd2LRyBpqcE8m1rAv7C90eB9gD2MTXHQQ0qVcVa7e8kfQXWWOv3yLGV3d60Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuyvC64J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuyvC64J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054CC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741903133;
	bh=aUsMl25K9CS6T0FVFk4Cbw397mbPULyaUrEv6DWYAzo=;
	h=To:Subject:From:Date:From;
	b=ZuyvC64JcnS3WqLHRJXND55IjVBdcvfN7SpJSLP5j6vfXINxUEASpzf3FQkdSG4BA
	 T/7nwdil/BzwfaMyg1H+SbUgA7IPNGaeX3rkSwHQPyiPvxFPDyTqm4Nyf0kyGn2PCP
	 xt7OKDsdfx2jvvUP2I5UduaSXrXV1kT6oD61lfPeZn/jz9qjH2XSS6eFDfDzfwGx4k
	 kovXVqAW0SZ6zjulP4HBSU0YKXBvlIAIqYM2Oovwri/lH61bPvXUMtMgaDyUJ9vANX
	 w/hYDRr5couN4YHJSBnx4lFXQjixnX9CSrMMTwS9tOvMXmgFDzpxQItf5l0c8EPgca
	 CYkXUSbiEJwBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B7C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190313358.8712.11104193904626581628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167fd2a41046b2db8031a2967d4773983e3a2a8601f6fefc93b34bd85dffa5b4
Date: Thu, 13 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741903133
