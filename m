Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27826136E37
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727460954; cv=none; b=B1S3cpi1CSrLfRtHGr8KyrJM0YLOgRSoLFc3LwTb5nrA5+swWCJPPr7OUbsyn9aLmCnxZmMMeDVFT2KF8EkqGSSwbcDRv0i5Cf5dH2EUo747RlANG626qqk0R66GReVQqyAgyM08VajrVqecb+AuofRHPxIih02bsP+SUCoRdUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727460954; c=relaxed/simple;
	bh=RjrIMYu13cqd7jr4GqE7Ldfv4xVKxUQoFtZUy9AZS1g=;
	h=To:Subject:From:Message-Id:Date; b=k0LcVVqG9CphfE1dSuaejWOHtXth2BBz955Q3hvaWD8IPGR9CDloB0Y85s7c2abeXv5LMVcuGDbj8dEFX8jVj116ltx/h5tJLP7wFMkpn/hSbSwIECTk30XKyxfBnBihQY68zBX3nE7dBc/tGAlTh9qPuO/b6f9NQoLpmTzKTu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2fASXAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2fASXAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DB0C4CEC9
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727460953;
	bh=RjrIMYu13cqd7jr4GqE7Ldfv4xVKxUQoFtZUy9AZS1g=;
	h=To:Subject:From:Date:From;
	b=D2fASXAvFsaBZIkRkuGOuHvE4XOzZfTMz3GmKY3L5k3/V/8P+KgCos4aK1GsoHL2s
	 YlpuLsYvq+s/hddoBpt9t77fKOvV78RC0Rc6OD/kLmsXLt/MCc/5FoTfb64XSZ1E5y
	 XTkYK7sHKY7FeLGeUzvpI3NSoo9XGXxSfVbFUsU6Ne8OHImbaziFxNnknqQRfx/dtm
	 dw301i2GJYJJ5Hp7UsY0mtnKMVCX/hlI6P69k1uHu+Wb5GvvlUeP5vgrNi2msGF6bW
	 MC6nPH+KHFSClWYEQKsH/6l77amk5lzVeFke5ufDBKw+im+7T80ayIRXQ9ju54/X2J
	 77BOoajezDyag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA44CDD1CD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172746095362.15996.7763400519742094778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf88926069ebc7c88fe9d22e27ccffb0a2b2dbd0067b55747ee66d94274f66e3
Date: Fri, 27 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727460953
