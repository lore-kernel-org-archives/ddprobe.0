Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C517144D0E
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714129943; cv=none; b=LfHJiHRB853l6mJHgL1B1VzKgzEK75kc7VfscWFVQ06qeBxuD6s/T+nHZ+lm/VXPAqLFtTpyYcHQ8dBNP4hSJmpmK7/XwKf4dLeGp77X6jld8v+lYzsOyIE7ARUJcy2bRX+LhJMb4aqDAY09lfFX3qmj+H+nDVkOGFLU8pH5JbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714129943; c=relaxed/simple;
	bh=QwW31dbcvARjCp4TmmERvZLD/UC+/LkMNlzunh0Q2nY=;
	h=To:Subject:From:Message-Id:Date; b=Ix6AUw3BGwOzaLqrmswST9h2HRiwdkMChOzmQ6ftx4E30RfKe5KptdmrIPLe4ToBjFC77KUcThuRpl2JOxxaY8Ycg0GSj67YvHt1QcSfPoa6dLOXKST1HeirHHpK5YcI6pKgIQuGlmcfpQoNeSWK4JpBZZWC9a6JfTPj2fvYp74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/Eq5SMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/Eq5SMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B4AC113CE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714129942;
	bh=QwW31dbcvARjCp4TmmERvZLD/UC+/LkMNlzunh0Q2nY=;
	h=To:Subject:From:Date:From;
	b=W/Eq5SMDKKYVTnxRbK1nfghbDuMxkat+ISkDnLgHKrMy4kx1GpUcLF4PnskJU9Mzw
	 V9kkK+xl5GZoZiEXzWOaqBp8UQEySF4LCneBM23xb21mYe1Dje3HGSC2DsFAE9Msqa
	 ygcoRljN93be7sjwgR3doIQj0SN2oYWGevRMrWRg95MHvqBwde6IROOBnqsg/8jdMV
	 +fpNi9QShR+r6pk15g1mpBTuyaorAZ3vI6FvaheAPk6vP87/JIcS0dCb5INk3Zvyg2
	 M0MPnS4qrfqPEmmUkmgMr/TCY04BcMTzbk4WBVOytNxOb5cE2DyOFVfM1Ed8/roF0z
	 zesYDgiVgw4gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B26C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412994278.10766.13566258152199759057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c401f93db65d0513380c29e2e0c08e1874c8b7cf4714e15f8d653900a8e351ed
Date: Fri, 26 Apr 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714129942
