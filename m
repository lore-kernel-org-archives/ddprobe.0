Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4996D4F649A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788543034; cv=none; b=LNgkG8/7YJE82jCAAuWrupzOkTsIG8otr73eeljo3dJ35dzqzhtuxMQjbNnXdV8Q7QT4rO5Cb9g4U2e+xcyU3hohD9qyrk0x2FrF8rLMmzJbqC/obSJQY1hhcRlgY2L9utw6bBcykAfxO68gOy96KXKCOaxxJ0GNJd/V8blHi9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788543034; c=relaxed/simple;
	bh=HqJpoStVQRxmDx3Ei82EaxKuRRhXznQuTTyUdIrzB2s=;
	h=To:Subject:From:Message-Id:Date; b=lrSfiMd27fEFdi2NvPrjUYBSmCPLtesEHhPAfJTz6h0q4zui8Gn54sMzX+Va9vmWqHpC4TlVaCNR7+EKgBbuK0+ntXSI7iJ09/wgXeVdmt6BCgU7pAqRr96/Zx8TRhZKY30rEejun1L1odzSBTFYbHqh6oHSeCaB5L5XTSEmnEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibxwv1mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibxwv1mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CF3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788543033;
	bh=HqJpoStVQRxmDx3Ei82EaxKuRRhXznQuTTyUdIrzB2s=;
	h=To:Subject:From:Date:From;
	b=ibxwv1mUIS/IQZG7xmseaqPDkG1JHIwXwEMXnFeyV94DDh903qsZGX7Vv9s+PoUiD
	 T8U1h6DedhbqM0L0Azh/VN4WKXCquZGnv4GlV3aykoUMxHwokB9PDBzJ52SSOSxnyC
	 pQ0fZoE8Css9Hr4IIORZWVrPZpv8gmtXAKK1JSuMHt3u2uw2yEC4je4fH6/7aHYukv
	 5L1kXSh38FtHVbzjWz5Alp2FbLX/PP6oc4FViXhsnyAFjTxlRRi9JN+wbERkQcEpGO
	 rMCF+7yATDGbhIdNJN9gtRfdxvT8+elg91VEeT7j0vTrTkO9QNODiSgYmOiYDD1LWD
	 JG3984fquy6VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08EBC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854303371.28307.13351179535686422662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9181efd590d0aaab7232bf3f742fbd9aa772a5a1c423542cd7151adc3be7a3d
Date: Fri, 04 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788543033
