Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8DA84D12
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718922023; cv=none; b=uHVlWVylOUTGZfSgRpSx5HDvYVeQw+/hvxU5RYSRfXaNmaHaOmvI6ocPftTLVZrpt3bxuklqKptxOzWiagmnXyNOg44pgjOElvK7Ik06sfX97f4Ie2OnLJZYvWdKXbyXinmFX0YL1Zl0VLxmVdz4SM+TMBlX8yAwAFT3tu6nHYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718922023; c=relaxed/simple;
	bh=TedURKJDnNCVmAXYwuIPjxIe5jIxGjr+E6oxyn7K5Dg=;
	h=To:Subject:From:Message-Id:Date; b=dyCW6Gx8knW+TmOXDLLfgGushzcid+bxGtHro4uXi+/RLFKo5lxDicQ+xsyrJ09rtc8uZ/7IAGwIf2NAclEpjh+Pw6Qq7WhrK6lSYAM1L8G6NsYdt02WgaYLjFEg3IotiEZPxhCVdzwUHRXLrCD/InIGN17Ri00m1X8ZY3mkBXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSJ2g9TN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSJ2g9TN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B6FC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718922022;
	bh=TedURKJDnNCVmAXYwuIPjxIe5jIxGjr+E6oxyn7K5Dg=;
	h=To:Subject:From:Date:From;
	b=gSJ2g9TNXhpFu+1hiQ2eUMQOdJgL5lSTeDzigVcgLpdWSVfTjQur/UnOQwm4b25hN
	 AdbUucNkqMsI9fyJTF5rWfdxg26eqLsD8XbtEBkvnY4VnWJBDOkwUivbM8a1AO/W7s
	 n+oekoZRTcET6uaBsTJ0hb3W05QkuK6tL2lESk0nJLGLV5RpORI40E1FTqiujoK4Hp
	 VRH2OAColTNjRFEb1HmzBTxdllXrCnWlONBbjSBJrbEMgEd/IX+iup1g0Ax6vVKs9G
	 Qlw5k6HtYwkYCNqcWknQY7rqtaIE6SOQb9np5W005jZ3AKrWGcdaE39kZRRzT16rEd
	 vaLfaexueli9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8A6C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892202276.26415.15978342923602422331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d91b73b353197860c5b4187c7a2db590a1e277eb406dbd4be8eebafbb01bc4
Date: Thu, 20 Jun 2024 22:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718922022
