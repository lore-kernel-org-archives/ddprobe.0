Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4060B1096F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764195774; cv=none; b=AYdRS995Gvbi3O5IA0DxkVZiY5031mmmuQttB/ptPWvuxm07jEshFkxRstAUunTXYeNiXP7HUSq3SatuzZvoECHadLeSuQfiagH5U/NUro+r78xEt2rmLz8wBpxhUR2bH5ktpVAr8A6NuZACmomdQqB7qBWaNvuLzNCbpD7aofw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764195774; c=relaxed/simple;
	bh=51qOtjrcJo3rg0Ky9Rn0e9vja+81JisIgFImJlU3hx8=;
	h=To:Subject:From:Message-Id:Date; b=uhYp4pP+FCrZygKE0Yi/qrGcadYA33kemgENbXL/DTyrdUO2Ps9PqKox2Bg2rVSCWcEHM7WwvDwMVcSaHJHNWuCvZbNXlwFq8OJogtmDx/9q6Rl6fjmYU1yOtb534CPOlc3BM4YiQ8uVW7B3RD2U0kGnh8Thdq+inUhSzYnoSoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx27kOBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx27kOBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED71C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764195773;
	bh=51qOtjrcJo3rg0Ky9Rn0e9vja+81JisIgFImJlU3hx8=;
	h=To:Subject:From:Date:From;
	b=kx27kOBsLKpmd3ILLe/W4PmC0oqhhb4GTTcGbX4GLViuVqyGCdMMeCWELB2Vrh7fb
	 AK9YdGFxbpmncrm/MExWAy3GAsXcQAks8g3Tnk5KiAdeSgFJMGCNyPX3yuOT0zWYPE
	 SBaQCFUvKsBIRS4568MJC6RRXnbR84+kNYgsD62sKx4jU0P1s0eGQKUPKzOdHxOT3v
	 S1UWersli20WKSHsXQZnZ8+hTJd+9EjNoZbU6tONSKSmUlIeCwPsK6Egvsyt61HWCJ
	 YwQ9cmI58lmeH8LQLE6EC3E8Ye6BprfshTyV2kPDVC+e12rOhDG5EtVVTGBFu8/AgX
	 e01Wd650CO0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C10CD111B3
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419577360.5751.3675219283110485990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e740bc5e3e1b212a202f89423325293be4853ae42265830dddf91ed3fa77e7b6
Date: Wed, 26 Nov 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764195773
