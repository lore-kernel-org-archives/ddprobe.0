Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24402274B39
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769339634; cv=none; b=f9kIm+E641Bjrh4QWl9tUPIpTuNTMbujhWBEUgx6F1lul25sRz0dqEYDVADEDmvcfwxRwPl4YBXQFNCJImogDWBuqi57z64lTVCiIktFpIHA8frVPshc75IgTc/BH7Xf4Gjh2KK0SelY0JxXJziaFwQccKB4ZmXgCr80E+xN89s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769339634; c=relaxed/simple;
	bh=GcrKtCh1xikeGx47Hm5zRVzBZRhInBFnpiKyi5RUKyk=;
	h=To:Subject:From:Message-Id:Date; b=Hcj16oEqYvu8MlVuMDkApeZBOehEbogn7kP+Pdez+wZhOjXxORVcnB0jRIrofBEG3ZxYCrGEsCN407ICA6P+wPutBQotKR/mMY7/6T4pfkBKHn89z/BiESPF6ZABd03gcrpeQbdDNyf1+v1bwdHuy8tpcf8EJfu6NdQj5Aq1oXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiH4nGsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiH4nGsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42CDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769339633;
	bh=GcrKtCh1xikeGx47Hm5zRVzBZRhInBFnpiKyi5RUKyk=;
	h=To:Subject:From:Date:From;
	b=LiH4nGsbpv5QO6X42APXB1w7QRZ/+IVtqTn8zqD50r2gyDw3vEJ93cCt4dPHJgnUi
	 mK5q4BOaFQYEi27WC5o3ctL5iXj0tPqUQtD4x+bR3/uf1b3W9snlLpuFeQ22fgZUJP
	 09Ih55IlCZTNK4uuhDG4ccfBXVxrsEZhWwH7j7bh+nabODc2mayWpeiUNZEJ4ZMlL4
	 QLSMeg6eWfEbI3GZAyGvTPvSZB0EAIWZBIg1hFDjrl4OsAsVUwMkEQBDErrZvmQ26w
	 Dd9pRpk+FdD1xjInU/3jvTSVLkZn+q2Gpztv6l5XR0kfVwbxZLxJA6buXU7xt+2/VO
	 lEP7b5XW8Br5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92095E63C9C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933963359.27000.14057652833940595499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dbd5eb959fc5218a4e18873eeb37eeeb6b3f1bd0e7813f81e194c837a626f7
Date: Sun, 25 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769339633
