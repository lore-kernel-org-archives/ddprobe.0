Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA0045038
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769765633; cv=none; b=MyVFLIWIq8UFpM5YymuxpnmwtF/zeWUAQlArt/d9imjf/NjviTOa+ih0e2UUlQEMdnWWcaUsyJw++PoSmZm0GlgHjVmBWriNs8jyvw4lC4SqJSkaW7lfMfudXeLw7Y69dyw4c6YVGradyfiOtBSCq0Ei+hRsM0ijUS3n/vqya4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769765633; c=relaxed/simple;
	bh=RYC1qIZb3uadPvnrHMev3gv98LPdQwA5Xpf7YE6cc6E=;
	h=To:Subject:From:Message-Id:Date; b=NZn2mgEVoavTtBtVDcajDsqXERgbY/H1IA47D/tVaUL8qLV9UCO1ou3w9PhDUzxlZHkbo1Dl31Ijwi+8T0P4On08tAEBLeIcmcUKSHGD+OU/fESF/wvk4SlqgvEnggd045FCxu2S7Fa8wymFk/MwBB7vLNMktU8HOlAXB3iCUnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAYEhoMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAYEhoMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5226C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769765633;
	bh=RYC1qIZb3uadPvnrHMev3gv98LPdQwA5Xpf7YE6cc6E=;
	h=To:Subject:From:Date:From;
	b=LAYEhoMVVjOpND1ub1zQJaYsIksb9J9CBmgr+RxQ9qJVg4OczR8ju9Fk/diRuCs/L
	 DT7Zu7dGr8Wqz65JZIHgVliQEnAwT1MCKplI3Y9/tfpsKYwLDHmYxrFNjCDc4rl2yU
	 XkwacfkxA+6TZ0QjDfR6X1VQY0ybzekk3l5TSmWEe+ssg9sGJ8jUhyMjuF/PICqo/M
	 OK29U5uWeFSAdTmZVjAcNqz4GDAKK5oMnOBopGtLypdqwFQYxQ/z+XNcQbhxAkSKQt
	 eZ/2/zkR9wzYiZKn5UR+2iULVzGp1vACZ03dmhyfJhrS1QzSY1u+Vin2SxlvzTBDsb
	 KJ6bYyPyewKZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC5D49C83
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976563358.1744.2847178519277737249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d84714fbbe4adfe1ed830ceab7e119f168c43d9d096c40db3a88385f982d31cb
Date: Fri, 30 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769765633
