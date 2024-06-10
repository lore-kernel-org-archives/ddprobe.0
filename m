Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90685380
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717987043; cv=none; b=FcLwKbH8wOl9UJnBRukViQ5EDegKupCuzISJr9sBayUj3t/HFfrc+raKeeM8IboKgHTj+ikwMmk1v851YXfWx+jy9IKH3ZRYXC8VO+5/YL45yPXBYaZjDe8dLP+l9Zxczj4pmT1DJ5NXEvrAe4n9v01T8PmCfoAwUPkPj2oZCZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717987043; c=relaxed/simple;
	bh=8AzI5+a6dChT5TB7S+W48YpF1m8cRgnqdEGxaGW+ulE=;
	h=To:Subject:From:Message-Id:Date; b=sIg3X3rfByeuSVRpezpRaAbbQE56GXh7KWNCWNErYWfELseaeXvVIqsC1eu+SGn89e7f1dZBoBnGOnXEu/VsDL5faPSoZe0TumyUzA7bsXFXlsu2q4UaEs4sJaDRXvCsyUeQMg9k2+ib3iAmhQEBocgW7ej+P5MsDimy3Fx80CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8KTd6UB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8KTd6UB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 049A7C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717987043;
	bh=8AzI5+a6dChT5TB7S+W48YpF1m8cRgnqdEGxaGW+ulE=;
	h=To:Subject:From:Date:From;
	b=U8KTd6UBnmPrdw7uisvL4WBF0+mZHFPCKxntE/1wuYsLKQ3uPcg4vluFuo1z4E+7X
	 BAdJE8H0IOpD/oqV9dILirjOvXWuYV84KRSCLyQZX7zkCGo7TUbAVXbIRb7SCiASfm
	 W6r5FUOKai6UossTWyHYq2RPX7apI7j59S+1aS5VkbXZIOXSEJdCQQAgJJ0YSXe8nS
	 ORQha1Iv6g3QWSyx8NcdOy1DwCcpJPhXUUPKDDXWUOWbbCRATQ0OjQFO1eH5CjG7FL
	 qOE9/X4XXeIXKPbG1U++KllDgDSh2sKsX4lqUGAa2HJZX+Cl8HEHK6Yg/sHzN49eqe
	 DgZC9u066siDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF2C4C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798704287.3861.9071721939419735012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabfa55e3c8ab2e8b4ae7b6ddb2b661f6820669089e761c43add78e4b662bf61
Date: Mon, 10 Jun 2024 02:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717987042
