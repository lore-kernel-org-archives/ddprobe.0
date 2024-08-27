Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870317BEA4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724746554; cv=none; b=qIxJ3j1tIABM+s9mXrDfovY8RO3JCKibn8t5K39m7sxy4UHQhsaGgvz6KNRGpqrN314EQVFrbm8AYQ95IXc8zrKr9B/zr58LSB1lJSNzc+b7SjUeZoV715I6lQnFD9ixBIWTa+r3MHVD49G8Vvo0lUMRunnlVwLkBZsIJNTEg8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724746554; c=relaxed/simple;
	bh=YPJVZ+Tqier5emUCrfjaRQ1zJkNNqqyuHMbqzblKhF4=;
	h=To:Subject:From:Message-Id:Date; b=mHWQ/nuagHL3QlGbAQ2twETOdTalQrDfvyVJNyyTYv4QAk/pygtBZJcpBttFoJLZht4lzaHikqEMehgweIb/vyZLCPLMUegWyxQqrS2L7KHljtmmGF81C+67Y7pEL97CKCWzq/UYr5o2oSQcZlO4fCMj2UoITQJHTVPvffx2YKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddr6dbAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddr6dbAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA0DC568C9
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724746553;
	bh=YPJVZ+Tqier5emUCrfjaRQ1zJkNNqqyuHMbqzblKhF4=;
	h=To:Subject:From:Date:From;
	b=ddr6dbAagnscAafKwt1sgk0W30b+ngwWDzcc29PKVBZREiSAzbzlQiCGwB+Uz2s32
	 +nm6hq52K9w73h1s5KaVuLWx4lBaWwx7E5+Oq/iWG0P/E4c7GFB8cfo+ZIX6IVLX74
	 EZ+QgulA6FNWl/HStjEHycWRod9iAL6ad8HdRaPcCGSAVPbZmtC+RhazRHamgAI0YG
	 AN0ygyexXq+C1uG3hWrjbub2m5wZXPO0C+uMOgYEgZ68nQ5JPOKf2JzbTfB6LOLPsD
	 3FA10IBhuHZ2FTe65WKeUIY+0B6eB07wnk9Ml/iriX2LY997PRAEjo3fBeQMjYpTtk
	 I3ymtpD9yICsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBAAC52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474655362.23891.7506866191444307625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4642285fba6d2c5c5e67a18cbd6c5af38165c4db0d99284158f9b5d85770df
Date: Tue, 27 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724746553
