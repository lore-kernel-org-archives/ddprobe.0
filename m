Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347B7AD21
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735275954; cv=none; b=abGCQ4StC5fwOqAbbLOGQVA3cQRFKKr3ygBv97hSnSfpchYJos6i7XqIoXsP2pkTuTrr5PBisuJr5jpJsPqoASXB+1zgdwwirVmxJWfly//78tHkCndVOfoITAYzu5kASgl85yY5maBqfEibEyb0Ne0Q97EWzC5KoHILoIGg0xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735275954; c=relaxed/simple;
	bh=hE+Uz6vbjqJIsnJWS8jW33pgTYGqvxhvWH8HzFsjIWI=;
	h=To:Subject:From:Message-Id:Date; b=qjZsOvpgzQyvPwWojci07oCbzoBzaD+EqKak24SRKwe99449dg31wl1ojog5S+KGrbN6hkkInyjmfs/RjYaxZMm3xqAOGQftYBtBe5DG0RJnADR1oV38sgoQXI2/2Qh4nhZbCnXhS3WkQFSdc0W8q2l0pHq3bt1aWwt1olqeqg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnYBBVF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnYBBVF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27CEC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735275953;
	bh=hE+Uz6vbjqJIsnJWS8jW33pgTYGqvxhvWH8HzFsjIWI=;
	h=To:Subject:From:Date:From;
	b=DnYBBVF1pdrgwnL5DU+oChhxXnJdR3DKMUZwHWR68BTtyf1RlhjxloTirDbwMcUuR
	 Q6oEVAZY0qipmGGGppF1OnpBqxcHCReK9XMybDRfXaK0ohCHFxYYdxz5ObgjFAt9H6
	 aq5rq7HMNQYaIivccEwqm3lkzl/lqA7F9lDxeZ58GU4+uNgagtQPrhjSPmA4Eapelf
	 3zFrWuA6EQeo4tXEq1EDzVK1nSg9UVoaX02SO7y12GbsZLid/u3EPwN/2Lsm3bSgb+
	 jHq+GjLx8rg1GSB1ZlcJTZa+o+838UkCGZhB4czF982DjV6oq/oIJ/NbC9HRhPKSXJ
	 XXBdYdL1CMIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A019FE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527595361.32433.10016278592167244330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bced08bcd85bc5ed15edf425fc6e4fa1a7678dd5449aedee630cb924379548
Date: Fri, 27 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735275953
