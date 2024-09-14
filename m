Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483714414
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726332954; cv=none; b=a4LShhzIORLK7vASLRss0/sTEK28XSm8H2k21nNpUU3NKuiQ52aJZQ/1d0Be1ZE3i1HFHa+bWihQINxbvp+q7Ec//OHDNnqhEi3GC+45SaUYXiU/L7GvlbO544lXIyhkFnAxOuJSo3hhC0kXZdZBwvrF8nWp38MsXT4GEUAJnEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726332954; c=relaxed/simple;
	bh=NhEy/A6Xhfs1phslkbZ3EuBJOaa9V8THLDESUSp4A6M=;
	h=To:Subject:From:Message-Id:Date; b=SyCVEhzPYKisuektqd3exOwCcXFpazfwM+B/0gsoboN943b3FDpj0r5Wqc6i+igCplAK5Lo7NW2TQ3NT7DGmn7ppf0p6yNsZ/JG4BBJ2lAiy5blW+yygqDcUv3gIocSvHEGbeDIOo9vmP601pdnTi2W597rrh5Tiz+zvRQXzqE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgJ9AzDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgJ9AzDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF07DC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726332953;
	bh=NhEy/A6Xhfs1phslkbZ3EuBJOaa9V8THLDESUSp4A6M=;
	h=To:Subject:From:Date:From;
	b=JgJ9AzDiDQyleS8k46Sa0U+3nJmNpS0CGDVCb4+UhEhZFy+4iXIASOF/wsI5+kgeO
	 2d2cR/x1NIRVzdnmlvjK6URhnk796BaxYzmMjZbqBEaLnAcc9nuiRoQVvAF4v3o42B
	 fyR9s1srLlfRKcrw5vLUz/Ni+wE1lfAxZe/ZuyipTiCDwCLXG0tC0nYsYNMa5VKotq
	 zBHk3pUuJgK+ReSeKMcp5/VPJxuy4HjHWQij5JgKP1bB2eK3lPh9sNPIee+WqywIdQ
	 AcbWt3Xs5nzu43zBhfUhX7X2mPkxn+Ia66N06yT04loEQfULrLyr2ZsL7Dn5qTsVig
	 SjMDcep+/Vkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A237C021A8
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633295360.705.18262585147293898089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef83c7c0ad81f8168b8b2cc2aa40a92330bfaff505df815017aef57b3b439cef
Date: Sat, 14 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726332953
