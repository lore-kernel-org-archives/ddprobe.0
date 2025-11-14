Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DB82D47FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763151594; cv=none; b=EIsaybsW0cmjrWU33DXO2Kct/WIzkRJpwrzcOPDSP3DXvpwTIpBld74HvTdwy+p/omH9YloIQTxTQboEkXzeuy/ybsMRtqzhUuOP4dJBN5oBDWYo4iOmF/DbSUCdk3BisUXI7ogBfU6+JK3eR5rLQ/2DbbK4DxbBae++E3peDsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763151594; c=relaxed/simple;
	bh=jx4fQARMMPrB5LJHKX9XdBbapu4xXyJJi2kxiABzHas=;
	h=To:Subject:From:Message-Id:Date; b=CBK7mmu+NTYX1+oIwo9v1yHjqm7y5B9tzZnRO36z+Cs9XWpL6+QAS63llM0yo3nRkOLK7qyI7Hx8MJ4+EawagaA68DJZ85OjxvvQoYvwLyOa0902R5GGRYoAXoRgBnmW2VNDXCjMaTXXDcnfBrNfLWJOFyOdhv9Gn6U5BdHcVz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLmc1sUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLmc1sUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3B1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763151593;
	bh=jx4fQARMMPrB5LJHKX9XdBbapu4xXyJJi2kxiABzHas=;
	h=To:Subject:From:Date:From;
	b=uLmc1sUwA0eUFuSfl7AMlAKIiy/iHNkuEH2zGz/A46vDmQz+kxkPsHUvDGpq7Ex36
	 Lj6JCCugzpeZIpn8xVkSpp8wMc/7ESKmU3qPz6zHrA4vtZjydbRT6yjzIIXZ7nYN9y
	 OIxk06VFopwT4uDPpT8o0ypDEUCeU+IEKLJ7bUqDwDjH2Q/YBK3+GEl1AMLkSxFSm1
	 mfscdZXWNHs/5ZK1l18hU/tm/rYoHtrGS08ev2XycE5AgZau2nFiBf9fMiv1Qw7pME
	 CJ/G45bqwIWipVfSn8KC2ZIx8wC5CuEeh1i4rXjrQU6ubuHFF/eZcwPeDlAXtl5PJ4
	 Aq4+0GIfIP5rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8CCE8D76
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315159358.7630.4601045299461781883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e205419a3ebd4d3de1e18726fed8ec6ee163443b5a46103c393985625b33593
Date: Fri, 14 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763151593
