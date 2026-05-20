Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3C534F26F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779255634; cv=none; b=ORoe4DRzqgzGiuwZQ3MhUGKMuVHQqLmdOCt3tNQJtziVcAVje05gnGj8sLRIWVa9sCGmD6gGjOm9jlo4dgtoAsnv2OzIL24OIxHzRwA1gTyK7QSQZyJ0Gm4y0bUMhzc6LQDBHAZ9NWAw0NnufbGIvxX94xAlEVMMAfb9KO1cmEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779255634; c=relaxed/simple;
	bh=2nI/iG8gYB+auuOgJeb0dTTtSto4LtJLlH3ycY4eqVM=;
	h=To:Subject:From:Message-Id:Date; b=lscF46tl6PRFAXq9NJkwJOd/MMJC5RyHMDWlbrB+3NCyxHQlN8ZgJS8rT9OD9OCvcjIoLi8zJ+Afs5eIVLCgLf/hqqjpqHLqHhN1Lyda2DE8wQuNbehdAjwUFmBnSSYEipYf7qAHSLeN6U54oBPQbO/zu7qvwEbibU5OPafGMvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUEAJ8QC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUEAJ8QC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23E7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779255633;
	bh=2nI/iG8gYB+auuOgJeb0dTTtSto4LtJLlH3ycY4eqVM=;
	h=To:Subject:From:Date:From;
	b=jUEAJ8QCh+L6lQE4NwhLwi/qXF2bNF8NIALZfkpsPUvgK9g05GBH80PStFrXJCVTU
	 wo7dtDqWr8e9Fx76shE314Fo92VSgvF9Gy0HcZ+EtEgENn3DoaBqO5MstcHlQ6g4C8
	 bNCDgj6W/drKAHqNU/TjzsF3qsZwD5b3+n1vLRh9aWbvD1g8faQhZ72TSWwlYN84S5
	 95c+6HOEW+kHTqFuAsGM6J3y9Ues9Twrc5gXj5BHoHQuD4amrAKvUreu6FCn93XLLC
	 wb7Xh/rFSaUw83KBHKbwx7d8w6c8BX1pgyJZPImqmBhuNguwr9qQRgOsjfg/nuk6Fg
	 SgrqU8xJlISzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D7CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925563368.23724.5158442018327986006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c567e7f9b6d5d6e11ab42885ee492d171d7d6eee8545e8d30749813e11f5d9
Date: Wed, 20 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779255633
