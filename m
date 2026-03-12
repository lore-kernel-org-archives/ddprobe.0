Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CAB34753C
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773339894; cv=none; b=F0vMMoopTcuOLvIFiZdbpNVMxZhmp9f6/51rlPPVKOh/xG6BEuK8dNzT3/96w5RZfAfVR1/xAiM3YisQq/uQaUQHK0w6T3jjB6Pet3u0EvCaME9GmnZHrzI6N9wjnTOSi/m4T6mq3usjBNehfsEDjc2bivpv9QNfZry9Eqw/pqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773339894; c=relaxed/simple;
	bh=JUDaR1wxn2I6qGzbGW1loXS20F0goa+/FGHPL8EeMAw=;
	h=To:Subject:From:Message-Id:Date; b=SKogoZhBWbgdyCslhHCsNkl+mvZDVSYs87FV2BnuWxm4hsTV+ltE08pXaUMMyM9DQUvY93qTAUWCKYWFj+y8VggWQHykAOjEjh0IIyCoHo/wM1LgXsAKZE9stIIAiyTufRZT5itSnS7xKmYVXPUssY1hrcWPSCPaOmoOx2aFfqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzF3Jm1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzF3Jm1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1974C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773339893;
	bh=JUDaR1wxn2I6qGzbGW1loXS20F0goa+/FGHPL8EeMAw=;
	h=To:Subject:From:Date:From;
	b=lzF3Jm1A9ccxwDMz7tFKhW3AN4e16iWMvjeKSuHKrqjHA/tq2alMREaZeeev91GP1
	 qC/QowSLEvULp5rmJORCVm5Ztbs7OSjgJE4W1LdEAok05xmFcxFcPwKcmDQqVBzAYX
	 VYEVbPbgSNaeN2phGvLFFYgpTdvcdkkbX5O5MARreOGRxya+du78+e7uF+jX+BFOJK
	 2KNej7kWYLnsj/UtJiAxLr2sAwbZrqS8IFEuJcmLZXWQ/O+pbA5UyrfzgYUfYJj8Tx
	 X/Z71CTPBYqssPrIMFfKUu5h02akQVAFsrBkNZU2x/+eMuTwr2tagrNZMJ2dm6fkXp
	 N4wBL2YTb+xSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92276106ACD8
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333989359.15303.8484036204198261095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fab46c4725f7f942ca2d085169ad927a0f3a7d4d63485ae67da7185ec45ae2e
Date: Thu, 12 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773339893
