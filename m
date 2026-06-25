Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFEC0331222
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782418654; cv=none; b=iL+zYgNRmw/HP4QCFhsBQtfjcgGFKeMFDF2UAvUWqviyTnd0NMScWNgkGd0eH4XEUhWU8q2nQUIS4ei3keKQnw25omf4osojfl3tQmjDL3X0fd9/TPb3KUL63HltDLLisyXLHAiMDhH9XV4orO/Znc0k3Bt7LCho70rpq5GcEUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782418654; c=relaxed/simple;
	bh=xecTWGRvuZJNHpGPX6ROKlAkabgjPKHeR8tx7DhbpRk=;
	h=To:Subject:From:Message-Id:Date; b=Rbh3AwsFhZniAz1k/4Q0iBEVgq+26w5wCjRA5ViVWympwX/oxbl/qI4FB6AzYutg3Xr2NYFPfZ+1KK5+KbkHSUp8LC4hXzoigiARDVQsLmS7K0Y5ORZz8rRIWRniBNmgRpsDe2LAhN3Ps8ZiTrexUFS+mCDk3unvEuXoY44GAys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBxrspe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBxrspe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48EE7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782418654;
	bh=xecTWGRvuZJNHpGPX6ROKlAkabgjPKHeR8tx7DhbpRk=;
	h=To:Subject:From:Date:From;
	b=tBxrspe1Hw7dXdAlUc5lDaRrfBdJ4zFg+jn8SPF8rH4B5Wf/y6sjTSkLlXHMRd1E2
	 XAtCxhPR5d857jT6mTvWpN4bShmDRhCOb3AxBHL0TNpmfr1SDS9PuAn6x5kt8LBt40
	 +qbcEgZmNFGd0Cd/Ueafc0JAHyZQFWbDb3c9daQ5ja5+GnLcxbU8lI2Pp7Nq1+GZEJ
	 yYnWvVPJoPRm42HDaHJdfdTaZoKmk567WXdCqf6Jx+xY61i/e08ZirgzQ4BTaUkvnd
	 5tkPYzyVwuBWClOub7Yafd1Lenr4yUbyXBP2sdYN1KFHmmZVZFQSlWSs9R8HLj4kwV
	 secwMdCAHAq+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8822CDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241865383.10630.8575755442528604992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2714614a1919571e5f839107156fa3a7f82adeed509f1d04a0fe9d4a7f7eeec3
Date: Thu, 25 Jun 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782418653
