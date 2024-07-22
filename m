Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D4B8F70
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721682954; cv=none; b=BsTnH8D6WE4thsd1m+FEScMc9OsIqoFherJtM9jnxLhktnlgPmYYpZs4FPqELJ1BLzAK0wM37WxTy13luM9q5qqkoozQfju+EzRGp28MbSV18x13u3LO9sjBDh6ZEGqC0684C2wo4MxpWGGxzf4NXdLfzxlbvgZLAbx9hYVw34Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721682954; c=relaxed/simple;
	bh=dzHr218COYZ/vNNmPsQQV2ZxJlWcReFKUS1gujM6QFQ=;
	h=To:Subject:From:Message-Id:Date; b=lVxJFvlQkHiNky1tJh6LhA3JpoIFEKvpJXUJnJPsSbHhCLqkdsAZ75iDY1sKp1ZytbwAkhF5XdSyeZk9lYbb7rypi22KVziCY1FgxwFsqXB9bKsef7zMFsHsWmr7YhsRE+sVCsmzVwxLNPZct1k+Wg9892E0jvbvvONddh+ux7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrzvmrAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrzvmrAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB7FC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721682953;
	bh=dzHr218COYZ/vNNmPsQQV2ZxJlWcReFKUS1gujM6QFQ=;
	h=To:Subject:From:Date:From;
	b=XrzvmrAAauTkpf/jT2YDn/kEaWWwcsgCwZRT5EcOQp+y8RknsfiI4M0zCWhXhZ0tY
	 Dxhem0iehxbghP0dZOw8QqY68XAHZR2k32EK4x0tYbHZ6SGiexUWmG9soPEpK10E1B
	 +z+0Aco6slCb01zY0WuYgXq61ToNmiay/bJwT3JIT7xogWV8kSeqNAIhBI+aiHTjjo
	 8CoH3RDWqWyreO22nkRqeT/erz3xoe4f61t+e3Ffty6VIIwHedTxbl+VeRxi1UhHrh
	 PRv36RVppdfKikk3pPAYWTcqWOCTLwqxzP94NXnxFEHV4WzN+6+JtI/guV30Rn0qi9
	 o7LvI6kIusttg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E2C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168295360.22213.10989690089770410852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4d205b78c24a56217249a59106bdd6261cd3969cfa1634c8d37b77065fe26b
Date: Mon, 22 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721682953
