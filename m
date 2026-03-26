Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62AD421A1A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774549493; cv=none; b=mRympCd7PjeY+bQl+hs43wdykvVXFbjRxpwYOQHqy5EoTdu5YukGOZ55ohXOB4y8QqVl6s9Y1YTL9OfdwOBTIIc3NgUz5gHAVsMHCUdPjRZ6J2PUwK34b3f/NUgTMT//4aEDSF4jeU0Zxpk3DYPXKMZHF4qF42lhUb6tFmjNpYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774549493; c=relaxed/simple;
	bh=f2mpob5oS0FpZX36kgNk6uoUZbW1coKiSVMbmidlahM=;
	h=To:Subject:From:Message-Id:Date; b=T+mDQ+su3QTwybo/qjtmIQ3N+443ooe5DTwFMbX7kknXC055UAqHjl3BNZAoSyKsb+iCAkPuEAFyODV7JKojQmL1uPJ/Rx5QoSu7gD+rQkv7v91mtwJOeMu5xnFhQKDh3Fn2GID1qa3SxaRia11Lb7Q7y4ysv1+A8rCrc+x1pCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIpaTVGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIpaTVGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB62CC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774549493;
	bh=f2mpob5oS0FpZX36kgNk6uoUZbW1coKiSVMbmidlahM=;
	h=To:Subject:From:Date:From;
	b=lIpaTVGb7SwA5VQ+A8K6wolSBzgk9E8wpp/z4vcicWC5qQ9IC3LJuUjWs9EF6BxB4
	 DYYHQrk3HmetaqacYhZ7SIJuqWYqDK5ymWGUhIAF9ED02mUTN/q8HFSCzHik78tNvt
	 40DePCZ4wfLbhpaMy+Nwnf2fvw/DrlPwVxwzJCbYmTUhYpul5ULwRXgEzQrlFeTDDN
	 4nSoY7mKGdaybptFZYuVVCCvQmr3AqP/VKfWPlWYMgl40hBp38SoOP4/JFzK6BsutJ
	 LV8z7XunONt9HYGFPrgrDAPghmRMybcKd3RRoInFJjV6ozVemq8FCz3TIClKr5AdVO
	 HPtIPNN6eu+aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B54D10A88FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454949361.1993.174093738306420540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781c323ba4ed1d77bb76dbcc5d6638cacf69cf03e2135a3b902269c93f788051
Date: Thu, 26 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774549493
