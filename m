Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9D23537C0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779432754; cv=none; b=F8VXCvfZVj/yDZG5g5FOumPB7RdCSIhnlsYJyBTpsNrB3CP4GQRT08KGT+RpK8vLZ476lyA3tJFoRARDD7v8CFVIgrtNPeeOMGlmavhthfMpVJqg/zhCDXZpQMLEpQ3TJEHtY5IFn1GU6VRw3RNKuyoJkD6x07oS1VzFvPMMmiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779432754; c=relaxed/simple;
	bh=RAX2kqcfjlx8zzouIeAiEeC0R9e1QbL5REpKQqhbncU=;
	h=To:Subject:From:Message-Id:Date; b=J7VwUZBpIsAdcW0MYkUwikiEUHNI7LcD8+S3MoW+NuULY0qHk4Oz++URn+qAwyw8ok5nDFFeyKD1MpYlH+likEHwdRc863WU6EQYeg1X7PEDK4aH3WNviTlTGwUu33JMxcGsE49xfneKB/obvTk5Mlq1Qb47E4Za86JtNudvRQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA/TkiX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA/TkiX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C080CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779432753;
	bh=RAX2kqcfjlx8zzouIeAiEeC0R9e1QbL5REpKQqhbncU=;
	h=To:Subject:From:Date:From;
	b=LA/TkiX2VJP+IwwFYM1jS6oEO5M35xs2/L4ASqnTopZlGBEQkFoustmtmV92E0wlB
	 dw3ZU13Bsyawv/UpccbtyGncnLd2zOTGiXOPPsdqu1zQLT2jMD0XyI5rOA6NpRCqfE
	 Y/IYmhm04rjJwsIkjK4aQd57vxnUKHAPoipf8Cu3+ZFgzglcyf6S//QhdMk6yhs9jx
	 33ax/EhWxvYQ0hU2gkZVeYbHq70g6RCktzl5RgXH9humBWyjHcEpK44I4FwsO2ebeR
	 Iyehz8d1OswWFA6+DDVs079l9nEDGIqaKT2DWGQB4JaxGcNdxawtceeUfMACdJm/yD
	 346pnrYqLl+rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F71CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943275368.14586.11392484875448733411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c8f42e0cc2b5b3a8369cc7a310a0a27edc59f6dc594d211331b99209147f261
Date: Fri, 22 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779432753
