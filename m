Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C2295DAB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747087194; cv=none; b=OEoOvcAupAwXhyoAc1ZQBS207EqYc6YDw551ZnSgsBCXDqXV63a5MrnjvkoQTRV9DLtebx24t1nd+XoYY2W2tqM7yf1BVm/FgBPEk7UwmOgMQ7mWXvl0Od5jjzOxqikv2X3Um6cawtFIxUgk0jv2VZFRj0/J0UkgXvrxyzqISFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747087194; c=relaxed/simple;
	bh=SgimV2POcG+sTk5xCz8ddmsJ3Q8TQUcRg0XW2laxBaU=;
	h=To:Subject:From:Message-Id:Date; b=S4xG7hOmUeIGcGFy48G27vvYzVYtAHwrBVOHQITtIyqkS+GhAsMyBsNBwd00evwDs2tuB35CoC796SCFJUHIRIL073U2pf2b0NxREAJ4haOw0a2joPk2fCoJvVkvRF1+287BCIITsSau27Db7iD2MV03dEo8pwoI84a2iV3BcqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnnA6nQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnnA6nQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3587C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747087193;
	bh=SgimV2POcG+sTk5xCz8ddmsJ3Q8TQUcRg0XW2laxBaU=;
	h=To:Subject:From:Date:From;
	b=FnnA6nQBdikwQvDkas66W2TRG4msoy8e3KJ8Ww7yAsaWQBf1MIoNI+2NxARfGg3h1
	 0dil80vzgEw7jVAvIVbfkXmHNLGc6ZkTMcXXe+8Ety/ESrVhzpmrz27JAZ1Hay4x0o
	 dfDq8lO5pk5JtZeYsNthxJrbxhTL4rCCOW25D/rkWYjCqadIwJ9f9V8nx1/qUeMrMo
	 zGHaXOgOQAL/J8hxwvjdI5DoLviv/dhcYBcP5NHkMof0EwwwMBDyILkuKmaHHHgSKD
	 lop+i9KeDDIRdAVWnOtwJ/P680a4P+dJxFNoFRUTQC6aXMb45EQMbiNaFJB7jC0h+h
	 b5i1B5oVBydcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908DAC3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708719358.5359.4776039188414411168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7547c622b213cbe62b0ec97c3f8b2eaa0d28ecd9abde22f99eb9b33c1f5b4353
Date: Mon, 12 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747087193
