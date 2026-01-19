Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08554339857
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768835034; cv=none; b=rH+bIVQ/0J1YgBWvuwlX5dIc3QJY4KGF5oOGjRZueLpyLoMfCaOPFy3pqyrXfcky4sA/reDTPqBaSDTC6VYn/LPPlfZvcuC+uNubhGqn2f6wwMMFQoBlVaEryIz7z4mcgy1KbiNGozeujuO9iBv9FBUzJDsvIsSBWracYSASREw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768835034; c=relaxed/simple;
	bh=xaTmvs2Id2TXEPWAVf3KBU0t3xv/gsEKyXiilGpCVN0=;
	h=To:Subject:From:Message-Id:Date; b=Hndel2HiRtuUQL0xNx+bUPwIZnCvNJyjCMJc0WMZxi5vruc46JlFQlnZNRq7kB6+wpWl9CM4ZlNf1XzhVzbNdLVuWF+GWTUjh0a9lfvOxbwXrOM1ymxZL7mTVj/FqUU9xHHrsA22zNo31T67nEc/nF9PxoPLhLG4bgaSLw7Cd6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhX/RXzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhX/RXzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44CEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768835033;
	bh=xaTmvs2Id2TXEPWAVf3KBU0t3xv/gsEKyXiilGpCVN0=;
	h=To:Subject:From:Date:From;
	b=BhX/RXzZK+Qc0PtclJjJ3rVcHZfhUY3RGA0/bLqufGPaEUbbHYMfl5z9gnZvsBexJ
	 mBNlsz/vRMz/po4RjdJM9VxsbV/QOdLjm07ChIPITZnJqys3HX3NZ5WJXHvEzEu/Cz
	 Z3HWtjC+AT37EmrwgKuRGPIY84EUO7fXNgOlO92gNjs0+MsIpNc5jSHUcPSgd7vlv2
	 bLmm9DaEjBtXNO18oCQ62gwVLLm3XuWlHDV37BqO8R71mg9OWdXkQdH4QJWUgsU/oX
	 8A2qcIEjklVgmB6cdLvZStten7NPqtX5VK9YEqwGkp7rbkx61H9lmOc/YsJnS4xHMC
	 ImThjRPpwNbWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D4D29C36
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883503359.9392.9010273806354419070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26fc18eed95fc3d19ad7310836b4b1e99eaef2754f4d6186da394741f316e89
Date: Mon, 19 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768835033
