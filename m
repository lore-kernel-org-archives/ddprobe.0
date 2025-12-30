Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF72B19D8A8
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767127434; cv=none; b=M1/u1GqLRxmQ257fd2duP439+zcJ/15ncZYBCInBSduBTP9TjF8dZ+x3rrViNuXlhREzRYqC8LJbe1bcOPjxGUbipjfhYylgboQHPeGCHCmLudzaS7dM+0ZdfdAZcXcNBsduVNu1fpwRET/czFdnAbUAaRbO3aLsaphkUtof99c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767127434; c=relaxed/simple;
	bh=0WZX0ejWPhFcAWg5xpJ5LC++WlTYJlyu9Lq8L/zj8JQ=;
	h=To:Subject:From:Message-Id:Date; b=UVpSx2/0hGnycAh0YCIupLYzXWkAR9x9xRXjczoTM2517ThNrY5W4MObm8KYYmUULb0iank0Bg4yUBrPmIS+4spO5OCmqDwMsOC8gvz8vqjEjqsb9PTpZEVDo+PuBqqZ91pJU7CybnXqJq1HfpVBYIRbgsXIWIQ78pF38XJhVuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcybluXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcybluXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57E8C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767127433;
	bh=0WZX0ejWPhFcAWg5xpJ5LC++WlTYJlyu9Lq8L/zj8JQ=;
	h=To:Subject:From:Date:From;
	b=qcybluXmlr6IV5THWADYZEAzo1TWuvll+ehFe/+/rYM7nzqq0Kw1FFukcuzh6xBSP
	 tkGj6YTGSH89+z6LD/ciaA/tfxOSOegLE5vUTMKaqmIJF6MW9c3E8iSV0e0ZzXw5Tt
	 iObNn6JXl5/uEBCRVCgySWVsXPqCcbLMbC7BJWi9Ea435qzZO+Djup1k4znrewxD9Z
	 odf6KFJw5AoUHG4S17sO8GNvT4679OMssFHw9GuugVAy15hri+DvoOQvZ6ovNm78a7
	 VgfHGAl/IBpxpilx6d6UjFTg8IPlkGfCj+neQ3ZbyqZk/EdtpaXxzE3OfXesNKoeWo
	 rEolVyLD2XLuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA22EE0203
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712743357.3803.16488209320392850540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41151015322234f43de0d1cb5ceb707682ed4c8ede9657a0e90228ea4cc2dd84
Date: Tue, 30 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767127433
