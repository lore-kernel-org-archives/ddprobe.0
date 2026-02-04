Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4E6288B1
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770165834; cv=none; b=IjfA3HErY9GMGkfpkM65vCy9HFQlGWnN04Lz/RHx+pTnHkQeBRVZnHn6eQ07VorpAK3R+3bFwrgTec32n+0Z4EOzCrc8tKtEnujOAecrlWVFA4xNuYo9jRxl+eTz1H+Xg/v1InYWbWJTGqbYkokdHYzEqkTuyFxUxUTcIhjMgZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770165834; c=relaxed/simple;
	bh=/tgdasE13HGyzZ788nZTE2b31I78j5cQ2zvDXe7mJes=;
	h=To:Subject:From:Message-Id:Date; b=oqDdM8ihRqJaZY1fznAAv0s9fHKNlgwzywfObmML4Q4sx9yXDO7nFEHB/0VwRqiesIcyFG0JYFBmTeRIuPYH4R41Xhcn9nMiY6538mp7eh3GU7DugwVxoP45yp73TCMOHRD+/RfmW1wW/FyDoh5njCxfg4Q2eXHWUv+VaIbqxxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4I7OwW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4I7OwW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A769AC19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770165833;
	bh=/tgdasE13HGyzZ788nZTE2b31I78j5cQ2zvDXe7mJes=;
	h=To:Subject:From:Date:From;
	b=G4I7OwW90GDorDNKJYc+Z/C11mPqLmOkb8OY04Kwo95OHdleB1SUFp+y5K1m86RQs
	 QkpKNO2u4nvJnfqaj6yedKzF94QcBNaikDegMZSDyNXQYq0qO+SS31Q3HePSZsk/u7
	 uhosJ/pqW7L7zFOZebf2XHVV/N7dMEbUwnNqQzdmZ9ZhjiSOJ03mVgAsOxZ4gSHU7e
	 0quKFxiJQ1QXSy1sO7EuSM02miTFzHjJ2dURhnEC3Bi7IWCYaqctSoZhWzgqatqVBr
	 ZAeBG9Y+1Iu7tDrTXxU7fgXj1M/OwQfpeENXgiov2wuuYMPmGZaksKREtvKifWTiOM
	 HGUwQLtAOwnxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C4E8B387
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016583359.16483.2151038966064701075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86df740bb86c6d89132a0a44530fd57c8afcde37a1b7523c1b72d7b3ce22ac62
Date: Wed, 04 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770165833
