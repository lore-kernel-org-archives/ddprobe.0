Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357D81F78E6
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754973594; cv=none; b=LyUuSpkzYMHTlSg361SI4Y63w1wDr4Tr8p5MzjriYRJZ+P93BL6GVWstRkFUwl7ZqCy2z+mdvGafXAVMv2VCkmzwkK+ta2ZF3s8NWoZD3AnsoSI/QBDU6jfAezAQV1fL1Rg12uU9fJGX6G9Xp97AHyWTMHVVJQmYtpDrkKeSBU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754973594; c=relaxed/simple;
	bh=RqSKzaQbzLzWF8DEZrj+XkIJ6c983NasoBHkIolSxt4=;
	h=To:Subject:From:Message-Id:Date; b=EsGrShhP7DIIXoJ4XuEp9VfAIz75EbPsF1W4IMy7MAybpkGN6Rpkh1YkGFG1onNEuRnCr4X6Lh/Suzs57jNWUNzJ3FG8PezPkBBMyD0tyM0iHGf88vQf44Z30SwK3+eXhcnyrDr6HCkrAsFth3PxnUUaxbsTnKypegNB0n47Kyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFSO8TWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFSO8TWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94BBC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754973593;
	bh=RqSKzaQbzLzWF8DEZrj+XkIJ6c983NasoBHkIolSxt4=;
	h=To:Subject:From:Date:From;
	b=PFSO8TWqYC0QEibMJjqGDq7oPnJQDiFHL75QCITh2isjRcFhGi3MrvQpie+Sh1Ptd
	 xj7ARvF5S4UuiOfetA6+CicQ0/DqOldE0OToZMEspomV/GxkiB5l4xtWO+9tvFXCSQ
	 +bAHHSc8gyK5XnVMi9voq3EgYNvNgYGvdXLkFMUOVlK/pNwNTaRof+VnnIgJ0L3KSz
	 FxMZdgn5goK3Y3LjqrGcDWy7GM6ImbcVB3BtToFV10t7gj9SQJdvagEKgZes0VLAgX
	 uUsISEjnonIa/gIFXb9e36LVuvEHDGZ9lkF9sOZMiJr+vionvDTJx3aRm7Cl6N1Jj3
	 DUPH9wYU1Yq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C91C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497359358.17126.14279064111473867746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ab7e7bb4609eb44ae2d760d5aa90ca4f3c39fb44870d4b341eeff1ab14c68f
Date: Tue, 12 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754973593
