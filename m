Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED08242D9A
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751860194; cv=none; b=N+xshOCkjIeQugtdXwmKZUkaoUY3tHRN/HK/W77RnxGppAWjsV9aV8vQP00g8RYZ2fulAeQvFiLEflkZGwgUE+faGDMwLP5JnYmsh38AuKJAQerfgesrMkjEm+eACX7QyhLhHOH6F5iUsXY7e2StxxTX7351ODvNm54AGKpLPNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751860194; c=relaxed/simple;
	bh=ghG2ISu7PYuT5LSMoQ4QvHXrord2zw0WP+OBywsXbzs=;
	h=To:Subject:From:Message-Id:Date; b=kbzxP88bTooBr5KPaJfxx9JhNtqs1UyGEXL4fAj7UTYMmbIJsRaW8HDHLLWNSvHzvq/2gZOIFIiOkL5MY4c+tVyl7kyZv7HvxJN9BN73c6Pdw3kfnqUW6tO3kJ+FsigURkurb6Z60zQFMAJSw6H8XUaC0UjiAZ7a9e7ZDx9AX+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlI7ImLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlI7ImLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EACDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751860193;
	bh=ghG2ISu7PYuT5LSMoQ4QvHXrord2zw0WP+OBywsXbzs=;
	h=To:Subject:From:Date:From;
	b=BlI7ImLkQEZYQweHCXcHxjGYCKSvEqhbojYBA+Io5ikFuJZ4elhlXViPhEifEK5h6
	 yI+BZc7W5+DMwD5tfQvcYFQERSB0zDmRBprsMvcqFDInGhy6qRJSmzcdHcdRhq4H7/
	 mmpIhTMoDrV15VQ9V/E+jh41kfob5DDwWvIvQksXN4PfIAzj0POZ6GN+x8RbUspHGh
	 Pe3iIjvl6TdJPI3FQik7EsCd4SuD9bNT1Dr4LygqtuaLuB1rz6oA5uzQfr4XDXuTIE
	 7c+0ftVmQhcemylqNaL4B1pSv+6Z330IeciDldxVKp4R3uR2I03ja+HVqbwDnPFjYv
	 zY+1sCE5ckABg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E208C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186019357.19854.10503124347070655609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dead63d543362b3848f110873712ae8dd5f5bcc4ab1678249901d02b2d68025
Date: Mon, 07 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751860193
