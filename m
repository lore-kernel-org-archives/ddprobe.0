Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A62737F3
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759604394; cv=none; b=ZP6YTWrvuzadEZe72nI1m2/uqM1k8ubdy/gQJ6E4KIZhXSlJxLOW6q99+QN8fq/AG7NCoSnTMU+Ukcr0Q5Jr2NRI+ET4otN0axTP98AQHGlH7IUqA+DA7g35lsNjzG4GramhVYhfykkRBvNNOOYTUFQ2tmsFALTtPhmgg4XD67c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759604394; c=relaxed/simple;
	bh=I+QheUtqxx1eDoAon5ukzRETPEezbcOpeQMFcdM1cAI=;
	h=To:Subject:From:Message-Id:Date; b=P2p9CMvtFt8AbAzYkAK80fbd/aHFYP5ou70T7NbcVXt8nmv98zo1xkZHVj0LQQ22tS9uR4Fxg1sQQ9dpiTi54qcWcBn/ivWhA+bM5UcuWvCWTBYVNqEkeXsvRmm7XMRg/YBQVaPeZ0gtd4oWMAx6f5ZdPNB+3pGXWmcXDLqaRQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPYwb8BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPYwb8BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FC7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759604393;
	bh=I+QheUtqxx1eDoAon5ukzRETPEezbcOpeQMFcdM1cAI=;
	h=To:Subject:From:Date:From;
	b=uPYwb8BS6x1iYT5ZSE4Ed7tiq/SvYagsx9Us2TC/h0bgTtcae8eIhFW9SBVjJYMaw
	 uZW+TORew6xF5dRQHam8ui4r0x++isOSW16UBDBxTzF2pkvAArlGn5ZbCSRZKdygEI
	 Lz+S3nvl34smucJMRHJB95a8DvuN67X9R2s5Z7UsfvNv5F6IX2RpY0vd9sozx/wp0N
	 gY7Lsni/4E5j7yrUDIvQjtoveiEirWrdpVdnSEOaIcqxQpuKeqWFtGhlr4bcfztzUB
	 9sCdNfUTxvN/vpL8K1iAJ+KhBx/vmnv7tOUkRl3aSN+1P+S7Jpbdq8kGY0ZwCbmNPQ
	 yUCxWX2O5nTwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E761CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960439357.846.15298659284023638107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9506508bbf26f56f59c28e75decfa076583887ed04ce2ed95bfbe9fe4d05d8a7
Date: Sat, 04 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759604393
