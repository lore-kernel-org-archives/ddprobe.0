Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4614B27CCE0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783280314; cv=none; b=Uw+fXSY15xzHkjUsOi90+jmqoWHc69vDXCq4fyTNYicY0IvJMI2YU+V9rr9KoyRbR9pugRqTWfsyB1gwkD/kaXPEr9jxWT+n3gI6Jwkce59Ju0/lmhHFeX2py09Zu/VKMRRLfg0G+gwRLwJJ2zAdyekclO3MEGalOJPDsKpkX8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783280314; c=relaxed/simple;
	bh=IgfVwslG99Z0hOrQpeZD8na7VcxNdzKhPinE/fNG7WE=;
	h=To:Subject:From:Message-Id:Date; b=iEYhvEMvpAq/2n2c2CK7D6chXV3BuuiaK8e8vMpFWxz3HaVll1iwg/3LTfzYHqQt4FsvaFxSmOQtQXhp9bjYWKTVDMZ9fSKiBHaqS6IdtbAeUdbbQs1sC3f7e53mTdBP6y+6yAAkEAc0qks4r+1s4orVHepUAD8BBUAi7toZ0XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koSWK/0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koSWK/0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D228EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783280313;
	bh=IgfVwslG99Z0hOrQpeZD8na7VcxNdzKhPinE/fNG7WE=;
	h=To:Subject:From:Date:From;
	b=koSWK/0ap8dMXDhVU+7jsQD2+dgJHNfK2dv+8RiVSR8hNVSNZDM9dJdBaowZ1IxYv
	 DQ91c4y2lmD1/XFWbB7jDHvMaLwuYj5iaPGVn/iM6LjGu4HrgEtKJp/C53A5q3FZT8
	 IxIcmuiXlp3ey/3nnzFGAe74R+Ji/KPCJAL4Ci3Pv+CxSrJqRp2lyHMFgTlzAmVRWX
	 4KFo85wnWgF1w3fAZA8dR7hbatb/jd7wTFQ5DLCNMHup1IQO1wGfv4wNEJ+9vXtHou
	 1FcYEb4NzgI8YHPPjYBkdb7TOgFLPtgTN45hOBoZ2xfeAqPXggeudXq4Tp6ldC+fFq
	 fs1IUrwN8wHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD76AC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328031368.14666.7508972391150323993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f25a719d0000441f864bcc9ddfaeb7d42ab76126aec5c1b80c8de05d912a3a5
Date: Sun, 05 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783280313
