Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D6738C
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713660623; cv=none; b=aLxXA2JWoREh06artcHGVhHzxQwRTsYmJdbClojC4pj5JJMFvYOcz4x14zWWQ6Ni/kD5E156zyNQQ7u+5X+32Y3NdBzukYKA3SN/TBFajfWhv+Fxfq1w2LE9BYNLmSPtr848Ple1BRf2u91ZQLkwaNSBCerooRw9IYNT6uGwU60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713660623; c=relaxed/simple;
	bh=ebjoqQzPonuGc+FJgXLfGsSe3ACVyeWmLy0Z8uTcykc=;
	h=To:Subject:From:Message-Id:Date; b=JgfGKu/GwnID7R0U/iNtFDT4cVMCLwa/8UOeCGbZDLfimucNZVYdZXolDjuxKoDgXB8TO3pDWbfS2nBSGFSMla52QFp4me0Jim0gHC9N5HC2+CyH5AthKkrAEOCkekeLB4c7mw7QatT1eF/f3qeK8jXown2UdZtfHDCqBXdY/Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeXW+sSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeXW+sSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6FDFC072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713660622;
	bh=ebjoqQzPonuGc+FJgXLfGsSe3ACVyeWmLy0Z8uTcykc=;
	h=To:Subject:From:Date:From;
	b=NeXW+sSby8jFLi5Hk4hnMlz6CTcufyMKWXeA6uITZzhrzwVhh6f5xHjRe0v+qpFVu
	 rvqEAdan2AA/MDe65Bj+H3q8XJ1nOoVTyFQhl7VYwS82m6qDKvlY7p7e6QeSNtyLfw
	 wRT7ssg3OnQEc+5+yBCx3eIqzA//fo6NjLpCThUiUl31eJ984SUaTkLokVIbCj7LM7
	 Y0qdQSApNc9AIEsSmJyc0hu601QzgshHaei/JWeyEFHmVlw/wOpEUhfgv7y+OrPDrO
	 cS5A9RgyJBZ0WVsod7Xy8TMO8i5fP6FIQP2X0LGjaqK7tJ2Iu4ck090MMmbpLsMDow
	 T8D9xvZIi5jnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC13FC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 00:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366062281.25406.9911268653832305786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb5b95ef9c772e8508012ba86bdeb1b581fa70a7aa7d551e785c7df13540efe
Date: Sun, 21 Apr 2024 00:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713660622
