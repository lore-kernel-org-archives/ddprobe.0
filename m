Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C8A1D89E3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745987395; cv=none; b=c2qJCGTbzo+1ck8SE5swz6qKxg1JXnJ8Mf4qiSQSvVDwFfi9n//K9dSIJL8+zaRjnAtmPm9Lmx2OVKXC8I29sF5l96NtWOKfXCVBdhkXtKh8kv9SvM6YCLCo3+gPuTMka74HIu61vUC4rSRMf3mHajBulchmnGLvo6raYBh9ziA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745987395; c=relaxed/simple;
	bh=AzYKT39dPLK0hdj13wKtqs9ockYXxh/mdfS/MHUcisY=;
	h=To:Subject:From:Message-Id:Date; b=T1JGMd3lll5P2MPSpvRJ8EPzjG6tWEnCaagxvUbqwnqx1qQBAsfcqZA3Zf1SWzK43TbDwd6PERoxmbIhY8SHpGY8+BmLqKkoKaJPOmnGRSlCeJ4x/1NcVMnLI68komAXUVxcvGeh7sVMyloDl85iewRYeqq/oIOfmH9C5+a/FsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ozc4/mnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ozc4/mnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5294C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745987393;
	bh=AzYKT39dPLK0hdj13wKtqs9ockYXxh/mdfS/MHUcisY=;
	h=To:Subject:From:Date:From;
	b=Ozc4/mnDfzUfnj7ReIUan1yxjOX4sjlKfAzaA8Q3DJjWeqRVwKulyqeiOv5EzOX4W
	 Bx06C/2U0LduzPs/JT3VB0LLytfCCNvu/jq5z3vLqVeGmThEjPacYF7QGg8OqTQOHf
	 knkWgo9Pp9k/5gdmssnpA/cmysiMiDZru0wxlaONuA3HrixGaBiR9Q6CDNNtP0mEJj
	 X0bVZNCBNDUyod8Cw3dmEIkq214JqbZwidJCL5U8+PxB/T4dQpeWfxtX29vRV2AhGM
	 QZ1abdTrMklfCM9fqkXtl0yvtg2wztKoFIFUX8RsedyltSJMWd7ezUz7diEKf7+VI0
	 uj90WdoPeLE6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95FC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598739357.19194.11884288215519094924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3cc90ad7e6000e8060e1bc64518f5c2fe8e0706736078e6e8a5b87ad55fabe
Date: Wed, 30 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745987393
