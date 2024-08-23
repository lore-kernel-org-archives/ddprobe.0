Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8C120DF4
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724384754; cv=none; b=TrBExuBGMA5t7pkVod5wMmWvwqALPLK15WREZSPPKW/EBs2tDpOdFUZ47Ro0KEAskoKp4fDA3ROWn8TJ6fQlZfg6dcOpCJudQdNv/g11+o7odfVFBd7PcMWtsN4GKZFclMmU6fMltjyCgrgOHcBytbAvaUH4C2nLqD0CE/QPrFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724384754; c=relaxed/simple;
	bh=wuU6xjcJ8hb0TMyxdw0wSuIErjxva/tanBlDd9ARqLY=;
	h=To:Subject:From:Message-Id:Date; b=XSQqbdFb5kbDa51nZfZ2dyA6T5EmHLwyoU0+AQKhDTZaEsr+lmf9cIDcqF4eujOwieUgMdbnb/YQncMZGdWz7HHsbauPAnkMHNzdTEmD0Z6y+9F+0FpUBeq2BO82Jeqw28ADIMOdNATT9ZAfbd6wkeIhpt5Kv3cCzUDAsJjDXeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Klgh1ZHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Klgh1ZHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7DCC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724384753;
	bh=wuU6xjcJ8hb0TMyxdw0wSuIErjxva/tanBlDd9ARqLY=;
	h=To:Subject:From:Date:From;
	b=Klgh1ZHbBzOHNifmbJCM/Io/L4kuFjLDedjaBNVKosz9LkHaPGDFHSc8UJM3uhiGm
	 YBWlkC1nuWaaP3P+dHvyXXLiXKb2HJLnNJLG1sM9Z3kUa3I8uYxf9/DPZt+aIsfSjl
	 oW/syBBj0uQv9v3INKySZguvp7abYZ/KLw8M+nLz6ASTHMx9rbkGKtSr/KR2dCcRIm
	 lsyME5Mx/xNkau6pMJAnhkGRVFDPu8+TtuiCcSbt+b3blbFrS0LJA2fcZI5Ev0mo3e
	 6HHYeuDZejfzb1KVgaXrIm9euaw8nN/AXcS52ewbuYQ8zlDsNBc6aBUV5entPj6ePc
	 hpdDC+cEal+/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7E4C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438475362.10174.15878750434256371265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f498741e4b92b04982dbf081e9af9054e7a4a1d4a931819f664fb2eabdcbae88
Date: Fri, 23 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724384753
