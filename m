Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F709283C9F
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749550194; cv=none; b=RjgDE4IQqHicADf2ZWOZIV174Va4wuLpcVX8PyMcEURCMpLI6WtVk61JVrMRa6v9AU0cEgxeEnvE0GlXfdN/k5hVt58rGOqTczDoOKfe1n0/cTsGR8juwC4fKQer0WqeeI6Fj1ScQAWy8699KJ1cv2A373qn7URp2bqL1640El8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749550194; c=relaxed/simple;
	bh=TKtL1r27xrYtDaSU12h9JMBwwlUNbO6hcVp5HWYFG9Q=;
	h=To:Subject:From:Message-Id:Date; b=s1mwqarj6yPQBKBBjeHC7ZEKjFaUshGj41Eco9pKyAzZUBxzZXtko+vhTM2z/IiYT4tBnrwnOAcMR6JQvdSjWaHWUxgtGDlqcKkN21uCesVG1Uahfe/FRTISDWS4ZPuMepvvSotBJowudkKvkEXIDmfuU/F+sf2KgfrZlBNpsY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef81eFpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef81eFpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A409BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749550193;
	bh=TKtL1r27xrYtDaSU12h9JMBwwlUNbO6hcVp5HWYFG9Q=;
	h=To:Subject:From:Date:From;
	b=ef81eFpdjGrUcyaR7p7UuH4zkalyi0NQcuaZ2tLqi4heU5XsvDb5cIgI9E4gqNgms
	 GjxgJsXC9NX4K02A6w7iT7/IQivVaB8PDJTQPR2ZS70rePWrYDK2kk39f0b1zpqI74
	 94CnIdx3E1Q3m1Al7w7Xb4SSWtIppNs22azl88WiRfWPPMJAePDEQ4idN5ZNyB+G1C
	 NLgyGKnoPZmb8WnUljXxh111HyYNN/I+QkBD2FiKS61tLliPN24/25uGxm1TLkF2Zf
	 R/VKdYnyFH58JAydnQDz3j+bPIyZFpp+13ypgYFBnRSu5SAqkIGja1CHi/wzW+AzHe
	 N05I+xilVkyMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B8C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955019358.10204.13321882222769266722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13f09c4bff22624eb7abb6425d2977e3be2e0c7e59feff260b52bc76212acbe
Date: Tue, 10 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749550193
