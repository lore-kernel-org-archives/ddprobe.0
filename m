Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2A42CAB
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728795954; cv=none; b=C6qK52A5Z0vPGdacVw/mvAVI2jbfBGplBbQnchkMz9eVj0dV77ho2SHzpBjkUJ6NxWAJfzrh6mMJ3HojDa867f1tQhFNpWxUKspRgkmxKObkAPbTG45rGW33zL3zNrEcKwlwIy2Jvj39xlGGNw7BitdN+cmEQg3hMOqID3qEhCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728795954; c=relaxed/simple;
	bh=jlS0IMdfQ5Ns2+K8I1N0XWOyKPVEYf5bqdEwMsgg8tk=;
	h=To:Subject:From:Message-Id:Date; b=nfbV4hjGabE4ECKpOtJBoo7NLf3+e1DUB9RNLu82hbrYWSxFKKs6BS6mG83SbHmVY4d7QD1uBn2KyVvO6R4bDbSVeXs36eexH+EdXVMVuPXFeGHkP20AvSnbLGo0av6Qyc1ePmxd0ynebXFvyllHTwct0hAeR0PKD+owFSa0juE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbzCbkPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbzCbkPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B024FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728795953;
	bh=jlS0IMdfQ5Ns2+K8I1N0XWOyKPVEYf5bqdEwMsgg8tk=;
	h=To:Subject:From:Date:From;
	b=YbzCbkPkBNZDLHn8E1+iOFA1wMkItZucsI+kgZmpSv8+fOqztJLrVB3lgVkVBKwJo
	 8lsjYg0xC1gm2vJMW90klVkPxuHNs6kydOZwgmy/PJxbJ199fkf7GLSe38l3BzKdo6
	 N4Og+IdTaLzEiBI3ySI1sbGPY507r8pr0a6qTajRQt9irc2L8dCUjQI78AcvycXhfP
	 2TkUwnqmuzUzRMqTFux47l4oKYaupQKxHtGiOmgTCCZ6uCx2Q1lXKqYwDCw6XrC9j2
	 KxhC8LyatNJ2Ownm2DSuWDntoeLUE3ewdvjYnS3LjSCndYdcIj4zR0MuzDgqvfD5QU
	 GNKKk+vK2HxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97541CF2591
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879595359.25546.18279615095369462484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2936eecc6ba07277b6c707e2a180a9f348d43bd49b0002b1e7cbf0f77426d934
Date: Sun, 13 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728795953
