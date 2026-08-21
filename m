Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5770D30499A
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787277034; cv=none; b=uZh6KfmDfymYnESXBkIzCTdik9IrqJC4jkXhXEVO+kxg0l2EZhVhcA5EU9ZVaxsnBYMLLKDiSuw5i7uRD5+Nl9ZPUsQEXhAhdXj6ybKNpoqrtXVvW+vWK0+logV6j0MlM5S3U4qrfXyF5zXnj+W4bZPbSMLDQ7CXVN+1oIgkfOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787277034; c=relaxed/simple;
	bh=TjwcLkdsLVCB/cD5PCoTBOL3129B9ISao8j8/z+lypk=;
	h=To:Subject:From:Message-Id:Date; b=enb+laUcB3FMqC0q2qTZecbADCZONrmTl29ecol5a1N2FIoWKqBjZkVfui4n5owGhqz0/7piLNuybPcze4MDeJS5xbSug8Tt2emCI7S1GGiJA8tqzzGLsrdn9/84xMl4JA6QQIaobxIfVsAjzQb90BPtCxUH4kqdHDPCwZiFCC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOyYjy2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOyYjy2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE32C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787277033;
	bh=TjwcLkdsLVCB/cD5PCoTBOL3129B9ISao8j8/z+lypk=;
	h=To:Subject:From:Date:From;
	b=nOyYjy2Qar7gEiXUmcq1mZ0BC38U00IaNv9U6V4Hl3I6yrPHPHjvDhRcoSHdkbM9Z
	 3hIv6FktNs0xEQsa/TNu1iTfafp/vdGWbqxWIEQf9kuFJ8b5x9Xl6p7hUx35hXcpZt
	 F//1smWUTIXi7rqzBClz4bgHIeDcC4lzsZ+/XOa42IVYIfrOPEP7l4r3Yiq9iZcnFo
	 KW3cNE+gZ/sh4AJLIaTdP/At17QOkjJLzcWFuYxseHccA38U3EMVZ3QVnysuLOOmC7
	 +q5t9UYA8kJXZz7aoSfvjqcBRkc8mbqyW/Q3RWUJP2ljlF0B9jg6mSnyO9vPhrEBDe
	 zeHrFMjoaz+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7185C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727703374.10532.17339094182089539038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1bb5ffa5957e315fd6dee64f8b61c39bde6e8d0a82161689764c45addcdfc36
Date: Fri, 21 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787277033
