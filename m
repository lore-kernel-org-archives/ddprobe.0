Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F84B3BBC1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720469183; cv=none; b=Lxya8BEfoeq8Fr1dHrUthkJTe7q4qHX7GDW7AraplSeTHDYdgq+IUF3//jV1Wdo7i+7ZqC/zWQZqelFYWVhEPDgcYBe71QF+7NrVHKV0kk5aCPcCTxPQEd+tOuUEljo449xI984gGe92e14VQYl+JqB9eYzUtf0rwJwK9IOD1yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720469183; c=relaxed/simple;
	bh=GJaCh2x97ghXBHtZp1mH0NyJU5Q+L+Kvtv+7Y2curk4=;
	h=To:Subject:From:Message-Id:Date; b=Qg/vojeggi4dXLV0TwjZtv9yNY+2VRk6L9y27c0xjq16J9dn/CHbornwu37l5HmbJ5OyXsWrUGQO26nLAYwOJAaslv79M10jiB1Ksue0vwbdZu3//GaDh9coPvZgCprQp287NcWRTCxcrfiqxPXet6Ys7tAmTKZo0PG9TFOlYQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMGPGdkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMGPGdkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE20C4AF11
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720469182;
	bh=GJaCh2x97ghXBHtZp1mH0NyJU5Q+L+Kvtv+7Y2curk4=;
	h=To:Subject:From:Date:From;
	b=GMGPGdkmp2eHASAwAmDK7eHv02momIDhWHGYx+7FVS+QQI7E7/gvq5khShxpwZOFs
	 J7b+pjzy1maV47K+pzWdSv4gT95XMZD5uWKETo3qhO4DZrVKzFWApNcJcEfvOvg2vE
	 U7giRRKlrSrx7ZRxUimP1cA9WTWC+6SNEmgM6x7pWemfQq55L/DEwAvy47dbpEP3CZ
	 nCBc9BvvSxooQIf735TYeIAVEidlX4eUbLwQsJFgWetghvEQeAEmfNc7q31lu1D8dI
	 EdUB8DLDdJlqd032qD73X0h89B6Lo8p/+g/nFFzIWAPqDrV1AOynDQeZ0tk0b/rOhq
	 Lv6gO9eW6TstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B91C3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046918278.26748.1475920594985104196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b55edc77d9144e4bb5dc528d56d4935f7053f468490a610eeb6acd405bd905
Date: Mon, 08 Jul 2024 20:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720469182
