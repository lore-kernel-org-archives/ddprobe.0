Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6CD2512DE
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755644994; cv=none; b=hXjVgbL1AR3ES+PcZTv3yV5Y/vj4mDmeVnmzIg1dYk+Nth1FYJJO9YSAFHWz7rray+J8nnS+fPfk95TpSddpqr5hpmA9o21TerBxO4s/ihwgLQlLGzxa4dxkX+cN9L6ya2JgKB5dInW+xyq04m/n0T9yVegCX20aEKJKnWEf6zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755644994; c=relaxed/simple;
	bh=X5juqlAhRnuuAHj1a94Nki3w1Ku50Wy5kJy0dNzSE/I=;
	h=To:Subject:From:Message-Id:Date; b=BYKiR+SdQHxmThr3UGggcBcpivI3zgCESjC3W+R2LNpM4bXnQuDQ3tVZV8pSwlzpBI2GBXWQGfinXu2NKzO9OiaDesaMTsiuJNo26Dtsi95KnV6yo3GUNJrVnhfCkgx/nsXxMeXPCsLG+IweuDXCQD2aBiQCFz7ZR8n6d10negk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLwUGnyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLwUGnyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0512C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755644993;
	bh=X5juqlAhRnuuAHj1a94Nki3w1Ku50Wy5kJy0dNzSE/I=;
	h=To:Subject:From:Date:From;
	b=uLwUGnygboWdqM9yXcy+j9OUAVa11Ow+w1d1EzpS2uhTRt5sN1x30e8P6Pbw5KV96
	 dp9EcwM4NBDXqzfG1tgZhe58AekhI5QhnEXMXZ/h3lHPS4J2yew0ewTWR8G/UT40rP
	 C7mwC/O2/NL/6KyiJkxkViip7xRp4EQHWNrtS1qpED6/9t7sSMpUMuMRej6AO7AvU2
	 rrpJxUXYEQ8TOtW52DiyTkQog4Lx0fA4CKRhbipEa4in/FeXyEvAKOtzkEQV3CS9I8
	 Gf3UL74MukkeaJCwNSXRorWiALfAwEkMiYcWSDjvT5MgfgHptdPbWOga/KM+HqYxc8
	 LKVXdN+BUZvtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E10DCA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564499357.25399.17490206033136761924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9395d4b481376e6a2fbf00a693b89b5f297f64d373f8b76137f029c831e45b2d
Date: Tue, 19 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755644993
