Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A07FBA2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769741634; cv=none; b=DdtOP1aQxJ1RMlAmHc6X3pVAKOvPA48tj57X0Fqg9YUVTQqIHwoqcU7+mnq2YolKLA7ETWDbgafBEDTFY/ffUgoCnLAwbf0IiKYsTM7dHtn77DEtUOePC+1uEtxtfXwqAibQAAI2zhGJdYzGbXCRMvQJxJWAoMOab3D7hhlg2dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769741634; c=relaxed/simple;
	bh=QSSKz8fg5GbwTryQXezYxqngrTkgpXRAlNBQnxjjnuQ=;
	h=To:Subject:From:Message-Id:Date; b=DHhuCrAiLStCTaSSfGhHhqTsRNvfPCec2SxtSExuyfTld8KkCbdkIOLIcwCV6mJnCFLgAvxkzEKb+yTojgKUF3JUsrZyxrOiwUxdtlUZu5d6v3iXMjSbnQWRK9QejmKAQcwPgZrxLHRpcFIBrTBe+RyrbrKtOSxlE6mK4kozdX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrhrQQWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrhrQQWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8061C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769741633;
	bh=QSSKz8fg5GbwTryQXezYxqngrTkgpXRAlNBQnxjjnuQ=;
	h=To:Subject:From:Date:From;
	b=LrhrQQWstNU7Jx7URXKg3BVmtykgKnDpmH4ZJOUByrJNAjBwx3sexH6teNlI1biKp
	 QhijVR5YzGtil/v1obNJJMRUC6jlgGbwKeDrnz6JokpxREqW0XRd4M2opz9kf2ixFI
	 0fGKhUv4BlUSx1/W3PS73QNpSlQPk1SESOYcxtscMbgljUw1mkzbIKUbrqUgktnNVA
	 EUw2eiXfGUHlTpWGqa7PEi2iByG4AcgGx5vsouoIrI2BJmrs3b6Y1S9VgyggrI7tjI
	 BZjx7tug0KEmbWT6a7H6qlHDIBxvPjr/CS0ak+nzVYC0oe9onOJPhkZwm4/iExKUJM
	 R+5OZCXObulbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AA5D73EB2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974163358.14451.13970449706055256392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a111f989fafbd10c9b4d3e80c5e180df61bf3e8068261cfd4d862acadb98538
Date: Fri, 30 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769741633
