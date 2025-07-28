Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19455157A55
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753685994; cv=none; b=jlxAKXgf6ejRMdX1XGGb2JMQhwusY51+kY/mMrdChIc6Bx++S84i3nGrhrtW6oTputAdNRu1qsmdMeV4lvH4NleCar9f25+jLEEn4DdPEqk1k+zfT2fZ5YjjIdJivQtAbBzW5WdFMt3R9wxE4gqTuxsZtQaBM7Sn0rVqIANYItM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753685994; c=relaxed/simple;
	bh=U9y+3zuuqy7Z9dU2JfJWOVCdLsA3szW6encVHbDw3DI=;
	h=To:Subject:From:Message-Id:Date; b=cNEGOfbO2ajvnMF5a1G3wv6lgMCSNDj3H+sUUNi0cZ20tFJLkUtF3OUacBBx+4Fpu+K4KF2aloe4NUYtvMA1lZ8bRxx94NKIJTEr703Fm7EORQlC47xK/M2eAmpalCSrN0OdsLfqnt9cZsOI3QKkvHlwmnzPi+cHZFQEEGWZe4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7UI0A7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7UI0A7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A07C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753685993;
	bh=U9y+3zuuqy7Z9dU2JfJWOVCdLsA3szW6encVHbDw3DI=;
	h=To:Subject:From:Date:From;
	b=J7UI0A7kesiUjNtS1X6py/O6hSEfnEL5SvtGdEFuCdFh7CydCAyEfttnx+SN17gpT
	 Jy11ZNHkyn/bfpKOTWN7oOOWdq5OFDKivqw/X5HvZlIUwGUuWv0VCI5KcfrotiTL9y
	 83fbyEJk2M5v0RcSLUpPX6ELQe5D+TS6GvyAnaw43/mVBZTKgEsm7Bta3a1uVdNJ3N
	 2koiVHXPpTKZx621Ex4XSwRDHoRzVZIhWdwq5lyGpHde0OkNpJ74+z9uJTFdcWMUc4
	 DxUED78FdSX/8Pzft98+l6Pv/vcfBmYd8eBRXAlBS428o6vCxLiWBWY5kmnmtXU/vw
	 12/kpiQyFGo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901BDC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368599358.13374.7311436642430494032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4f73c49e7ba20a99f8a7496377a2ce436ea022e05d2c3b1fc4a9b99db1b5a2
Date: Mon, 28 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753685993
