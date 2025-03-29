Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA301DDA36
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743277194; cv=none; b=E7Z6fUULiRLVghUSwK3TR56t2rNhzltMou0fROF3OxEhXtke3PvFl5wTwJGpDXB7gMSVuenaLrWQMLLxLV8td6XvpCg021QHMfQK1nYKc/gHDL1NhxfBK2HWcbKMy04XXtbeN6JvcN/D+mXOqcvWcra/TADq78AriVDXeToe3eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743277194; c=relaxed/simple;
	bh=lxeK2WndgC0+/eEv7GgX2cqm0ZszxwooOkh5FU8wH9M=;
	h=To:Subject:From:Message-Id:Date; b=rbkxqxElve4mnglKs+g4upwUT9i0ZycWXBpmNSHMFTqaeCZle7FWSV9zHKYCp37dyrArbNNyvOvkcAnEFzodbThRGqgluSqJJWpYFP7RSNpdCAhR61IPxO/ZqedjcVybHK+EQQhxwBwcKk819UZmqQGKxWqNU0N7h3aIH6/EeCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gq70vOU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gq70vOU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC39C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743277193;
	bh=lxeK2WndgC0+/eEv7GgX2cqm0ZszxwooOkh5FU8wH9M=;
	h=To:Subject:From:Date:From;
	b=gq70vOU2ch2dlV25NoqY5J69fNlrplNvWEdWC/vrW+Pny2FFeu/0s2xlhtWcZC4/q
	 vq2GbRVOLwjLjEOuqYQUvcxNFkcIYM9TNr6GfGgmMuJrLyyJhHG7hVb5QykBCPIPhE
	 8cT/jxZVVrs8xLxMRoldl+rUATru0PUHmijji4+hsQjKId6vevkzea2sOjVCCzG51Q
	 z1JeKj6KTESeuD26ynDehKHUUl7QxrwOzK5FYC53Cm6b+SExQxAr4qlbZK1uexk7hO
	 cC1TD5A/mkgbCsRUPTfInqm42tDVJpnKnM29nAAy91nhErHXZ1uUjxi+U+K04YOoK8
	 +fllgJSbETWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B0C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327719359.4673.2300027759239421338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79565db081bc98539b35cf2ca76c690480904e7de90f4d35e27a4c88085e7dfb
Date: Sat, 29 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743277193
