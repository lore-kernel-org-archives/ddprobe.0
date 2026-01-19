Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034DD23B62B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768841634; cv=none; b=E7zZM2uESGZA5hj/SIQa1qQgebBGXt49dKZylGM659QqfrGJNQU40QHhP97P1sXQFT+1O2hDm9Y6P2vCjK/pe2njORLuYQ9pXZvbU08t9RMGvc5jhswk761k3rnLt554UYOkeXXRy5o/8LdDQm23vUnEH5dPOq5cvw3/XC8ijok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768841634; c=relaxed/simple;
	bh=JC0VE5kHH3UybiHdkj/8JhZ2FEn3neqSYaEEFXNIUdw=;
	h=To:Subject:From:Message-Id:Date; b=qOSRNjmmcq0Lt35/4iDveS4GOud0REHOC0CsW3P/7W1qdfNbyXk+9/RBiC/O0euwSkk8QN68CjFQvResrpUlxYNOPmoO2EZrK7JrqJwRLCakyWk2HpYYUyVQESCsx0Ngx6DiMtShdHs4mw7ZT9V8LpvHHV6EQvj/+gRcdbgheQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ix6OWT0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ix6OWT0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D6CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768841633;
	bh=JC0VE5kHH3UybiHdkj/8JhZ2FEn3neqSYaEEFXNIUdw=;
	h=To:Subject:From:Date:From;
	b=ix6OWT0F0nod1JOVPBmnwkmNhX/e7LSOj8D0Awcu/OsWYA1pTh4U/vjbQlDXJiRht
	 jaGhEiFJ8gjCHtikhe6hXw3hUSEfihVZKmpwZuVJfmtQjI8XEjC9aPXtBPx5zhMi1i
	 JnffkYaxPpPB1VdCjZ3X2vOTFELNroPBBxRkZuLddr9MP5lLu/f+ogEJQhmTkVASzS
	 fA6TO9DB4GCGMinUsiEJV52YFITeBKDVoUD/V7vrWhoRz+CRNv5z9V22kRWIOGBdFd
	 nGPGgUCN6cN2mfZgZRUiEKpOk/6m+iXGWZUkPQBoiXAIRfbJ/Ki5nRMVZQt0kwNKwl
	 A38qyZ147U48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D13D29C43
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884163361.25186.2298152944583658886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72702971b5b6d37023f9e2cedb6e79061457039ac40edc13a6d7fca56395ccfa
Date: Mon, 19 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768841633
