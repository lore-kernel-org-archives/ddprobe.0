Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233D52A1B2
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752594594; cv=none; b=Jx7NJGY5tPw1WkUF848Ge9lIFAhw900B4tArWSxYg5HtbL15OkdWtLlsQ5QuRFTL9JplBPPe2j7csd1PuHIrEYSCGuW22szA5qXyy3y6OejHk+p4xipaoIpLcAj4qYclZK+NasZU5AVosSJFKlnTIp2ikj+EP5sBSq9EpJ9SuGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752594594; c=relaxed/simple;
	bh=SpH3bGYjQqtegkr+n3ZXI26ewkd+7za5g4EanNXkKb0=;
	h=To:Subject:From:Message-Id:Date; b=TsxmYR3NR9HUiTToqKm/hubvLlhv+M0DTv4eHQGt2EIt3CSDHk3Glp1/Q/lYINGAzCjyH1XsSYqlA4b8d72Z0jXHi3NVr89BdY41fze8qMiWgSVk4yO/kc9jNZ8QBUQvu5uBUEBpqFsCWfqoyXWqfjt94/Z2VV4UGTYYoDXvgdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sq6u6Ykt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sq6u6Ykt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2082C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752594593;
	bh=SpH3bGYjQqtegkr+n3ZXI26ewkd+7za5g4EanNXkKb0=;
	h=To:Subject:From:Date:From;
	b=Sq6u6YktavgUeLPEuTt2jSUARCQJVirKkgTlrXbX/ui76v3iRbjdsz6kkU76yf9Rq
	 wnzewvObANkGff3EPBFXSqUrAUIj+qFISw3v+nPUq1xTe3O97NsceylZ8EZNaOZydm
	 2KyIypC1IQTXk5G+Dr484Wty5eXEHrYPdoMopMjhvT6tP8+FO2PK86545ynrogcQyM
	 bEo1tTpCCeZBx+BPAsxaYVMPkXLemKtsCMgK1VGqiYl/8gx65fmlBYb6WqhAvrGHGz
	 ty02E5PuTF7RN6qc1BBPbtmYGyBuVDwnCtAOp4lV33PUsH5YCcUHwlLHwvGD4sULkv
	 6Mb7O+kDHaiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C2C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259459358.11240.12044914088983357699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c58d2e7f7a7f22e9c069738789feca5a9b56540374946b7413cdd5eba88c45
Date: Tue, 15 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752594593
