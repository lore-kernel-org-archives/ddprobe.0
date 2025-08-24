Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C6019CCEC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756071594; cv=none; b=j1SSXA1MUmJ24ffZIjDdaANdwPMX3olndfb6zRoqhgbyLR637CV0FY9Y9cNPpw5Kfofpc4CRGIVXe7JCcrqa5eyZcsV/ziQBzyIf8JbAVbs2LGOfu+Ec31pdMB8EoIXViRZjk7Z/BLyaYvkAD6GM9vywueLLvbelm7igVVaST2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756071594; c=relaxed/simple;
	bh=G7JmbpAlySlWGqq0iwpYiIpLMKNa1o2Q6hru5HwDsF4=;
	h=To:Subject:From:Message-Id:Date; b=D7agWfsiiS0Kl3DMvSqaIG0i5Y5qrGhZWdGkb0vmoUrCmCDcBqsIuMZ27x0CVltGOu1jg2DIdZjiEsIakIXP8TZ77+jKNtiHkMTPMGOMlt3eA4SKbtTn5oX7LfzJlRpSMiu+4jiKk9m9CHoORSo/Q3s+JDJN9vvh6Ft5W64eMls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNXEMEJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNXEMEJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B9DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756071593;
	bh=G7JmbpAlySlWGqq0iwpYiIpLMKNa1o2Q6hru5HwDsF4=;
	h=To:Subject:From:Date:From;
	b=SNXEMEJ7cTFFIkZMztREWbwA/CFairntC+ZKYIL20oetH5gEnlAldVTpkDXdRDJBV
	 ZWfQ7PeB9GAH16tRnNyKHvSbfLPnBF5Gwv2EyLz7jsXSVWd6ZC0CYbrwheKVqPBJTP
	 k6AAPhCPednN/RUkiIred/kFYAQcfRJvSKg7F9HKvYvdI0ZEe8fG9ZkXD9lx2M/EqF
	 vr7eyu/L9S9dMdqaDZUdcGh1ishlgYlyxZ/Akp2C3OSI9uXbDfUMFGfRU30tPqN6ex
	 g6b8Y/8/T8BGzQnzH0+Cp2m102r72RCtZkI7rWXW5LqMUha5EJO78HBSqQDpo8uSB2
	 szRU+JDDe4alQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E7CA0EED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607159357.5311.12992765420235655729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04bed01e0a975d0ccb1893ac4e396a912c8cd4bfcb1150dd6586d60ec366f622
Date: Sun, 24 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756071593
