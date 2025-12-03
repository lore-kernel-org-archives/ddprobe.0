Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5272459F7
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764735774; cv=none; b=jBr405F5iWywzM58O2hPf6aMJz7jXi+z7gxebrWC7wgk7+rLTXtQijz/IcYYjMHbsgR1CtTT9f2HlQBl6tprrPcWFKkHldmhdNjqxlKGQaxO8b/cXa7+Ze+wLAs+gKEHFcbARN+8dWgdjOC6suJto0hOUSsyRTzkElgru7rhR0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764735774; c=relaxed/simple;
	bh=Y6EAG8rSNfijkswoonslkhmkP0X1jKP7bk3wU6GmCak=;
	h=To:Subject:From:Message-Id:Date; b=ppIBUhyPkcaxtDuESHmTQpmrOr2NaJ35iFLhclja5HEP1K7Q2pwvgrFB1WYBpG1Hc7ossNfXOFb3KWjb79+oyGqJYOWQ8+G1lrwEb66SxyJTCnNKcTKU57zGSQ0RK2bhFQoxXgKzBeMGW5tr456pRTTy3GTfTIvLC9gZC7hERW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmUNlAmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmUNlAmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02F0C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764735773;
	bh=Y6EAG8rSNfijkswoonslkhmkP0X1jKP7bk3wU6GmCak=;
	h=To:Subject:From:Date:From;
	b=CmUNlAmcALsoBlfQMbOnsrD40nz/SF8UzAXXpHf2Zq+dnwK+fK6OOJHuiUfNNLQJt
	 XC988iFHUqXCBgpUhfxe36umuKYtCeQHwWwqr4PaCCm+WiVZsJanP9eq9jFM2EL+n/
	 yvClGR+B9NsYjG3mq8YT7Z8XUgVlz6wMg9q9TSKEy4AJEJBhyP8D9pr9BdBfxB1tug
	 XHRg9YEFkcdbDk8cEllto0P3d+DJZPOSTSLVkTst7YdFK7iT+GW2lASyyKLIeaA5WL
	 aIP2DItOTJROrTSiCE+f4j30aJlb20fuyv8RACF4KCP6xv1ZKsw63oij58qvuk2sIy
	 nDS8M6wQIbhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CE3D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473577360.17178.2908153782211624253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac4b0a41d45b60b2b42935866f736829b0089d13a5a7a482420c2cbdc6b8378
Date: Wed, 03 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764735773
