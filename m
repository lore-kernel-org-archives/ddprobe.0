Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413BD499F1D
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790102434; cv=none; b=QisctkzDapvf6+a9C3gflpuIwcsn5udmxqyGn+qjE9JlqMP4kTASfOya/7gI8ISB5eEltFxMPViQrIUXjq9iZQnUGNVSZITOsyCIqXAXc696pOwe1gDzL1SHzHYbKEtH0pnHHpPtAHq5ANMQMA7ve1etKEggss3WKmLJVcuHiL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790102434; c=relaxed/simple;
	bh=9Qo0MLaRMFkS3fScKPwxLsHjY+H4ZNqC58gRvl3ZxSw=;
	h=To:Subject:From:Message-Id:Date; b=H9cU/qIFuDbAQZ9Hhwo7igd5G4WouxgwOmSZTPmGP3bOXHBMjyhMJcgF1Mlw1l0TuaDmPiLVovqpF+Lqa6aliqsv+9YFFeVCYiK/gPKEx3r6pklAcUZ3PWC/jMdlGlMlN8vtTh5soHM1qU6LR9wY7EDeX2lkBXuCh0IdhI+tolE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0On9u1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0On9u1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4D3C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790102433;
	bh=9Qo0MLaRMFkS3fScKPwxLsHjY+H4ZNqC58gRvl3ZxSw=;
	h=To:Subject:From:Date:From;
	b=U0On9u1z7odngNdsBR0tjr5MTSL85Nr0hVFcyL56otcWBu95jTOUQbwIrOPDBA8I1
	 Yut1vOUhaM1mAAtJrZZIpB+H6j5Mko/rmOr0BtHoFkHx8g2EeZvWfJbijlCxijoH2m
	 DgGbnZ14MoAZQRHg/47JMdglPzcg+KTk1er0H6EPX0g1gERpHXZNOzOVlleXZ2hByw
	 tCsqUjprAmkUgM5wnGRNv0DX63+Uiubz11qBSyNx6aP/coxOxbNYoQD6NE8BJagEeS
	 UDkUlhYktVsxPXGveiriNiMZv8uBboP2n3bbYxEmza69oMRdG0iAHSOBMMr8vOhmPS
	 fsVnoa9PNlY+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9835C98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010243374.14440.5076594747459017352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9a305055e871253d8d61ba6700eef7b82543fe07905a1d5a2ab5e349542792
Date: Tue, 22 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790102433
