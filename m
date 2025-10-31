Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2BA2EAD16
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761926394; cv=none; b=jqUkB8HxMmxY6UK1h6B6arYuV5pMX4rRDN5jtatZMoZbLcNskGWQu0LNJUNMmVF7GgxcxEH1Jdd7OTb7zdrAWxoJ4wcQd7xJlMdIRLLL7A8e8ChqJ9MscvjZ3m28f24Icpy9yH6rk6vfwegax2rDGcKNm10JtYqS5ypUCwjPck4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761926394; c=relaxed/simple;
	bh=1e4Yhoas53lATpYyFsSDmrv/EZ6ECcCFUXkP3dnDeUs=;
	h=To:Subject:From:Message-Id:Date; b=gG2Kf5xThkgU4CTfU2XCUc1qPYMJW82Y0h6d5qJ8DNoi3EDoaKyF8lSdMM5zKSuxolGRhHqM+b9khZFnrqR3G1wQhSjw3brLUtxCbOZLDzGMkv6nkzazXUBqCISJ70dR9V9UfsGVq5OAl7ydkzAZTIyOfxqIQiMSI+6KZD2Yz2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B66i+JuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B66i+JuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1480C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761926393;
	bh=1e4Yhoas53lATpYyFsSDmrv/EZ6ECcCFUXkP3dnDeUs=;
	h=To:Subject:From:Date:From;
	b=B66i+JuSf3stYVDdlrvIbWzPlp6RCSsbCcK98mxRuyGD5xkOMnT9ca0DacsqiPrZ0
	 BqvP2goWCl/mx2VioaV8yImPw5JYjyLU/22cFlG/guHflFeNC19NhQD7EFmPewAQKH
	 fQnVfpCUeAtNu07uRO7W5wW4qb2QMeCEnuj+9jt+wPzBM3z6OwpuOAE/sqHOIN6W5u
	 +diTI4FJoBLyrK+AiBDgs/R10qEgZDHaVs9mmkZmY4iOSWDPx/G8Lkc60Uo4fmKb6p
	 89y5xdwBRZi3uXi7sMiV6aWY0fz88mGwiboxsENLrEnOrazD0rHgEi873hcjGmjkF4
	 iI08iPMPNZVCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F724CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192639357.8746.2044040987185843616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf96a59ddbb6c72d9d5d4a29e0f36c433dace62f72987a2aae0d2b19cbac4abb
Date: Fri, 31 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761926393
