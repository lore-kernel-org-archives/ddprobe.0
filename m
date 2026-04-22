Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285D130E858
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776841654; cv=none; b=klDDQlxxDG9pS+Y4oFo5g1Mn+GXS8SzPy1Mkf5jf7TKb2RKgzyVNqq/PILpNJlmyYBRJDjwWgCiCKfPO+G0ZDa+28465T2XmGN9RKOnUVu2TxPUrzyJLkiY3JM27SGnebY8/vYOxayDgHOSJ9+13GPx/gHSeuJRfjlWzI4NON2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776841654; c=relaxed/simple;
	bh=foSO99y5PZoaIrlez8I9SEz9q2eDflzdrrPygjl9EPY=;
	h=To:Subject:From:Message-Id:Date; b=DXGDIkvxHuCL2Gkv+dPjATwze2IQlgx4Jd0a2ayGuQ8bfIh5vkASTOPFxFNpCCZwr69hL0FYSod0CFWlTEOOfRrGxizwlitxqJhipNHdFLwXLgsV35KnI0rPyelqv9KEn+y9qCTEtcHEloI6mD7nBfaM7kOyNtdhYzvt5IR672Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYaGZMlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYaGZMlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5EDC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776841653;
	bh=foSO99y5PZoaIrlez8I9SEz9q2eDflzdrrPygjl9EPY=;
	h=To:Subject:From:Date:From;
	b=MYaGZMlR1k7zKRNoxiIx67bEJDo+VymsZdOt/Olbm680hJt5H/+6r6Qyx8QXvT34b
	 HOe92PWj01bCa/u+g51S9VMUmqI5WDOy+RMGbHQjmvj6x2AOICOvXIu/TCg3KtFkVM
	 lRX9UqmgwsbdMqoAs9GF9pNpZYOslmlAFtCDe+G1lSa9H/W487BkKm8NrdiT3+PNM4
	 BoIifk5WNIwIkA+yxH0EcRvH90Co9lft5ETlKJq6MmR8kMLRicCw/+1HkchJU3VCus
	 SPgpydef5oPEX69crtnVhHZWVXnDLv+XOQTANc8VkQdKYjFnehnhXV/QYbs+NChjVN
	 BcfC8zq7wLxeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA338F94CD9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684165375.24831.6175071681427200527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04bbaf385366fa88378b129da3a02eb47d446c31a432d73c4112404eb31b8a0b
Date: Wed, 22 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776841653
