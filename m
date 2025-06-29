Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3653F42C0B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751234394; cv=none; b=mJdo1hHSGrsJDL78zyIBOlb3j3bVpsRXarmQ7+OJ2uRth1I/MiH5GCpup/nForg/mG1zA2veDUz66oZgHU01YjoxraHtQyA54hTjUrImacoyJ4NThEjoby1/ywe2qcYOz6/8/Rr1UObiptlqfqUseX6wzt6lPsqAiFOfquLTIPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751234394; c=relaxed/simple;
	bh=pAAmm1072uAu5BP1V19iYd+Cp+EGPcGThYjGOyqTjTc=;
	h=To:Subject:From:Message-Id:Date; b=pyCi7S+IcadeyEtFJnsoQ4XMVkdR1LzixTvqXCUt9tZVouTfYJQ15R2Hwvdz7FKJVwrLvxw2FoAT47qKv8/31tFrmdeR+SaIUUO+kCXSYGa4hoH6AeWgM5xnWE8s/c5OA7BDqnkmhZ5FEMBp3nNf4OGci1+rreKcaRa55A4GeRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZsKWnW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZsKWnW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A9DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751234393;
	bh=pAAmm1072uAu5BP1V19iYd+Cp+EGPcGThYjGOyqTjTc=;
	h=To:Subject:From:Date:From;
	b=AZsKWnW9FAg33RYy8fEV4A9NOaHxzRVOhzTELwAgFM9S68eeD/LhZXzYSgz+dB50s
	 m63KewNLHtFhLdZ7ZYaMf7nLhcP0zVpY2PACoWoIltOPJo6olYKbnSy1S0QwgA9JH8
	 a6W+X4Y2nDk4tiYzN7TDy4lltxyexJITexDRFdQvPA++T7iJeQB/T7e1hTxM8SSRY6
	 ulFTVhPvI3uzS/Sr3ZdMzx+Qg3YoDUp5l7ttKRcgzSZNcWHHA/6ZMV4sjsRiagGN2i
	 Dkt6DZMhWG0RN03MS1JmrU6O7Dw9g2cHpDLvWLkFrzjp2NYygWbhzpseFG7Qt4XvL1
	 vcHKxZy806kkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91443C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123439357.8531.4153897743046895469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845bf32e2f786560fe47aa8df574f80d39eef03f848d09dd0c49d81773707e38
Date: Sun, 29 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751234393
