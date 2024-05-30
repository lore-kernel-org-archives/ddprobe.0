Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A6C17C7CE
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717076663; cv=none; b=q4mX6mzRtIvPiptas5BG8MwTNN0LaQg43koubXIeOwZhkP7Y95diWs5BZfyrn/zReGRq9JJgU7qoL7NBdkkRl5jBiJ9ZjQU/lRsVLpa9HgnU0H1U6kUb8jiWF8mjfGFKp3EixGqvkomHLTSDe5NXmSI6LPyD4qUff0kFy64HcAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717076663; c=relaxed/simple;
	bh=xN7cpKKdVf55mc+d65t/AiQqGXwz+wRXKSRn+XoV3+Q=;
	h=To:Subject:From:Message-Id:Date; b=YOvYZ5QBqU6cehI6JbFcIpxMQdQWwOMC6/3GRuBGgiZe/DRSsPSMCN15S6yAzLGHoCV4VCE1w03ybQoaTJdBKhu2yi+MFotXtg0i1fA7cQqNDFlHhYMNut4qAPE0+uVOEdAZkVdxtrH1XLFEqmjbkddUNpF3fI4QlirBK4qh72s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7X6ll9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7X6ll9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA161C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717076662;
	bh=xN7cpKKdVf55mc+d65t/AiQqGXwz+wRXKSRn+XoV3+Q=;
	h=To:Subject:From:Date:From;
	b=p7X6ll9O3Wprea9kL3fSuyM0OIETgqcBR3TVwFDXs6iqfN9SRykNIJYnkpX2LUsXV
	 z7gFX6ay8qQo4br38mOmY+Uc41HQDSFUmT30aSG7PSS2KaiC8AvVmNPWODjZCs5Vle
	 fQI+d67J0VudqJ8dQEd/UgpfJwJHDC6I+M7sJ8pf7P9dog2eJwnUa1rXJ2Cs7PdNQI
	 GOMSwldeNo7udeKnYF8OcKSFFPGfHTnB4mt8YQil5n/kcc6tTtGAmdNrGke/bClnST
	 YvT41Cxs0eJSEt3QI2CiNOfSBN65YsTzhEd2toQFX0RpBROTfRFu7Wex/Xc6gqMML3
	 avDL1jxA4iOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C398BC27C43
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707666279.10616.13911230210997846097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4063e0beb7237c5be0e7692bcf396e3b23c8686f8aaba7d78d302053ed8ac84b
Date: Thu, 30 May 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717076662
