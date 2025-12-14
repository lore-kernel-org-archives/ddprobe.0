Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADD3194C96
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765728774; cv=none; b=RFviUq8ckLmuDD2WjK59rplqXqZLXYnGHJmlTR+TXJr4Pkl2KHL7TyUoY0KNo/rFCO5aRZTh7DM1fZYTrqUZEzAU6e/mx/Fj5KKPLMCBTFdlUmOY08CT3OGhHVq/dAoKYynvomLvf+1bIJnWq8SlyNU366tSKzql2m4gYRFuUS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765728774; c=relaxed/simple;
	bh=aPnQlSzdLbzv7bPorjwCWJPAekg4w1HMcV+xrdsSa10=;
	h=To:Subject:From:Message-Id:Date; b=tTSnQU/TaQyH5ut28uE7EZaVctFg4JL2LkQSvr8pCoSk9GWPQWE9TlQNDbWxD/Z3bjW9IONdaGbAmvUVExl6hgsC/EzLK9pz2mKBD3lF/XrrB01kLWfLkJR2Die2bNz5T5xoogarP/9YzUp0R+eUVjU19C/JSEB7aXZww3IwW9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZ1OoOme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZ1OoOme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56A1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765728773;
	bh=aPnQlSzdLbzv7bPorjwCWJPAekg4w1HMcV+xrdsSa10=;
	h=To:Subject:From:Date:From;
	b=SZ1OoOmeGmivzsiwLLazr4gHesfYRoqIFKbwEu9Zs9OUmVXp6oYwgiuHWHNucDUEm
	 wv1TaH6NOyj2Si5aGCLqNRbzBrSCGXv3Fx/3ZeL5SnLeBR+c6BT0oOVsBLi3xtnqFs
	 /OL8uc94PkLhf6sHV/adJT6tlE6ZKOfKtqAHqEuFry51AJVmzPk5iPi6Vph22fnFJ/
	 ngDueMUe3ft2KX49ZpQXnU6EQDW2tXXitUaTH/ny5zH/Zj8/wGkCBMZwSNQw0ZB7FI
	 Dp3kw06pEN5gIDMC2ApMw9UW439R25KX/jxFem82LIT2/7ipeb6NzqhbKZagVMEEiQ
	 TRQ5EKRdAZMPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3823D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176572877363.26517.15070683439086725873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4597c7af283afb198fda04e5ae2853012564e58822f63b5a1ddb5f2d390cbb54
Date: Sun, 14 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765728773
