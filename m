Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C41286D60
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752127193; cv=none; b=tNadngp+/i+WMGo8JVcXM95+HgD4SG7wvOtrEp3rrE3cV3Wo8KzUrK0XKXlpjalDBmExXIOy2W6lcg3MadFs4Ozwu7qx7pqQ57Z27JRKJux/gY13WSQs6rpVYXdId7vdRYjJ1OS9y5d8/vvurTH2g9g8oEh9YI1AisKKPiuknhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752127193; c=relaxed/simple;
	bh=z4265aeQO4ViJR/NTLOITYJERZdNgOVqevPWdk4OM/Y=;
	h=To:Subject:From:Message-Id:Date; b=KbCGljekX8fWgwgs2R0F1gPDmLJAnfJStT/pdG05qcEs7gQWWnSLb6y8mNtuf1uFRxVD9s2FjyocYBNpmWGu+qwlLKLEnM4iUh1ixG8BeBRFncMgFdW118N0+YlFtN6I2eZfJ3e0lpba/Jc1nWybPN5BRn5I5ygTQ5MY60EQzZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMY4EaNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMY4EaNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB60C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752127193;
	bh=z4265aeQO4ViJR/NTLOITYJERZdNgOVqevPWdk4OM/Y=;
	h=To:Subject:From:Date:From;
	b=LMY4EaNds0co1AroraSJ9pWpHO07NckjYqSgtLeZvh3lGinGFaE3Dtbwvc+q6Lb2d
	 a6DV9DLtJHVDIRYeH1mXxdUfl21pCogXI8N0QfBJBabeiMxgzwz/2bCMl79Xg/ku4o
	 KbL/BYlkh7WE6hsTNll25urd8NV6uE607HdG1UW6VkSRAfthlSRnpp0VrO7oi0d7Sp
	 FR+69e8+OlDLXg2xF9a8Rm5weIB7c55LpQ5Ge7ZdaIzKXmUReyTtDE0AMbZzIIeot1
	 ctUUTFAGldSiBvrs+JhUuGQvohGNVSnsyyB3+ubW8L5YxDWepuSqlT2szDt83eeo5P
	 RTY2y8rUSEs7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAABC83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212719357.5103.6634413011478823648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5815e85ee79e97e8d3130fe4a5acbcee79ae8f39d12dbb45a25c01a793dc2d73
Date: Thu, 10 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752127193
