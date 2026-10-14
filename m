Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE684E1C68
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791970834; cv=none; b=JB0tJzS9Ejpf9laEOuwKKUW8Ti1d4o3mnufBwPRLLOwgWYJlUtMqKV4JEhIZLqjBgfh5f+0ATeyrFdd7mJdFFPMtmDyuSp32Eo0vKuM0aKNih4KO6ViNpWqDMtA7Ufjc/i2fesu4/u6XV2s36XqJ96ExssDlIA+iBm9Ccl/tFb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791970834; c=relaxed/simple;
	bh=XnKtR6AExJU6jSIk6/oF0eJMazHFtipktOYLDpKxLTI=;
	h=To:Subject:From:Message-Id:Date; b=dx2CESY61OsZg91/v8yiiOX/cNWL4odAxSoVbS8i+fAM3DDpGY4Tu3E2v7wQ+BL8IfUJQVw1EASOe1fjM1uIgDsqZO2fuuHVdsRX0WvC7fe/+2mKSFVhuj3cHeanN1ksgJzJiSpqb85ns1Q83SmKRflbZYxBqwP7hwbdYGTioi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oV+oS5WN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oV+oS5WN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3054C4FF7E
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791970833;
	bh=XnKtR6AExJU6jSIk6/oF0eJMazHFtipktOYLDpKxLTI=;
	h=To:Subject:From:Date:From;
	b=oV+oS5WNh6NGEqGZmls3TY0uMzijOKyJ9YpmJnRO5fIzOj7q6z9XZXXA6fZ5kHtES
	 H6Jh0ZIIlTD8G086R0tofSdyu4hcnj5Mmjs5e539Yz017/DyGHM8Ex9/0WgcbVMv+P
	 ORi1ZZeOfYepVZ48208qsIHq8fFP7pdH+f5Hy93bI9BFdUFkvhAYuJ1gKXj0c+UgeK
	 7dyfX83yHLCPIjgZ9z3fEo7S6FP67iJHSkNPbRv2d+0eUg2f1DXYap+PgXJtj7c2Pq
	 YJPAwRr9YCdhuN6D7IQ+oDn21RtUk1gaMk62YE9bgY4gDhUyzC5q30OSXSn/avakSA
	 GCGTU2UF9Bjkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDBBCC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197083370.2742.14468998627956059506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e445cd424dcbf941f44ebcfbe3cde68f36e8dc1c00a9f7e0cb03d48a0f3f7b05
Date: Wed, 14 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791970833
