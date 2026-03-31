Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C0826C3B0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774935894; cv=none; b=VypWPvSykz3+j0PqSuBvERE+aG3pWWkH7pAj8GQWmuqe8OVfWIrXqE+NI0oH6H863JqTDJZrUieHXjJtJxz1hvwO5PMqqu9S4bLXukZXHRqpa+EKqPHOyYt45kxB+7UuxQBqahhpKbKiWzvfB736Blx9qCDPAkbK1/+eMiwm9gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774935894; c=relaxed/simple;
	bh=PrqGbb9Yae6VJxFpupgPSIkL/AZGgKYVdOhPCw5zgjM=;
	h=To:Subject:From:Message-Id:Date; b=lEEpaCVKnVysLdlf9UUKc+fT2GF5DRJBr1bpemF/rn+joom+nCZ0Mz1j8Xz9BgBD1RkaeWH7UBTglc3ZVPI98aejg/tl7OVZvgF4RvwP5YLudpNlY3dsySpounRarT/SYQnjyaKVJIRxRkHXoQEOkTI2xDqfYGUIhYhVZRUz4bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnEj3E4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnEj3E4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDFCC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774935893;
	bh=PrqGbb9Yae6VJxFpupgPSIkL/AZGgKYVdOhPCw5zgjM=;
	h=To:Subject:From:Date:From;
	b=cnEj3E4+qOpj1sTuWOrL7q8McPWA7WKaRLRPL7I94tHXSEn0bT/G2MS2cAiD68izR
	 f4e6OMl0l5uVLua8N3uVxI6anrwwejWdSE0n/RPUVMcNQoMjFReFtADxQyMUFmQJCD
	 uWsEx3UCRcM/aF6L+ragkgpdrXTlbyJ093jYnfzJWsICThQHTe7DaLWBDxN7ArpLK4
	 7fBwOkAOfkDnNslSZOSNRFjO74T74iCGIN2Bs6ZwknZ1DYwhf7/1n5GCXC4X2hBOoa
	 blfHKxxq+A8B3hNfQGQkxS9E3tUueMNjIfqER3La1XgPjuNgyTzvKMgwIa93ZcXmUV
	 qLaLHqQMhwkwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9334DFF60C2
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493589359.3986.14602721010035494845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7aa2c253f92861b3cf472fad06c1b61519d1c1644091c1a1978a1ba762d4a4
Date: Tue, 31 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774935893
