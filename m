Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8E9548E1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719675863; cv=none; b=YNEYB+/bUO003wqoh4xkT96sT6k4Sv8YAYMVr2UXRiVn2k/MFhILTXHbe3zs1vNDqt6uWW7Jgvm3a2sO83DAGgSIemsxE/flcj1IkchmHNofEHohdX9hqoHCUZXBrJfdN+Tjw3m/RNx5aTzKdknKWItq0zL8UFltHT4AWefbiOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719675863; c=relaxed/simple;
	bh=0e5Pcyol/5l4xzvViNsTDN2/fcAHwowxOkrdMRw8bek=;
	h=To:Subject:From:Message-Id:Date; b=SHgIPeM/Wf+oLWTrLhIPN/ea6+ol0aXdfVEjQt3+iRorMWudEfSnXW3u6SBTwajURM3HvqodX9PAqewG7ste2NZYITTI8nBhuyRILUgxS/yirsgxRvNHsG/KBQreq15xt7evniE6zXfnuznjmgRNmB8Ydc5g4T85LH9KNOYTW4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSL8u4ok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSL8u4ok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCB9C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719675862;
	bh=0e5Pcyol/5l4xzvViNsTDN2/fcAHwowxOkrdMRw8bek=;
	h=To:Subject:From:Date:From;
	b=NSL8u4okN52gFYULWSRlaiVqrvWb4Uf8toTOgmyyqZ8XlvqIcc2B2U6XSfXaCAITI
	 WmS+xfc7jwEL0H8fHLRJAwpPxmR97LqRf3tPvZLreWT+HetIU711rvsY4a6wS8C4ox
	 OOeROFIu83GPRsrIrmigtnLcS9gO55gZ/uDIm5XGKVgb4Vp31Bp786bSg/qvgVDp8h
	 ERbkIGrnapb6W7C9SYT5su9/3u5PO5ddutsoko+DRc9l+6eSw5aFEc9ykiiLQP8QkM
	 6W3IrU/mHCMrI3aB0ChBAbY0qGIHll605zxcgUUF999JTPDSQi0en8pZMSvhKuZVrh
	 MGNb8L+p1zEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE05AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967586280.9116.18262951375095736581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d96ce3683c1bc745160ebd6fe666878704d015f866b7cfe61fa47fc7540f7c
Date: Sat, 29 Jun 2024 15:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719675862
