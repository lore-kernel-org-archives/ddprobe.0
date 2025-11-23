Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387F119DFA2
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763902914; cv=none; b=QzdHduQu2iZHsmuwqJWqfryHtsZlm4mkeyaqZr7y4jdhwPZXlxHbZ60QsOvyzftKHKpSiwQkve02krFGgnulHyMKvvZi8XptNmHGR/6bfZjtgh3fgOvcvg7FuKkiIam/j8i2Tr1A3TLIey7JhvQO1ew9vh+La5Pyo9fhvJAuJWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763902914; c=relaxed/simple;
	bh=FfdD+81pJRTYdnK01G7NO1MvoBDWBuRS3ul4jtv0+nM=;
	h=To:Subject:From:Message-Id:Date; b=owNDlbN3MkSGPHcjMGw8YrnP1j97saT9JDcW2z6qufw2bBhlvccAdPNteXj71ecb1W0yhcyM2RGbvUlV2pKwhnh89vhr4D858+tziVMc/rJaUHAueHZIc3nQAfQttUKsdF+tZjmIFXzW2loFkoQibbUrrR+lcRqIDRWSuToM1j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBtt7PyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBtt7PyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB9FC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763902913;
	bh=FfdD+81pJRTYdnK01G7NO1MvoBDWBuRS3ul4jtv0+nM=;
	h=To:Subject:From:Date:From;
	b=oBtt7PyPoTSAJLCH0vJngiDUazx9iF+IyMYCWUGIRaVpFXVmtUVbdSwfmc40Y+VgH
	 FpvIQmErb/KbQeU93ksMYtCK8K9c8f5IdWKJCXXfBjwKq6O3FuAIljLBBYbgmfrd/+
	 dmK2+l9EOGVZBBGJJWn/8e7h+SnUYYWrbFZliMvHo8lt+6YnfvtvM7Ky8mM9EKOyos
	 0NjQuAFUrQUq7WPJ+K2s9mtenxt7ia4XqcExo07YdnCHe0obw3CyAt33/LQ5XQ9Ejf
	 FOHnWk3Q2c+mXTTvDHQYqOuu8DrmAAwYRASALjoPVb3Jt9X/8wW1oRxDDc41ytPwGv
	 8YQyepetmwqcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97604CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 13:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390291360.11272.5317593875455642416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adb867be14d20fa6fdd8f8c48c7785c2b31b2d35c20cdc4a2192152a26628f07
Date: Sun, 23 Nov 2025 13:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763902913
