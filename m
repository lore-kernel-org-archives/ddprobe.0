Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E93020C5CE
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718704763; cv=none; b=sO41cQQdrVJTZYMSErbgjqy565Dax0jQMDECWPozQtnhWe1JWPgmieJBoNgGOXlQ0gUehllK396BQ2w7nlmOXqkCas1IXHcXolGWAXDvDAvsmayKNjaOjOyIz6LZW33dXcuRWIRivwi+IJOvKWXqTmcaxP1umd8fyYhjJg2gbVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718704763; c=relaxed/simple;
	bh=tvSOJqvh3UWDigiBeAcII7eoH6khVk+wIDlW1YDDp54=;
	h=To:Subject:From:Message-Id:Date; b=owKwb/QXGdtvQ0QEBLqBemfaoZsTWSN3p9uHFMQ5aT2BoimuUxwND0CkxSH0fM6sHbIwTh4s6QyKjO+v2Q0fH+AFQ3w588Aq6KhHYXLORd49lez0pYN3XndYdBn77DZW2I+6qEJ+icWLAdUq+M4XukD7ec8P+loFg0Bt1yzuALw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf/ElGXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf/ElGXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9EFC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718704762;
	bh=tvSOJqvh3UWDigiBeAcII7eoH6khVk+wIDlW1YDDp54=;
	h=To:Subject:From:Date:From;
	b=sf/ElGXb5YexdMAkuMTrQH74Bpk7L6U7VcplX+uDWxLmt4+HZvko57Z2TH11nDniY
	 IHr5t+Ts2rS7QrbBiv7VKMsYU+/7rdtUQGIKRoDPYYCkGZls3tqhhe8NLBJ3CBhzGG
	 vSlpt/aX081ls9g/uYSpq8ndRWbsQEf4WIDRlcYAwyFc6gyAl2sjuDfwRCCcuSlExJ
	 NZDAxoOCdPgRh3PIBqEr/d5R+iAg8eU1VyNjYUquo2c005Z8zZyr81tpdrWDnnRySW
	 JefKqN1Wh/l+u/PsP8hDHZQpl39XvT8kLvxXAylCCVuxTcTjbaT4IVwOiyeg29+HKc
	 bw0CoW/jbbL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69AC2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870476276.21362.11946977213720806812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2573701741d395d2a8e15f2be834127e89fa2f8fe5f8ca4f2600f706454ba353
Date: Tue, 18 Jun 2024 09:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718704762
