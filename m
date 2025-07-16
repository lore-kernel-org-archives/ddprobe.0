Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486E0248878
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752650994; cv=none; b=fSuNmqsWUBAwsl2x4GjijZfYt11cIgdyZswF9eQT7HLLhhTcdX+pARYXHIqdC2qnLHeDfyzcJN3uv71pPE+/FW72NzB+AX/jBmXSV7Y/TCAuJ5WfYTZZrrtqPDTwrEYgjUeRjbBJAC6vt9BXebht5MkFU8yZ0DjkvSwTOmyqRsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752650994; c=relaxed/simple;
	bh=SKu2Rj4lKtSJ+gjVdjwrYsuXGZ+5vU//A2Ml1wrcAPE=;
	h=To:Subject:From:Message-Id:Date; b=CwwYkE2wMMgXzR3gIl9d6K8CKcUTt3rAOoySYYzPtOdLtzMz9/bBsCqE/xU0KmKFB8ysVpXPm+cEZtO+g4sia0UFm7ZnxY6L9zl+XxqYWrWgf6+HLGzeok4RX1HI6O5xItPreh0evVwYlmdjzdhuVxUiquJhg6B+dUeF8H7rdQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8T17VMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8T17VMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF376C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752650993;
	bh=SKu2Rj4lKtSJ+gjVdjwrYsuXGZ+5vU//A2Ml1wrcAPE=;
	h=To:Subject:From:Date:From;
	b=I8T17VMAFGXTO2tdCU4FRnSI83bEbz8b64R0FPZ9c7+m32jDBVHFlQseecTlLccs3
	 jlKLNs6aN70/uV7BoA0006NrXDrCba/XpnOnynprz7hAgUWl7JW/UI3g6O2pgg0xJc
	 WIwpq5uNL0qv/Ku+riwYiq/9gsLkJnAQy2QNneUkhQSK4Zj2N93inhx2whEyD8ZlBM
	 wyEoQlTgwNtXOKqSvPUCie8OjaGPjQE4/cDIiB96viArKlH4FpwV0RIwMtIAhkuBel
	 u3vCHtmwWK+eXsVhJ0CtwsL7s83tjbgnKhKJPUgh5a5IbD0I8cD2zD8AV7NWCo0hJ8
	 TSKFVFGIBv/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A80C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265099360.25994.17468853047782567813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97c948cf8b7e77789b4f6dde3156d3e9fe356756b11fa447db61dba1c6babf5
Date: Wed, 16 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752650993
