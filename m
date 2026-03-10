Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B586D34D934
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773151493; cv=none; b=j4uBDLrxmcmF96t6sQKMbA/4tkp2llOXSHDqmn9oVyCvY2u7G0LDNeQEQwqn25Voupu95orzb/o6HZ4awCsAA1lipNg+NMAc8pS2prlR8ra1l7272anr2ovOTE11997AtpLseD66H0rIlXp1E0NsJSiyjwnYnwfm/hGFdWHItqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773151493; c=relaxed/simple;
	bh=05EcztMZuNtBp2FLzyVijBBnuww89drKN0fUWKzVjOk=;
	h=To:Subject:From:Message-Id:Date; b=LCrOgoCDS6d8xk4n2XwLnPykEADDXbVMOGelhDQxW/L6StlgU8YLCC6o45J1vthouhSqKujnClK4tp7crUvA45O4iDViEG+APzCuo/bBjoPoJAMBc5SbSF4jF/JVl1ILGhtjs0OKLEsRnyOXud1RmnBIAmWbfcRQizXVyKxwHLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWIvv9Qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWIvv9Qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8C7C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773151493;
	bh=05EcztMZuNtBp2FLzyVijBBnuww89drKN0fUWKzVjOk=;
	h=To:Subject:From:Date:From;
	b=sWIvv9QyX15IoEmeQZHKkNmFRZBw3Li87LIIaj8byD7iGrvT0t7lLNa0mJSMZZL/l
	 jYCNgoY1kp5uAWf/4un915U2K4hWle8JO+zNM+1HCBLL69bpPLSNARm9MHy8tc46aY
	 bACvjK/ecteORYYzFfmeBChotLgN64aPCE+E1d8QiNMTEazlHboilpIWw9qe1r/BAw
	 Mkve82v7GNLJGzzPlXz0WFFp4luWVwQyABM65fGsjouXA98z72XIKXaY/yDrqKE6n9
	 mISKHIXHxnGqq4EXz/F2SRD9/djFcZHJTsVq00t+Aou9OyCAXZ70yF+rXgmjfZe7iU
	 01z+GK8/1rKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90213FD2D9A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315149358.6732.10593232667068054284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8ade553125178391ad3224c74280ebe64b2c74e6612782b80769b0dbfcd66f
Date: Tue, 10 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773151493
