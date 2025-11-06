Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFF810957
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762388393; cv=none; b=Farbb+NWWvzCO3uAuI2LgVoX5QHhwtsIfREoxb2lL02MJvVscj4jXcP3fISFvg9E262mKySue0T5myDvnmJ7rnpRyi82Z54xvd0+DPD5dV3NLUfCYhAuTE5aqkKnsfvurt8nC+3zbVSmXDjPpoDXXcdMfU/Cp+DcCLYdxc5iSkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762388393; c=relaxed/simple;
	bh=zF0wAc0U/Nji+EINwcs185z/Y1O0zdJM33vONdNx/VI=;
	h=To:Subject:From:Message-Id:Date; b=fTwwMTXbaa/YoBG1nrjQbalzE7rqLece6R5eCa4IorJXjRFj3iHturJn+XQR1xpHEJJwEvuQD5cqXJUPo1qJ6JtPqjZzIgmSQt5EinvcMk0ufNasS0ed1IQqM618zo9lRLED7KCygUO/RVmishSWP5o8evHgA6gNHa/9ZIwUSQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzQlI/82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzQlI/82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2029C4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762388393;
	bh=zF0wAc0U/Nji+EINwcs185z/Y1O0zdJM33vONdNx/VI=;
	h=To:Subject:From:Date:From;
	b=qzQlI/822wZ39gsRzzpWr2xAp48gLUKjWtTN1CQ8lRYUbCN+13HZp/AoxcXoOnfPz
	 wAneKeFF6sdO9sDRSBjMZ/n3t/wZtdr/L8rkwSh59P196fhhqzU1RjG8pRQ2qhWzOn
	 tjgnQhMM8HzjuOedJd1146ssahj9htMyNSABYaGyi2ypTJHAZYH8Uj4hGIfPVl6m/W
	 xh++XLuyidVvrN1xMlkdv2N+l3i8JAHYtKEc0biLAVg0lAOQGvK1Nom+fvPezwDSJY
	 Qbsp5eEo5OoM3WRhURZi2TUqIbJxjILutteoGvACrGsdBpkYv3pTl88dE6phDaNEwd
	 nYW+9fcLLm+UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928ABCCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176238839358.16138.18421594639932384504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef5e94c6ab9653d487bcb1edee2c6a99491dc2fe93bac6dcd5f6bc44ea5da78
Date: Thu, 06 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762388393
