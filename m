Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B37130BB97
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768959835; cv=none; b=Ap9JaEQVihtmF4bMdc+Bx/YItyJcu7DU7upT2ZsYZA9Y0NJemkAUg7OhKPsjTct556/2TnSORS/cQokOxFRJoajfeQtmFlNLQtXjyy6vKuSj1gOBZTlEXa8M+M8NhGvVaSnLyT2aOA9ZcDIZ1RjvMzUKWxL6kbtFpmx19YzcqA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768959835; c=relaxed/simple;
	bh=ep+ojaJwhg5wcwuBhLbBe1cbWTUitU/HC30KvhtJr8o=;
	h=To:Subject:From:Message-Id:Date; b=frAM0aKME4cffKmj9b6M+/GEvyrZ6KB3PyZEoPHiDSMM58SMizKFJgqdDt/Hp+Qj84WxtQ9TH6vH5zw6wW/Tkjhs44gae8J4f3pbKEqM6ds6+U51wfivWkzkKeY7i4acGdN9dcHFKRYyIjT2MKXvhuuJyKg8gnDMSo8NWd4Y/ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJnvl2/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJnvl2/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8161C19423
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768959833;
	bh=ep+ojaJwhg5wcwuBhLbBe1cbWTUitU/HC30KvhtJr8o=;
	h=To:Subject:From:Date:From;
	b=QJnvl2/h0FBIDRF+x+4nhQ00nEb+4h/BAqeSugvYfWvAnBsbJZJOa0GI9z7MaLuvm
	 16XnX+C3sDyyy22MQ4b3I+3NTRBzBY0DhXg+ZOzQNX3tabwk34OfT5TfdpywZuFoem
	 aJZBSL328yHeuHqYSjkpPk97aqrO2uvHLSnSKd4/V9olt76/OiDRVjhiOToZMa1dVc
	 W82e9hHKBS0u5MkyLWOY9BimuE7t30YDiJSTI99z1tawtbW2I12RgXZQzThG7Tp8Uz
	 6gU5qcYoPEQ5RCRvjVDT/14E4dJ/tK7t6RaNgG2+4g8b0JGtGBJzpdpBQmHBY5lrul
	 s+sI40TC9+krA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94181D262AD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895983358.31957.14058177660191656475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75750a558505d66d44499f46466d7c4de01bd56dbf740e1c6f2d86a20497680a
Date: Wed, 21 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768959833
