Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3C92773F7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782036394; cv=none; b=nrjPZOULE7g4l2CbSf9DzOW8Tdpctult4sKKkSpw40lJg9yAJZNN5Q2IL/rJHAX3cbWCrivkQ8g86mVVMXjkiPD4Jw6aViGJbUlzgD+2YLi5iR6vsZR3WBYPjpeGbKeZpR5bQxVPmm2xWHf2uijwB3twD2S0EzNUJg8Kycbu1Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782036394; c=relaxed/simple;
	bh=fdgQzz2Xgn605FAUJtDe8QKzwLO82OXa/wkzIMfEX7A=;
	h=To:Subject:From:Message-Id:Date; b=DCxIGoeo+xB/gSQxtvjU2n4ASpe3vmJ9/mZnzki4DUro/VCyRB7ySCFJdfCU5Vh5IzKnWw962b/jf2lRevnjbTYhlsRIjtnEBNNVO8750QdyCrZDvANm3K+MdvVblHBZvEsxiaMPJY8jtJXR8q62bGQgDhX0Uf1bGmZ1zxD/2CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkIBCJCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkIBCJCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D844AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782036393;
	bh=fdgQzz2Xgn605FAUJtDe8QKzwLO82OXa/wkzIMfEX7A=;
	h=To:Subject:From:Date:From;
	b=OkIBCJCq9mMuSna2F/PqF3ojrm868ZbhLENhRWqYu1E+vKMGUPSx2PMkA95INeeTz
	 hfGA5a9G2lwW49t4xoLeWo4EbMBoz4dm17dmxhfv+JL2C2+Vue07Z8nZ1fSQ4meK69
	 VixgczVHkrVCkmeZokubY7RPSmPVLhWpdo/HQeHQNIeQ0mc2TNkrwE405jRVl8LNkV
	 NKREiNR0j1H08A3P+0aNtwO0MuDrou47S8y4NgAY4/duyL0bEyl3TD1MFFfmO/2MUn
	 kpVzZZNsCYeALpuRkioIo1vYAx/sQPgOmWcuJAfxxY3eS4CliTD5aDe6Mv180J2BAV
	 /iPcC7F11W45w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EC6CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203639371.13942.14478871414547402382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543db25b41154a18054480a9304de579d87e7be73df964594c805b77123d01b7
Date: Sun, 21 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782036393
