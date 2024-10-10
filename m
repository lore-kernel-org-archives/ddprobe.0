Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E79EADB
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728519954; cv=none; b=d+KFTOnqN5aV86DlPWg+lmldLPX+PxwZmKmhvedEwyNY/TteF6Ufx19bxMkdT5d4iCd36TkSowDpkiiIoDGBEsqmFHsgG+Y3++kv6rPM48XXg5kKGJjCDhgGhWMmKkl46cX+CId4UNAew9G3TPLUs7sXPhtmfjb+ChhhZ6L3bZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728519954; c=relaxed/simple;
	bh=f0+Dr2cbFkx7rHKxGz5uAc/NfKbKvJXo27vpdMtS7+g=;
	h=To:Subject:From:Message-Id:Date; b=FFJPKZ3S5rTHgbMmY7Y323sjW6uras6n6c2K+TqF7G9JhUkVLP9llOg7TB+MveZ6RRKtWntIjGSkGOjPvQmoOKii4tSQ/pttHOeS096eCE4i4iZjMfY70i0z+8Z1N0L530h2nHh9Jj+zn3ayBDQS5vTas8+/49MD+OrVv6ZMcYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7wC1l+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7wC1l+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E2C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728519953;
	bh=f0+Dr2cbFkx7rHKxGz5uAc/NfKbKvJXo27vpdMtS7+g=;
	h=To:Subject:From:Date:From;
	b=L7wC1l+DaApleHs9fWEcXhU4HdR1/pXs4rNxlxjIqCYCxYPUL3rXRv6t54LOsGI1z
	 +TGt2ynkLFrB60IfUDkHf2joi/QmzaRaiGl7zKjKM/Hq5dIAw7hhXiCmlqR1xJwl+e
	 bqisdhgx9GIwzfjIcQzBV0FQGLWQF46pLJseucHZ3VN/tJo7EuuC5IALm7dKf2ak+9
	 wEDTO64p/Qwk8CmzdjJ2Pz3/633ZeKnQpLC61d1+CqboutRU2LKaTx6XYpIfplLe9I
	 20070GpGSvF16jQiEFPg7d/bNy9N/pouUdcsuj+zr+ANGLdkgc0Ex98c5BucA6FWQs
	 F30A0z587bdsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EDACED611
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172851995360.7863.12368659180241862945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3db18b30056b998c2cb91d4c4d689689eb84dc10b3bec5e890a3fede7cbbae
Date: Thu, 10 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728519953
