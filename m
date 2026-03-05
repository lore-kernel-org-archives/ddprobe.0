Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160E230E82E
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772697294; cv=none; b=uUbly1lfXeFkuvPhHuUYIbD6/MRSw/lrG4R42vIk6pHj9mWCQrDosEEpgJg4/CXeOpkmIPJQhNeY6OqO99aGVDiy/ifu7lTONraKP+23QR3o1davuTqPafCf65Y1yBUZzEo8P/BCeDSqEe4d15U54leKOE3g1sXk/1MfXs5iVPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772697294; c=relaxed/simple;
	bh=20LBeLC7mOtuMl4d9z0h+7V7DS59OfgB3JpqmiuLMCQ=;
	h=To:Subject:From:Message-Id:Date; b=pZB0rFm/++SiLh1aAiW83xcYksePBwKElFvh6rnxTiejlXDmot/TW3QxYRCJR3E+29bSZk+RhDcVa4ls5Gyn2LD+QSaCjPIf94d4R0/kdRYs3mS+EUFO5LVVfbrKtXCSVoIFWSMKO8jhzq9ckHuJ6cqGA/n7VknRCE+KerBoIH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvTrEuZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvTrEuZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772697293;
	bh=20LBeLC7mOtuMl4d9z0h+7V7DS59OfgB3JpqmiuLMCQ=;
	h=To:Subject:From:Date:From;
	b=uvTrEuZD5An4oBonDPttnYvqpuWw+rFwv8UMV6Dltbj8vcyUlqUYJyDFmOKOrOSlX
	 MfQIbxSdGBFHkPuXiYDX6GxifBHcKiz8Kh+hI23meg8Fz+dSh4mWXF2cudHx4Cf/Hy
	 z6UozuHiZzkQN+OoUL8paA/+1DxC++abR6cMtcq0aUuT7of8XvPbrsi1vnNEJHXUDG
	 VlSaaCw/S6+EEQUhb0JMLblufj5P3/alrpuFD8JaPHV4sRhSbhZ5h0cw1guhAh3/Ir
	 dvE/iqofZuxh0Z/QVqAt3eGoNQ83OC/+RWdwJ+PeptfpohHA87QtxDallWFEVcaYTp
	 tzgfOdwbtmwOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1FEEF316
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269729358.18363.16266374239471914010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b95fe151ad67d6e3130895c8261aa3d803b3cf08c412d665e0b6192d784a935
Date: Thu, 05 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772697293
