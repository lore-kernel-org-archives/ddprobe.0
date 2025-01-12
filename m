Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1BD14A614
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736722554; cv=none; b=rY0ZcGXyjUUFGEPeVGsNDjtMMXN4fYymZAYxoEFjC4cRPIQivyFBtZocyXGyrpzhsvBd2L1aTdwl5YmwuBa641IdG74t5X3qHVwvc5Snd1d3HwjJ6XPioxoVaLeNTd8gXw9W8GGgPDLGijRM9s0Y6PGJRtLJZFN+sL6JIvvQKZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736722554; c=relaxed/simple;
	bh=PEqt0dUgwSnaq2DanQx7zeROa9Aq5kIfxElbnwrid8Q=;
	h=To:Subject:From:Message-Id:Date; b=WjyGKEsjegqqVBmB+rNbRyyGypvvOk80y5fbjf/PCxf6fiTTZ7AKfOtdvDL95wsi6B8KySybo28ka96+TrlRnaq44AknfHFhDXT8IsT/klmJTByer557IE3CG8f9roTMsOJjkKcPZmfJWoGTr7xITwkf7nd9Lk7GrRD2vUhW3b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpNRWBDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpNRWBDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60D6C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736722553;
	bh=PEqt0dUgwSnaq2DanQx7zeROa9Aq5kIfxElbnwrid8Q=;
	h=To:Subject:From:Date:From;
	b=fpNRWBDtwL2CtL3c8wsFSXGFL+X3fUF4VbFevb5LnmebQuqodm6e4rm4Ttjch4Mb1
	 45LAkNHDSADke6G84Ye4oUD4+s14rQTtdO/YMp0NwSKQHYv+L4SeaCzIuv6ERRLGhD
	 XnUWEy5+X+RVfRSvA+wG4vBW5SaMeuSM+9LpMQ9V2XHSknqDZ6cZZDTRGs3Z+HV7r1
	 HiM0zz1i00RznHOEwyvluXZQTYI5qnM2xvXq29B1LQxaU5HcOgCARBoiaerWYcSa9M
	 E2DUCVb+GPEKZojW4+xtdFpfCEMUD+mxrb/uZGGHs74dbueWtZafFMXDwmT/4d7TP1
	 6X7/0Ou23DK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91317E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672255358.2626.12304570396802764208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fe140174fab24788d141ec39d09d8ad07b321201b667f9d5905d7b5a5d5027
Date: Sun, 12 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736722553
