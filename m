Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13E772629
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761261594; cv=none; b=WhHK1KvJgBHJaFX6tunLrNsmz00Zo7bkgv6qfc8atlfGsGGiPPY+hoVUCLsg1juzMursSseo+wdxN+2+nTXEX5iiW5fBd1Z/pc+4DMy5c/6NQtshTI3lgPGFZSe1+Tu9h4zhI0SxMtVhSlIBUmOzAKhBFkqNxy/QkFsPpAAtLV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761261594; c=relaxed/simple;
	bh=RlmHiaSP8eJBNmODmjNkVLpLW9C7YFNSjpmLcpw6wHw=;
	h=To:Subject:From:Message-Id:Date; b=i9Aoqx+pfcHtyrR1jo3V1xmMpgeQZFzwZ/TdJnWiYMIIL/4RiCFqc1QkC0fbHLvIXiHAJt7OAohhrfLVSOLTgZt7JvEg3SQpPm5fK1dRaho820SpGgTlQYAh8scBg6nCfJYsjxbjOWPDwG2AciKW1TtXJU1eR+QcZJo7+o/jSO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvqgp+ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvqgp+ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4319C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761261593;
	bh=RlmHiaSP8eJBNmODmjNkVLpLW9C7YFNSjpmLcpw6wHw=;
	h=To:Subject:From:Date:From;
	b=mvqgp+exiaiuynH2z74ApwrGxsjllhoyq+whNgoNGqqnftwV9DJ1N1lbDsidUWKCv
	 9zszNbij4UYLNNj5C25+hnoN/mrpQdb3y7vahfVeVXSqhZ/yVpJ4zMKe8j5tgapLaN
	 QFm3YAVhOpnCys4hO8mFLPaJ5AOt+HbBMQELHnHZvJmkNBhvujLVwqzrchbnJNcOZ6
	 kha+X/PYUk9jwd9AG1td6EezPnMkzvuYugeHlke1z5hTDrLSnSMexTegHSxMI6oG5S
	 WsN3ntp6/9qgh32TBrxKFTpWlFMbzw91Ij+B4THlMiHtL0mWzlBslR/a8FAmk/MvfC
	 jpo1NnIgluJpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A25CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126159358.32761.7999837280242488776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cba32a197fe759d2c992c4f23ff70c4fbee6c7fd46d57406c091e5895aa985
Date: Thu, 23 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761261593
