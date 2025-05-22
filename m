Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9C028C86B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747933194; cv=none; b=qvCjlSeR3NWvzQX7vvPaHLZYxOixApAMSNJk5KFOBE9n6zduvBvzkkk3jv5oTZ8liru6JcZq/i81Pi9lTwxeYMe+xxK3ysuISkIbIsTR3KaBWkfc2KY8Fjn/b5bh/Krai6yNUI+bjq7hi3NW5/kHikwBLvnG0q6nVW6pklXPI2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747933194; c=relaxed/simple;
	bh=xS8QKIEExQZLuvB0GqJrZYdrFndv6aTTFqCzA4Nl3Lg=;
	h=To:Subject:From:Message-Id:Date; b=D6cEzSjpRlMNVV6kcvkng6gLQIdseo5WERs9/2vg+LZCSwaPuGe5ejRDH2gIud2fJPfZ7hxIVzU6whk5yXFNl13NRA+PKKrZwq77Xvjgnyuro9u7FukTfbudDD6OCAXAmMhiaR121Wa7MtdV2QF8rytkc0i67D3mWdML22zVsBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjYknDXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjYknDXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB3C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747933193;
	bh=xS8QKIEExQZLuvB0GqJrZYdrFndv6aTTFqCzA4Nl3Lg=;
	h=To:Subject:From:Date:From;
	b=BjYknDXR7pHU6rzscy0B5z8YwbfW/SBL5Y5Eg85PZzhCy+lArN+7Y96jk7Ddwr970
	 yfJjQ6VfiAlgo4PRWqADS9ItKLCRA4JS8tfoKwAjs+VWJak93DKNWv7X2p1T/GzMuD
	 JWeeAJlGvk7iUENyEbIyZO39s3T+DrXXkSNT5+4tQ/kogXMxlBv0z2NcvNQVlXEZtf
	 KTIYH+EZfaFs7GGevURY9UYPJSLuohZMkvECPZTjvI0x1TO5DVpdx4oLFIOzG8U5UL
	 78Fw4n69GtLyRqiFt8L/oEaoWwCuezL/IlnLpzW+/YLXLGM1V70x4tJyUzCB+h8/O6
	 ZWL/wF+X5yiIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206AC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793319357.20342.3997388366832955393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92630f173c8cb610fcef38b124aec99b4de0e492bdad0f51455b3304a935c2e
Date: Thu, 22 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747933193
