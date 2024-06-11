Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721631CF90
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718135303; cv=none; b=nMpn7uNf11p6SV6nHXTSRaGyvTPG4Hm1ZNePkVcxN4BybMc9nRnXiVP6OI5H5/g6f7eEbHNEMC5r5hS4Bt8chggixWaIw2FeftTOW1wfJNtPR/QcjYkOvDERABoIBOcnvHPAU8qPip2pqy3NUGcIa35/zxgEhbt+bnTDP8gr3iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718135303; c=relaxed/simple;
	bh=GVf874v16drinszQcllPx6IK1ykywWAFFu92FWc0Qc4=;
	h=To:Subject:From:Message-Id:Date; b=jCxAvEtZqdVv2Vxlq+z9e844iAMRh0y9snB/dK9Aerr3CnUq6qWiibyxCtij77TKhhQHMMxvmJqUDE94QW8OK/oF8Op0PwjRtJUObaUv76zjq5IL0VjSfxXnuRgGTKhJDZrHPXBHsrBsCDR8ua9jWVfTn0NxMXhT/e4HX3Sr6rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/j3zZ9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/j3zZ9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B08C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718135302;
	bh=GVf874v16drinszQcllPx6IK1ykywWAFFu92FWc0Qc4=;
	h=To:Subject:From:Date:From;
	b=R/j3zZ9LUxEFN04zyqOxmCyC4seZ7VggNy+lAwB1qTv0k0hfr3TAK3WIVmX386pnr
	 3a5X7eJkC5OqN3gvzFeQQYoQb52o/teuBg4BaP7BfmWtoOopg4O0+COQVJTr640wXe
	 42zMN3rS6C3aTU+CIVeorX4iHYVLT6QA0Rs5DpeqasZ7oDHB8oHHyFJQpGZvOXNmZz
	 Y1KBn3d/MpWXbPTzoKZGuWbqRG1qvctlo6dUoaIzVYUe8CTBn97+MWJ4Oar6pMsQX4
	 bRaxHh1fuFL5ll36n6JtpVzpXbISxe6u5M0EoG6G2RqDBil8faAVbXXoKRXItaziKS
	 DHxUXDoxkVkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C71C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813530281.29808.15045782707080140117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4de3768b22d0553fa8acbdc3c56423dd22d670e4229b2923eaa81e929a534f
Date: Tue, 11 Jun 2024 19:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718135302
