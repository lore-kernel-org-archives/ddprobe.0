Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A72365
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715704343; cv=none; b=p6a8NknX6L97DLfWWPdzaghUTbLMLrR8S4Y/vmDEcpv68Tmg0DdDfibYaJUMIqzsnvZQHTT26DMj1WVYQaaHCyiOtma40eiXwInI6N68egLaj+Du2Fy0+rK9fONJMjGDPo+sVf6uEaXr0HsGi8dgroCUqBkKr4xed0qWt5HP+Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715704343; c=relaxed/simple;
	bh=lSOnX9cfKa5wZ+OjcpJB51r7nAMjIJP3vbC4OO6Flsg=;
	h=To:Subject:From:Message-Id:Date; b=dUmerNFbSFWbnnkexwhWq6Lnr7KW2M/9Y2WSpkEUtnf3Oi9iF+CXlbvHH75Qc6rxu4uBI9EOnydwxfPz+KZOljN1/bUEeNseUjl325uaBT4qzYpIYQZ1plsYRvtP3t3cdAZLdcjI/FOWbjo3pMfLVw/eSXBwkXFWi4z+2HEVLdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quCJcnwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quCJcnwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE74C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715704342;
	bh=lSOnX9cfKa5wZ+OjcpJB51r7nAMjIJP3vbC4OO6Flsg=;
	h=To:Subject:From:Date:From;
	b=quCJcnwbVPhFLR8DjCnxeZSVuMBHiGs82RbNkzRIgUGWV4J7cRW3IV6NN8oaN0bCK
	 hTNtFbqSMzjUTIiyKIFlXukZAqTwpdHsWou4CocyLLNlRIPbAc1n+03lm+NLm2wGB/
	 ucavTkXEEdocHX9MhC9V3TXHjQV6hRterUasFo/7N+HPo9LXcvd0pnh929BN5i7L1W
	 t9Ow2kiNYhwu92uGcXGJcClvZQgw+7z+lzm4avVXRullimAbKUMEgKqC7ZoXPekzig
	 +WvhsaYdzDcM0CBjJm2FpfMblH6mDEdbhR04BZhoIHNo9PSmMJK/xbn/WZI8nTgD2Z
	 YRUOAhUQhf6Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC697C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570434282.23107.1421862114244836863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caef93dcb288fae95907a1729e6bf7e3a2e169e628105c44f476baea4aa0bdeb
Date: Tue, 14 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715704342
