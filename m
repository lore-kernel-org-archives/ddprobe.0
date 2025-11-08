Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432FD285056
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762590594; cv=none; b=kbJ5238cP8ZPTNBPb2YuMe9MnuzAcq9QZ8DYYdIVUgHVj700FjupqH/dLT8NleIIYHZGxT6XUzhHoJ99uF7H8wRznnUj6H0Zvi1uI0vShM3AMKNtqFtvBGId9BB29OLiUzg74GJ3SpTSXSYif1dLRi+Na4JD94j/2+CrPLQn8+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762590594; c=relaxed/simple;
	bh=Q+X8WYi7p0oMvFbUM/8uXlse1QzCBVTba/cJIiCVj2w=;
	h=To:Subject:From:Message-Id:Date; b=CMlraKwGN6jaLDjd/rnxpyTuWBbR0JUttWBv4lKxwqyhb6wKTX9GJMNgGi9K2ApxwSLogB5iY5pnJRc7vV1JUPLPMxnhw6HxRli/LrJuQh/JNlFTPOa0QAQZLKrn86/K9y9mdLCkLmDq6FJRJhKpnedIEM2SBe6EDKyEj4B1wzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOXXjGHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOXXjGHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D43C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762590593;
	bh=Q+X8WYi7p0oMvFbUM/8uXlse1QzCBVTba/cJIiCVj2w=;
	h=To:Subject:From:Date:From;
	b=uOXXjGHxeZTl4gqxzbhPUxnFDWGhzu34Vcl946691J+x1o+FSYQF7r+/nXsOycOjY
	 9ArxE0tRN+Njzvlnil9unohEs55ZH0es0jWUIE+G2yeIsSYH0T0LjkWRY8J7UrQ5dY
	 NFmD7u4LP5NbYAg3mawzK9GnyLJhDtCr1zIKfpZgMC8oEX7/5mXbDtu1QRU13Mn9qy
	 oTcW/MtCLdJtoyd2dR69aXPlT8fnbhS7Th+7su6aWSd3wdTCOcn9ZsgeS/hqkNOHuL
	 xflLP3TeeVSXfXaJ1IQQ/GW7/jiICuMlrN3ttTfeQ2/x6C3e62lVrsMON4o6V8klJN
	 jK6osZf+O4wug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FEFBCCFA1A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259059361.26044.10459267879888615809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194a3a5bdcbf1f0b92ebf38e52682f40df7f43a2e53e602dd6695642cb415b91
Date: Sat, 08 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762590593
