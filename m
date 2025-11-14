Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0267F2620E4
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763131794; cv=none; b=o8gVwK6cewhWudgVuqPYkmxZX3nGQRrIHax4qrgETHPamHS2s0G1efT8MtXlcDczUa6DwFt9KwFmTS0WdV/yIugRUAqL4t7fjmMGsm7ndfY0Bpz6L7bU/60NuviHB7pT+HNLC56KTsMSHDGbI/84ZGTd2zxMch4G62n4kTQ1Hug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763131794; c=relaxed/simple;
	bh=LpYWE3qQ8Sw7vReB+4jzUf7dNvHKVAkdDQL87Q9JmVU=;
	h=To:Subject:From:Message-Id:Date; b=JPGGgXlwAgeXAFMT4CbZhcRRJfVxjDvV9oX+baLLiehuZYUmNfXQqG3DhCWeNVloF91ZInLAThyPrmkllHeTKzh3LVOX/C8VbkMUAV3U4zlEwCK8qJ/DOiogh5MFhLrI2C5GQLwt0DYeb3S4BHVQvDy7kE32kNTrXY5TiQolbVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBfIywLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBfIywLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B880C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763131793;
	bh=LpYWE3qQ8Sw7vReB+4jzUf7dNvHKVAkdDQL87Q9JmVU=;
	h=To:Subject:From:Date:From;
	b=CBfIywLloGKEbhtDqElIDw903S7stbbKwiet5kRpZWwEEDqDR4URmQ/HmonEheaJU
	 Wvh1oqoIzQ/mDIAxyENHHVx6yNY8JMulM8iO6uLXvYxt/1Zcb/pBlobsJ0gsV8/OxI
	 7/O6uV+uNwJ9a/H73tISBVlICQ6AlnAyuGrA6DpApE9rV1xKD20zQfiDtiK7jgiQJf
	 h0V7iAL6YEQylzbT5IuTWOkT2/cQg1PNZKcy+eU4LPjcW4sKWGfQToHQYp8PWSB3vD
	 0fCIpHgGxCQ5y4HNYzSUF9XquKlmrCWcIAIRuXWCNYkROn3u9s+UwM51qHwZG40t7b
	 jBs/rEMm0r4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1DCE7AEF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313179358.19554.11912117805167505149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4efbfa7cc563cef37729b548aaf1d8d7b6033c5992c5548cd558205c74b4cae
Date: Fri, 14 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763131793
