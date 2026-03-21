Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AE02D1F40
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774091094; cv=none; b=XfOa3MzM2H1ZaN9i6cW9/P6kkyxae6KQMggixt1dHvQMIiPWJIh3GCqA61xu75TFgp6vGJnwyiQ2KHx9DhmP/WNiW8SqwJWBO3GOyUJctZJWWdKJfctVNFCL7u57jydzvovwc4jsHjgkwNiSmsGPn5NOdpO6kVvxS4Zyqoz63BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774091094; c=relaxed/simple;
	bh=slhPhqf53OjNfG9E1OuLcrl1t5U9uxnh7EOCUvZxmS0=;
	h=To:Subject:From:Message-Id:Date; b=flGKV1Y5NWkwCFp3Hg2YsDWrye3BBquGzemOIltykXGdLZfdN7IdGEyrIJoAiIUIUq1rEyDRpuE2/jBXU39BY3M2KfCaieM7VR3TemyniNr/wfElpENvz8mU8xRBDuEFcuDl5CsCCMuFUp/QuB7Gt+hwfLtOz6tmYfui/rlvloM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABNuuUOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABNuuUOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18D1C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774091093;
	bh=slhPhqf53OjNfG9E1OuLcrl1t5U9uxnh7EOCUvZxmS0=;
	h=To:Subject:From:Date:From;
	b=ABNuuUOLk4jkeHA7VK5cOh8l+0zB5dFOqKG715XdxH7impoXNIJfDKSBdJJpu1Tdh
	 xyhwde6ytnxn86plAk62ZX1i7jhxPeHz7ifHujKr7IzgTCmZgPTgQvmW6OpXmg5ZjQ
	 gk8Tg0Px4S2BiUNkWKmVKjFr9U8CiLmZwuwZcLQ1m697MH9TTQBIgi5qB+doeuyvFe
	 moGhiNp0Cc0AaoMA9L2WNAtnPjKyiaIRkZUEQMmcj4p3W2QtkBWBUgmHw+5SjHgOUV
	 gWndyRI7CZoAa6yo55wITq/7qjMhkrPSsPWvZFPHbAEYTPBPWjt46g+dfFBOyZwlUl
	 J95pCNlMqSxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C52109446A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409109357.21152.5142861580059907171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0411d56913351189d5b25e4beed728c5024b01712dc1a3693ff8984d26c746a
Date: Sat, 21 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774091093
