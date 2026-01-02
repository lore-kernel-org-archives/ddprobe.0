Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF8442A96
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767317034; cv=none; b=WwEbvAUTZ5sKTGwnr3KR/LG+2bCywJJIW/gSu1YfJO0J4qnYPpMBVXT7CbD1FgjEMWzrYj1kJzuFubQuBqC/25g7f21uLK6SjEfhpoebet0fC1FQm8CUNR6nReUbBq5302T4FG7kbfpoh0gbqOmoIfy5TC9QaCU9pEA3oEVYk+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767317034; c=relaxed/simple;
	bh=t9+L1a9unykhfdwxz0Lb44QKrAG9mkWrdrpqdpGXslw=;
	h=To:Subject:From:Message-Id:Date; b=QpG0/eBdX9ovKb80qu91OkNfMJDySjmYAcV/xbvF+3B2mtfz93bYjSsIJfWollqItOkq1YT7AYtjIZKl+GlfZcDp9n/+ivbBxvYT3SjLXUumdwDi7JEhSUQ4QhBWXmq9TYKrcr8EGq/6c9i1URC7i7yzeCqyVaFjayPWpSt3wb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN/ByA4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN/ByA4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767317033;
	bh=t9+L1a9unykhfdwxz0Lb44QKrAG9mkWrdrpqdpGXslw=;
	h=To:Subject:From:Date:From;
	b=CN/ByA4CkChHYokF5VyYxJfDD8uhnk9QETj6QaJYfrVag139t9Z06WivCKusV1gpb
	 HEEdNKotZOU+fCHVvQQKB8ySbDYEjrDJF3R3vzyYYb6xJxN7KJiCeKUVyWZVpv1iqd
	 1KDhmjaUp92WnTlnC/5roIsoHR1LXxVN770eyvv10tFOXXW8J1ZkyfuAKtpCaudqc3
	 NYpey790NcU0q2I/jUVnFJ5k28mY7pp69191LbWPyf+drmZxjc2z0/xzTqr8Z5pkP6
	 xg0HVdgUI3hTiGXDz9gjpV8GOxAHAcN6jv04xqFchc1LkWYd5FHZVgMxwQ/zkUrytQ
	 7yK8UMMsB67ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CBFA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731703358.21504.14007148857503694262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4e9e8f6e01be87dec34a7d1294edb3f11e556510951e459b32b7310abb3d3c
Date: Fri, 02 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767317033
