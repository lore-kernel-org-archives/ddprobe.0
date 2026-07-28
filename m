Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3E123E33D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785247234; cv=none; b=kNH4YI8P4gSvUasFHOywRKVN11XTtY8ttHq5QJas3/IxyfVubcoJHFAZJGI9ojue9GaUXwdJrvkfbA5lOEEGnHMrNaJgsOKouDDIP8xXENNM4h1KxhYOT2R5XbgjsLoHCMUZlgesHPUyfWQTjX65DiiIehF20nVN1yLTEx3YUPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785247234; c=relaxed/simple;
	bh=/OfYq7GJE+fbkx8PqLnPF7+f50Py+sOhSZc2q0613PU=;
	h=To:Subject:From:Message-Id:Date; b=ECK+KvbJhgM4BLnKYR0kJDmzxL7rH4Fdf1jsT77ELEyJN93vO0H5R8VUFwQC0bwnTPK5etN353DmZzZLlsBejJtBgTdyyU+JPN5J2O17v16oDJmwg1st4AFblu3Q/XlsZeD7RE/Gg2o1BbNHHf6gFc+c7lptfx90y6iuStm3pBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWtYoL4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWtYoL4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF787C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785247233;
	bh=/OfYq7GJE+fbkx8PqLnPF7+f50Py+sOhSZc2q0613PU=;
	h=To:Subject:From:Date:From;
	b=oWtYoL4KG8FhZNLOxiUXfPTJlDhm9gYo2IEyXT4z/SjaWgHIx6Wj6ixqysjxU6XEE
	 PwH6i9qERVQmATVyazEaRNCOIAlR5Ig5vw10Oh2T3OOKjrJ42pY0GZkT5Dukx4VhiK
	 Nl3gkzATMxRbBd983IrYnRydLLAKqsdqL8PbIbJkI7RNObxq20hODslZhx03u6jAhK
	 BztY5ewfrS3YVi7pCfSRpA3ND4styuRWWdU4uUbfDlibXaQsou0CNqNuzwrcU2qwSX
	 kCLlsigD5O1MOiga8p0/s/tkBQyzg2DtFVpwSY3Am8yQ28o8SBSNiyKm0Uvd3eIsV1
	 ycBMoiXkdwAFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBAC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524723368.9135.15037660686310376841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e226ad87959c177a8760176bfd3d057e65a20e8b9b20f3010685cbe800d86024
Date: Tue, 28 Jul 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785247233
