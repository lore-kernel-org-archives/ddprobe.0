Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F08156C79
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754177394; cv=none; b=e6BTmzhtU4tTV2budgDjqKfwVxlLHL/5huxNmS1LNUDsHzBZmFLYwu+RjdyRY/03cAkLI5k6vI1l2I/aReTx/3AcmuIoBYZToquq3IFQxybTBn1ioG+XmL2/1OcYKF7/GmlY8Jp9gIANg7Twqk+qJImiZupEXm5cIXzJh6kYFrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754177394; c=relaxed/simple;
	bh=69FS/+MT9EwddOwz0qf6toigWLWCjCtjZ2hd+ryRxgU=;
	h=To:Subject:From:Message-Id:Date; b=nWuJER9U/43gxSenaEIBz/b7gJTy6KQLgMBvk39ACeGmBA3skq8W9HiddSHBHJWmCa9ZvvitDOiPbFak9suy5SsRy2A1W6BUrwqegbwpJUHFhZrSCOmzl89pPde2tGJiKPXOxhL/nyfD8ymD6t5O4QHEBRTMkwiyeerwdvZ4Qek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/aIZstC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/aIZstC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754177393;
	bh=69FS/+MT9EwddOwz0qf6toigWLWCjCtjZ2hd+ryRxgU=;
	h=To:Subject:From:Date:From;
	b=X/aIZstCsM3rg9i1Se6nN/j4REFkSkZMxOFnmz6T2e1wXkpSTBZPv/gmuxuvs3seu
	 rXxEBpS5tTd9stMMr1eRHqXZTo7t1AerFBiEHYzxFeX9+IZob+uoVQb1cxjZrg+CGd
	 S0u8ywMn6VHSnCudTBrmkJJl4Adx52KTzHum0BjWSK4dFce/EUkJWvp5t6bnpf4g2O
	 tYCIvVAiclRmqPNhWBwpCb3Iimb4kMUynivj7eWmlWD87jbwnIBN6BloLFPzUO7Sk1
	 TpiA+6dueA/M9Ts5YWgbXOE1XUS27ytFLAtMsFheoWJ4Uyr3klfqL2sPgmW9ifb021
	 l4usvX14+gJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93674C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417739358.9590.6557479224322110345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28126bb7e8dce094f81a367599adb706d6420dae9d58dc40b7ce0f646d4fcec9
Date: Sat, 02 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754177393
