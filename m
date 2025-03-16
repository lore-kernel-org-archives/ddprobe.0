Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4848E1991C9
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742149194; cv=none; b=QoveEcvMhB8LWgm0kr005jjAUaRQSoXmszp/9BZiT6iaTv8eq4Duqelf9JDRZaQT5fdWCROGWOw9lwFaz/toZVWUqu648F8Pc6ZNeZI/9vgFyiqGSvZupLM51lgB1hz4DfPPwEdLDgBeU8eFkTU8ZkUMzvEDLWwaE+nKreGJElY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742149194; c=relaxed/simple;
	bh=lxZzAsVzWCjFkU3Wp3z5kW3heYHhqQ2hswVJgA9njls=;
	h=To:Subject:From:Message-Id:Date; b=k5gDgNIhqOuOTlOHx2M7mWXE1OPmcnphA9hmSBEZJWd8wVRFKjf9SlfnNxOxvU10HjWOfKeP/crtaaspdJ/+Ya/ILLPWtw3yVSZ1RTftguSJxq1TLUiDePVDhX/A0J1l169dXkzb4OREwY5CMVImQUhVTbrYR7nkTj/a70bGSy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0VuxElx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0VuxElx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17F1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742149193;
	bh=lxZzAsVzWCjFkU3Wp3z5kW3heYHhqQ2hswVJgA9njls=;
	h=To:Subject:From:Date:From;
	b=d0VuxElxuCPAqvVc5FQ4IltLOTjiEvkg7zilfyiAGMo6Omj4Ys26AsY+HslPGJseS
	 f2VjZts8cjfGwwez4I+IQ+m59mLDAADVQkjtOkAU0ULq6a6e2dvm8zXxKsF3LbDM66
	 wPkgRU/u5QyfwiXpiHXy9jzSafpwWgu7tep5S9HHDy92xw+4MagNuDhzGW0OYO5q+N
	 0VUQdMIoYEjW61hNy4cVDj2OdIJcZrdk4CoQySqo4HsUsttzQEEj2VjSikZ31AqA6o
	 FyNv+7rQr+WFvP3D8hVCf68JUULSEJ+MyDQ2ju8wbESZJQ3iDuuTNHFMSCmCCmTw3i
	 Lf0/zKU167rkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DE8C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214919360.20498.18262993841758087367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf22276a0105c92f20e0e8e26b3e6b9a4a2f45b47f04ebe1b7facfa01d18a762
Date: Sun, 16 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742149193
