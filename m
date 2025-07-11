Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B912EF2A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752254994; cv=none; b=OWW4l59AOmXLrXWgB0q80EDSbD2L4TkFO79j/CRIt6pC0hKwIduIqgBBbyI0wwo9aJdKrqsVgQmlf6NyhAAtPzfBb4Hrt4qIfbnEcPh3cWLk0NA5Ks+5+CsZWR/X6IS9Escm5xHJZxFJkA2bPRulQD4TGIb31yNs8oZ9V8P6piM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752254994; c=relaxed/simple;
	bh=qWUEIEu7yZJmhXkAZ45TOUCiOVTKsmN4miJBAx24LVM=;
	h=To:Subject:From:Message-Id:Date; b=MUQmdib/tUQqwfeMesFimm4nBxHtyUM9x66L2LbGBM2UovGTqite6n69Qk4mthawp6hMlSbWRs5rg8e5uGpOsoYsSsauTgGai+ybhvp27P3QL4Q7o8eJWgY8S3ePUpzh6L7Rifl4B35n19Ua7BFA/MrN7jGwwDFQWGu0mmwIf+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT8Che0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT8Che0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752254993;
	bh=qWUEIEu7yZJmhXkAZ45TOUCiOVTKsmN4miJBAx24LVM=;
	h=To:Subject:From:Date:From;
	b=bT8Che0WMsCGQ2n+RQ+LaVWPE5JLfA2hkKwr+qmgIC5oxN57mKTvwDUiRgUUovpWi
	 YZNW7UO56mcAmTnotjv2NHyfHpxTRg6TSuWePOgdRZ0GMHikX2MkixhPP7N7GGJC3Z
	 umInSTe66EKBL/bLdmUwfn0II1rpG4+wZXeAzO46fQmVgZhxjLKPdlYLW32mYhbgeX
	 K5aIT3mbEHbr2RC+NrApssKDVRBTIDyYMsZd+WFoBenFjA8v4Vl8yHdxSCeMIgZhT9
	 zZ+bnD7NIPeI2NOZwqGuYh/tSnanKiEhx4XSFxVvVBPYdfnM+2z1/RMe2OwSSJ7GLb
	 cBmciP+8Z13Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90257C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225499358.15035.9796308020386270891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa238b8474a8e3c916b795c6fc4375fcbd704e810e03c54da4d7d265e4ac806
Date: Fri, 11 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752254993
