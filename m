Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0CF1B81DC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748876994; cv=none; b=RXtKUdwoGgJzaDkUwlgqMxDf/+M7dER1rF+vIDuE6eQk3yzZV2EU/FgIeNO8B2iqw6NK1cLvy6N2518jgjdmOyj0Y1dG6xgHZfbeAVB9nG8xJS7IDk57ZYU9bvUGxJBaZhG62MZwQ+7pxeS399qSLdguFdN93zPvL936pl2olZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748876994; c=relaxed/simple;
	bh=oqZ9sGfDQOP4UlxZSm23oNtZyZjnNzRrUguNGBpw9JQ=;
	h=To:Subject:From:Message-Id:Date; b=eSBqfbvHXAYtS43cXrFUuKxPKionN2ET1w4wo8cqrFGuPpB0F265rVxvKlgrCinLQ4tKxaVA65LOwf4uNrmoAUoisKEvWtIbiMhmHxHW51a9hUxF4wvWWaB6J4NUuMYu7URExRdcUlvIee4Ka9M/esEhFDWCHO7DU5t2c+N+dgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqMqOzt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqMqOzt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748876993;
	bh=oqZ9sGfDQOP4UlxZSm23oNtZyZjnNzRrUguNGBpw9JQ=;
	h=To:Subject:From:Date:From;
	b=XqMqOzt0i4eva5AnII/1LzGvy1X4fsdBL2TcjN7XrKM7w+/Anwy6JUfB1ONUL3R67
	 e9rb6s4tfgFGtYDzwg9Z0wqvAXj8mRa6UPpGB0cqqHHCV5uGj0cuwCXvM6srJ3EfO0
	 oX2Mll5mgDdXTsX8tapArsbaZpx6fBFwTRh6yIbHb5ZD6kQ6Tg63s8seSjFdGpZBlw
	 vnGhX/PCarEHlBtz0cbqf8r4fYl1cZsfDDzcXY03EvNfNd2RB3pqaUlZXGBexepsls
	 RMt3TRVaOWKbZ4EFBmlgK73pfOXcWLchFPO9HMlktM7l4JqLO3f4kPjhv75acgQIsS
	 zQCvDM6OcKYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75DC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887699357.31209.3866086133355084492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411973d5f18133756fc0a595c9eed1fd78e2790e9789e04b72d29efbfa69014c
Date: Mon, 02 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748876993
