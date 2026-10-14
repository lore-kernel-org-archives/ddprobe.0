Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482AE4772BF
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792015834; cv=none; b=mEF6AeJdDUmxaySy6ivJH+1uXnycl0ZR4K/OrISmbHt1AGEL0NF7G3INnguBDWV8bt2vbAEAOBV2OXHYNaWAmfWUnLq4skncWbRVFVNk+WxxUAteQCMIInY29f5Q4jeZa/9ZjErWUcn/YOlO4YmWW/o45qnEnkI9HhbfiWcuZCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792015834; c=relaxed/simple;
	bh=gkp+sb9j0xWcVxk0dSPLAUIhDrm+lxEbDEKDTgEECoY=;
	h=To:Subject:From:Message-Id:Date; b=cPMrpD/giCfKJFgo1928uuB6GnpR6LakWw5PL627r5DzXwMcOxyPgBCQOfS4XgYYieS5rzm72J0Vau1950/npjdbB/u5OHO6x1MgUk3AYrok1maH1go4X8TGymBZt9uvEo9/P8q4N9dx69saxtb06SQcI8XXpii7Qq1d5vm4Ooo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8kK1irf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8kK1irf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8785C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792015833;
	bh=gkp+sb9j0xWcVxk0dSPLAUIhDrm+lxEbDEKDTgEECoY=;
	h=To:Subject:From:Date:From;
	b=P8kK1irfXV1duDKAYrXB0XW1Wwl5AsnnysE4tbzUlj68F71Lk2hXS9de7mVN+zgPQ
	 o7zSGDN1IYC/PnrdgkltLEOLqWiqtW6M/Ynw4dJp9CIHLn+/wrqZ91XO/fQZygUkaV
	 5kBOQdCyhOx1mRf9FDBuvqgURjFqpjoPPHRiQc/KIilimsXi8uAvtrYkjmXGlxLJeu
	 scdX0yrL7uRYD3+0nL3tbMCNAwoBP4NO0K1GJysFpArmEFe8nN+CYDeU/MKgd3WaPP
	 5rO/dFLjkf8dHEDY7IJjk5BDdL3/b8FXml3gX6LL3WRsahnla/6F5KtSrLfVbh9FeY
	 IZ+1HcRiTvR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13C5CC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201583373.27749.11451122072696985248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2df0adc480c15e0bf926cc6097891b5a05651250d2eb8d4cfcfe24d8f70bc0
Date: Wed, 14 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792015833
