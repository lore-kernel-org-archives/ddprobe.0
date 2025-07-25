Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234E02E542E
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438194; cv=none; b=RlRY+JxudmoJ9gDvAsje5yF2kIRHk2zbGVZOS48RIixRok/Y1Ph11+pA9HqVMu1LzROTRR8XYh57k+Fhy6+9wIW4UlOT6gMJCl0hnpvrC5gPEpO2BTv1JlZcz9cvqX7JLkQbx8hcYRpDDvaZOja33zsB/D7FJVw2/6FdwOwl+OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438194; c=relaxed/simple;
	bh=x4Q+zO1rG5CdPWOXVY2pFv3vUChw5rSoRa5PalJ0tLw=;
	h=To:Subject:From:Message-Id:Date; b=bjnouftcUPf/Ftm7ObOx6Jqd4V+Fs833lpGOUXNZxx1PFJcaDRx9fbNYIaWxwXafYLW0b4bs2exCMggQNMzTgVR5dLIm175GBleqZzs9JIxLG0LQGidYQHC7/kfREYNZBmRLczDyWXXgcMehrlIk/U924jAk5hVALVcznbcguCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW0XI7O0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW0XI7O0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0238C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753438193;
	bh=x4Q+zO1rG5CdPWOXVY2pFv3vUChw5rSoRa5PalJ0tLw=;
	h=To:Subject:From:Date:From;
	b=fW0XI7O0MB9EjdExyvmQzfuj+AaiaBi5NHp8L7AP1hlSPbXvFQA8Ybm9O/PtLGz2s
	 UKSICklHLoJW0vPH4k+oTVls8kGpz69pmy7XTSK6tmC9geSFbmTxT5DqxiZ187CpzH
	 65M6ReJ8ThmUckiz42HsScCu6Sv3RV5Kls+/mp8hZ1wuDKyOlcp4bLfoXxryA8h8qg
	 iUdasr774FZBCMU+73RCTEE0RMrO/U/exsORR7S4gng1q/MjNvI7WEErVGYNAVmUIp
	 Nu394Uwor2aGLftvherb3npTVPAl7LqV32ML6NJDJ3b38+GKGur/cN1Q8K5UMwn9B4
	 5QF4j3AHSQaFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1FC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343819358.25544.16784227861644065751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f95127d0f5aa38ccba59d6a9d79eda421ece9216e2b367bab0087a8429ef7be
Date: Fri, 25 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753438193
