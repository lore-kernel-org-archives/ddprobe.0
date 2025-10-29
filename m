Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FF12135C5
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761720594; cv=none; b=gEPa3xqeoRQMjnkP5chxu4mm1fUaeGngA9l8Bv3hTUhTLBQLGOug8c3OwIrTGlyIf5RaD9vGgfnP/zKGRre3HRrVhdXvqQNm7s/eLAwQkbgMQPAW0jByhDmu5MaOl5qb2Ults0spsmWgVIZEUaRP1sSVOk855/uEICYS1146jLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761720594; c=relaxed/simple;
	bh=mhRGlBBdLf8VjNUHTrBksavAuyBHrL9tvG0dykRhtGY=;
	h=To:Subject:From:Message-Id:Date; b=L/JW65XpXG0tjB9jZudGjRLl4+kYO5vUG43VVzmJNrvwpowNoVlxcp278oP87qKJbLtt8BA4Ql6lP56LwNQcr/31i0kUSqNH/xXLrkQbxUnorx7ptyUl4VLxM4pWglCqF3gAEnFb44CqsQOSaGq0+97L9m4WGz+ZV4OPzLY4RkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8EYS+1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8EYS+1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A4AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761720593;
	bh=mhRGlBBdLf8VjNUHTrBksavAuyBHrL9tvG0dykRhtGY=;
	h=To:Subject:From:Date:From;
	b=L8EYS+1CJcimU3Azj68mjWMhjLcYs/asCXvj31DoUwt4Yj4nXjTKvdw49cQ0xx5PJ
	 fuNjNarnA3SHZ0bo9zFUaUuSxsXsoBDYK3IdKyeMA57para68rvTbkAWjYRpOGZzaW
	 fpwCIQ0+coF+jNMDc6lT/jUGvHP/NiADDJNKNfYEHraJE2c8yrcueUpmHOF6Dq20pH
	 C9jEbhgzcuFnK/itPcw31axjGwKATi73ywr/qp0A00+CWfEDmMgCE4R3JI3J25njiN
	 b943+F1YDefBLHhPHY4q4nvRayiGBMoHbXx5M56N9qPIkYaYNi1m+dybDeiuqx7N+e
	 eHUPWm66XDWQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD8CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172059359.27466.13439887247210472195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaab92eeb63b7b3a8e2abe9f617d26340bf2a09af1656d9ce55bd2269eee1e0
Date: Wed, 29 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761720593
