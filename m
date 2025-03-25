Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E39F15FA7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742891394; cv=none; b=fTcf0Uqsx9MAtXWUAdNEm5gAyp2vUhs4+Nc6x2J7FBKylSx3+4iPxL7thDrXc4/fwAX6W4cZ0SZfIY3lxtN5OFWJFN630nYKm9OH+rF0vTrjyV7cNAQh4t6JYcSyv7odhmXmVMkul4JftdumLFYzwpbMnpNgwqaEKil9P4cYZtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742891394; c=relaxed/simple;
	bh=p7TzTGmcu2c2GlFDkPi8oDBF2t5QomsrqUl3TDLexsE=;
	h=To:Subject:From:Message-Id:Date; b=jSa0V8rmy+DjY7xfnpd0smZKdyzUCsc/BsbJnnj44lzevSm86sEzOUMFVY5z9T8Q9N7Mrs/bJYmkg1hiuf0wTBTy8qyOgJgGqy8t40jN+V0MDlUcqrrq3HqrHndZgp5sLlY81OP2jUWCYahZcBXEQqiqoUGbbwoD5255gCtqkFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFyFeZon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFyFeZon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62FCC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742891393;
	bh=p7TzTGmcu2c2GlFDkPi8oDBF2t5QomsrqUl3TDLexsE=;
	h=To:Subject:From:Date:From;
	b=jFyFeZonsJSaKgKpA2Df7DILtAZ90L1aTlYGP2765xCxcihMPPilBV+en7rly41K2
	 KYRsufB6+fJ48Fjn5gQA8PBOoUj7Z4U6pGPjHmDUCdHk2DRsNHq6RSy6ZvCwCE+/Od
	 tpUHuiXZyUqeROcQM2GJC+WvWbvwG3N+AIPvIjtSd0CBMCQ9kE/V6itBlX24TyKb+2
	 b6jIikkI0KBTYDR0JTSHTuzytW9Yjis8XclrrNNEEfHaYjYbeNGymQhG1nUzFO5iAv
	 HIfXZ/4T2LpEfMXg6lv7JaOFGlO3dNT4GM7HGkP3rlk13Gd0lPqW6X88lQhPorgJ9n
	 UzdpWBGbXWu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE5DC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289139364.13511.183377535918488657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de0b552204f163188fd596a2911b46f29a1471b1ef06407b278d08ba3b64a34
Date: Tue, 25 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742891393
