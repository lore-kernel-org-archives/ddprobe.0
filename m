Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F141D5AD4
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750868994; cv=none; b=ghulixqse2F8R+hYK2I/OV/fPEI7N8I7wERnIlpfO78hcjbqcYLVUPrjqQvzrVWNCiQYA3j9FO6mcgfb0d8MQgzN1usreXmB39k93zDuvD0THnMGuleTAZRb49EzOqU2B5DnKsSyWE3/4KNpMIsfJG1H7sArkgYvaoELRsmDEm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750868994; c=relaxed/simple;
	bh=ckT0A8MG/7vg4LG2eNsNCT2/e1BGGR7/ktIeBb4iyCw=;
	h=To:Subject:From:Message-Id:Date; b=Tw+doPGueUfhOTXGe7QaEegQtkidm66avnIbeM93twLkcn2tzrtB/UFAqZ4//kJ72QjI7S/iHndL05aJgXeRGKEJO2qDZeolthPwXhnvTPH4rDeY5o2pK8zW4jTxcUx02sti+Oe8WdVMHN0hhjttio42sF75ebGD5scVF6DUCHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEDuiY9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEDuiY9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34F9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750868993;
	bh=ckT0A8MG/7vg4LG2eNsNCT2/e1BGGR7/ktIeBb4iyCw=;
	h=To:Subject:From:Date:From;
	b=mEDuiY9FhSeISeeJuMOZaWp7KIUKcl5YeNI+ztNKuluFY79pimhurUPpwOQnwpmlJ
	 mom0cRi+QsNvUY5MGHdtxyXY9fQpW5s1voqKwDkELhA7nelL3pR4zrqt+dgddl7W4t
	 pQd7XR9E8JRTTEsaHm3clDKVz8RCi60GwTdfQzOJNOVr/XKRLQcf57jL8c64n5ZJLW
	 SWr/quGSOj7Ep36arRecY7m4DYi3Cgm4D47MdPt/tqTMzOb0pWMz4m1dbNqcHf50Du
	 QHy4GNOuM5FwRMY7MWpS08uGfZrN6/rDxCAIhMJadO4wpL2SEr4YcYutUHHTgV5yq1
	 5zttLN8Z5o9Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A4C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086899357.24048.5797667701040089328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234e5ab1931a73a509b41794b1f652f3e8f27a919452f16f4b4bdaf66625aab0
Date: Wed, 25 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750868993
