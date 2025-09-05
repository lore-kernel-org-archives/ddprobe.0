Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1380A2D24AB
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757055594; cv=none; b=C9Kg15CpMHSb8s2REe1WI6MqRmVDQSdMvBgMUOOCLDLN0euJvb16+QjE7r3fq3skL2QVjem1/io8w81LMdG+SUK5Hr7E6dy0vA2vlqsqgQQ+QwfeDCsquW4i5e96wV1DROhKVCmD6EgSkSihxpLOs2C5Ep7Vc3zHafcSr+94MzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757055594; c=relaxed/simple;
	bh=hliywD9glWAvLWIe2d38qI3yZIIlx9nhKPwleXea7bY=;
	h=To:Subject:From:Message-Id:Date; b=U4ywOhEVxzcC5egdSyIjhG3vGKZwcE2ryWvI7JMuTD+uqfJFJZpiIi0lrPad3Bs3+h5xG174c1US8jVes1MUltel4lCagZsUBkgN+OAoQ2hvDkfe37b1WiQo+a7EgRSQ/tKO264y1kRnWekyEf8o7nnnnzWR9TmAn8rYrCAu6b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGhtALsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGhtALsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757055593;
	bh=hliywD9glWAvLWIe2d38qI3yZIIlx9nhKPwleXea7bY=;
	h=To:Subject:From:Date:From;
	b=EGhtALsIuQk5JTvZcCFHXt8kbWfiB5vRf9Q8nbP+Q79egRWtDS1l34EmA4stH9Zdn
	 t4tXAn8+YpnsA2BUSLeioxlfu8bv9J3LRMX5dT+6Yw2/SMTJzBmSK7+rlIqrAM6cEx
	 tW4BjcA/CFX5BpfIROjdH/0ieegnO0tU9LJd7n/tTe4VWPfwrfQzOkG3TpIbCzL2D0
	 8FFl3gGaYIFG5+3sOndcELDSkAZ4Z+dwNxWWOrgPUjBhOjpjwWpRNSnpZ4GQy+LYgA
	 zWC1VkioGExpNRFUSGh6qQSUI+69p+fe5scy+kYPpKQuwrQ9/pdPoInAmgktzKUA8j
	 DkrXsMLNei6TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90628CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705559358.15494.11837309349591989771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15612a33ab7893afa6cfab429ce68ec1248dcd96380e0d2285c7cf76d6451e1e
Date: Fri, 05 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757055593
