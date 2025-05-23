Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF681EF368
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747990194; cv=none; b=liuGZkrIOll5AnA4wb9QpcqIwM8cy+Ad+TUyVd5OJl3pFW17incd1ARBgHkPvF8D3NG0hQREdyzqc3sVqIXDh5+W/XQ2Cfrj3lutEm9E7mFtJW57pR9G4iovlO/JbjmyjCPOXMRJsm6nwRwy5hIuRQo3mbftjrnExdG7xVJYROI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747990194; c=relaxed/simple;
	bh=z+HrEi8YJYgwcKPp0WLDn9m+bkJDYvJAhN9Ccqz77RU=;
	h=To:Subject:From:Message-Id:Date; b=LZ55puy54sbPL9T2OdLUiTUJ+1Jci5z2XfCd3O77bBHc+8M+mvgICEDp49V+l0Ed44TxYpzFTDIF2a+nvWFNho0Ij8TSIZtOYMmDU/qTbGXhlk4p/Khr4z93YAJmcdFVJnV3GbCwDw7qgMZ6fEsJUgEmOrjR2denWubYE0KoCMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSeHCpvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSeHCpvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C69C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747990193;
	bh=z+HrEi8YJYgwcKPp0WLDn9m+bkJDYvJAhN9Ccqz77RU=;
	h=To:Subject:From:Date:From;
	b=QSeHCpvB0E8jOK7U52mH59tyIMZFuf+Xx80eJt751YChPkygYcoSloMfVEswwpu7J
	 NSvqWXtqy6nf6TWI6C8erfhwuQfPBSLkpPAJpMqWi21TxCRht0IScGz8Gl8OraOnyl
	 f23u20jqc4mwKrWZmnLz6v5QtS+wt65hC3Yzp3dlO6rLG7jwyLgZPW60wmusLQFEGz
	 aPKXBFap1UA59bGg7mgHV0EU0BmyigZ0eApV8OX2qFAECEV1n5Ibm0vo8D+XCFles9
	 11xHbb5hHxvNlZBeIRCHTgMCDxE5Hfs3zDqdEjLlG6JQmhMhwKmExHkT1Ml6B9bmZT
	 YNCt7jsxsF5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F049C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799019357.4607.2141972271709055090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016b57b41ec7fa28cb9216a776e853dd28377aa1b68a18371efbaaa5688ba583
Date: Fri, 23 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747990193
