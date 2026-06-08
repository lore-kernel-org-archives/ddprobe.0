Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4A522423A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780962874; cv=none; b=b0mnxyMWpjW+wjy2G+nXm4zgcpjowAuJSC1A55dWAMoYiqkkn+KJ30xS7T/O1ABZH8BPvHnZOHxSqWITlEGJGcb6gDYu6m4kAulE1I6Ts2nB/YpbXhOqmRNn3jDi0JBo3vCi5nzq2O7jiQzJfPYZcJalbvmvy2Tt5stkZ9WnHrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780962874; c=relaxed/simple;
	bh=229x5WPMcxUzBNAE9pAN5GTclpzge51FztMbZB4PpUM=;
	h=To:Subject:From:Message-Id:Date; b=Oi6SAxeXxqynR/z+Z0933Fg2wUgh/1ND3oOCu4fOt/U/wXNsZYae63mb2YcgpgrK5KL53ozob1CprdpQ1MuU24If5+BGW7jSjNqUzOSLZQZk4QHjFy3C2fMtUoLIxQHJYcNR01h5WliBjsuFPVnhA6sSMu/O3M7lt7z8ErTvJHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbO7wsiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbO7wsiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C630CC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780962873;
	bh=229x5WPMcxUzBNAE9pAN5GTclpzge51FztMbZB4PpUM=;
	h=To:Subject:From:Date:From;
	b=SbO7wsiqkMF6FN3hQGeyh9dDWbKQGe84Or7DLJ7baZlI0w2+ERbRezbkLvEJHX+On
	 O+hPA1KifgoIvIxeAi3nNkuBBGI09mRFuhqn+yyWbIEt0qxrOES8MPOlRiPc/jHBia
	 g7p/A3wuy/ffKUDH69h+CIbUODVF6e5JLM4/dxU8XrYTzhW23Q143u3tBz9nhhfizv
	 2Dsb7E3/VnazhudTs8GZuZmaEJg+8UPUkBEj96Dc9IZEaLbg3kCZQupS8sw6Ni3N+p
	 At/qOTU2IOs2wadLZh6BG4H6vyCKEEoMUpBVnvAOewZlmOC+HN0nilMfS+1phG1tnD
	 PTkgxqwR1QT+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABE5CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096287369.2580.4094640311316688812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef038b09a69c0fb37253affc6b90ead8628f16168f9081fa6afc0e209424a215
Date: Mon, 08 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780962873
