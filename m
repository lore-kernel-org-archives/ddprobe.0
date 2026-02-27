Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1865227FD52
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772220894; cv=none; b=pX8YNeh2sptTH9A5No2Q1EiPKmmCaqBN2bVLP8hJb3dzayZ0luGyn35GBgvH3UPXaymWCMGSXJORj6q+sCoQdnXrnPvUkN2px04onpN6Ta8tDR0EElqz/Ej/coV8Jzt5WfMHPPyVNN+xVxliq3e5p0TuteUbf4I4UyPDWvRtvio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772220894; c=relaxed/simple;
	bh=UITWcs9GHl+GJtU2dwExU8kO4AbTUv87RiN+AxBxnrI=;
	h=To:Subject:From:Message-Id:Date; b=KNuY9CY3S1b8DByp1+ePrN52uKZ9kFFSNwHVozJqz/GopjzYccXcMCx5kFnVnglMTdB0P2xLHGqB0/ggUxSIKSTcYHNOsQ6YikKze7Fr4fPe58xtTZAReMMbRr0mLHW1teAdluw51kCDkLLo3aHHCVgZkUNW7C8AgurK0RTO4pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxlCxxFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxlCxxFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1F9C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772220893;
	bh=UITWcs9GHl+GJtU2dwExU8kO4AbTUv87RiN+AxBxnrI=;
	h=To:Subject:From:Date:From;
	b=JxlCxxFcpfIhUhEH49E4BuCljjyYby4Pth827wt93sl0w6jT5wO8yVSojgGW9BMeS
	 Da3A0bZuUZcq3jtl7AGj/Ai4R55IVt+acGnsjvnfgNNlqmH9/r8wA0i/mRQZAR6gdb
	 KfcGmcUvss5y3+O9SlBdDSTNiEk8HQaFs4sQriS+ACRx7SPRXQmu97SQ6+gMvSzh0b
	 vcv1IjtDOYzXrPloDBiYwAHSngiesan5Te46zT4Wx0ew5HWUKyRdG+bUiYbR+kBt8w
	 f3Pdbl5nud1B4EojnIsv1ltE7Hm+CRPcCn7a7TZJLkcEgEiJj5B8kEFRuxfqMFLNmY
	 jnURnMadWWFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A1FD530A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222089360.17981.14814711130202222285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67f5fd6a16d3d4f80c739dfdf89ad28ac1df2e0ef91cf8890b6a164169b2eca
Date: Fri, 27 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772220893
