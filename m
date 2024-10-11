Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACFE218D8E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728656754; cv=none; b=VshEFTDfQeSUwMdGpY9/cJwOGEKlJhV26ZfEU6Rd8gbCmDIv6F5dUZhHMGwc7+QvMfOUejQolfld1VchzwrcJzGYpu8EBOaUps5b8GERyNmVcIDGwKloH5IROYBNiDfDavWol38NJalA2dDM3b6ZaosqDYTse4yZ56Dx2RwyIdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728656754; c=relaxed/simple;
	bh=C2UL8oY2wBMYH7I/HpLPD4bMZatln+jy19u9VNo5n1E=;
	h=To:Subject:From:Message-Id:Date; b=LucnA2B0ChxGfpk6qV1VLU+hbKItUGkUG6VjDhlvklwVYdRORwCYPkEXpLwIkPF6sWZmQagEjsLqJvlQWCv6EF9loa2tlTCCk5m7437p/lLzS3eZQ4EiQk4S1JjFHJeHZzTO/1glSwkytNl0UfzTXe7Efh/j9mnJHIKt/0373bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msAI3Cq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msAI3Cq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA41C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728656753;
	bh=C2UL8oY2wBMYH7I/HpLPD4bMZatln+jy19u9VNo5n1E=;
	h=To:Subject:From:Date:From;
	b=msAI3Cq/CzKN+VreMlErXv3BETWIrdGwzfoXAPcwMe6zK2Vke1ZqpVeR9Lq5129Ao
	 hKFkXq4Sew7qF3nInx1TItdAcbLLVI/xDAlks82CanQidsQCowR9yuFpO8KutUCHsy
	 +QdptXaGm+8OtSfA3R0ch1KDuahwN1658oGMGWMDLw12CZC+jSRMp3Nx/tgRmP6bZV
	 u5k+TDyxmWoq51MAsLtWtfWUB+qsPCtXz0ZgfTxpJK7U1/AN/nV00Fgv+lKLYU79V9
	 7rjpYFEMWLI4AaJsThoqFul71suexQSEfwaG89SPX29tC7lCSTIIi/zw/Sgf+Oa+jr
	 KjN7G7pjyNtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9910D0D79C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865675366.5552.10431187979037436318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d996c2760e59610ea02a46034547526a5c6fbd37ca9aad1314d8ada29082c6
Date: Fri, 11 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728656753
