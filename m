Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D33333EAFB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761662994; cv=none; b=g6maB70FlFt2owNEz1wagSm/TbLD7XEG72UN0kovKxsoGlXPCfKHkGR0mP5Agvx771HMjK/qlFdDbfclx/Fqo7AFvqUPYWFg34L49eAJmcfQEo8PrW9SU24wDrWe0012fTcTo0BkyAZCDMrzR5/waGlCZXKQEz+LMMfBHrjiilw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761662994; c=relaxed/simple;
	bh=DLgMt94wWOmB6C2l8eLE2JA/9eaEW9oa6W/VWDlUC68=;
	h=To:Subject:From:Message-Id:Date; b=AdS9hyDR5ItouCEfZYIp7EN43raFU4s6DM9gtGruVCbl971xLrI2PeQ8Dx1O3Kse5WHSrqXw6EATB7mcsqmfQzPfi0909iyzXg1Qzz+kRXzMSzoiwQFCERuAGB5G4nQAapCPTxclTZQ0XZXxf5imY65wEcNllpy4ntS+QObnEXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dF30HmBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dF30HmBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1086C116B1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761662993;
	bh=DLgMt94wWOmB6C2l8eLE2JA/9eaEW9oa6W/VWDlUC68=;
	h=To:Subject:From:Date:From;
	b=dF30HmBVkLqBA//rhCESl2F4fUD+eeAPw8NTgHXYIcv7iRvSVyk3H0BV/T6oY70vD
	 nbmhD7lUTNW5VrvqeMvn3CE3AE9AnKO7jNvFqD98m15B2dpEzK7gNFoTBnaEoMFTe5
	 xD3QOul+r93xct7OMMgXtDiztStyXBH08PJmSNhDSM/iCXP0OoION5rQlp9fkrdSf8
	 EiwO8H+iKkCGtu6clFrOfh8BqiC/qmEomTr+/uJg05TT3Q6cKjtgwZEw3MOb3gLMei
	 Ko/StRgldIpbI4A/IDbxevI37PpYfyapokbLsFCcsYU2UMqrRFNYBkW+NmgNtB/xOc
	 d4MA3XAcRbYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A81CCF9EE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166299359.25088.1469812655842449388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684ee5cf6b50ae0ae1e773c3e6613966a155b960ce14a0c0794026c2ad862510
Date: Tue, 28 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761662993
