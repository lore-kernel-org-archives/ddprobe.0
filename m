Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B713191D3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768340034; cv=none; b=PJPsyTX/WJtWCvZOqwuGDhOOzMb41BhaLxzgWX6ZvQmPZw4WP33tsccNGcVEKj6ODmxqFrkiUYw5SRAKeNoKubBTI625EXrLKpcBADafI2PNRCMbDnn85wiHCQVQ23PN4N1Q8CU6HYsHXqJbtxyNw+fEzwOgxQOYMqP/csFyYNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768340034; c=relaxed/simple;
	bh=Szhu0GmNUeTQD17TxnBBhzj7pBUgquZrfh4cTsYwldo=;
	h=To:Subject:From:Message-Id:Date; b=cDksEPYP2N3KUS09GHvDQ9Ddk/iVzFrTVNPREvXtCxaqEFFo3+yV8kiNMBjJ2owDU/tnwOIPrhJKrjGn9/+VsiKBkhUQm6qHQVD36e5Wiwq8m5jrnLSwKToaL+RMlPs4o6e38NkjNikqi3YPJVPvc5CgTFRxll+hgxIIqI3zVWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=De6eeDwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="De6eeDwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2BDC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768340033;
	bh=Szhu0GmNUeTQD17TxnBBhzj7pBUgquZrfh4cTsYwldo=;
	h=To:Subject:From:Date:From;
	b=De6eeDwLs223eP64s9GTDPzWeIFk69BzPkWnRRC3cxoJqy2pj9sZmsvsuBj7pPWzi
	 XQ2Ny7PG18uFA1bAy/2b9UtCaJf41RUBxtMWmL88oH0bkF4Hmx1vjj7EeV4kOgwRxw
	 N0HuxkS3czSdwSq/79rbyU2fIC+sBBisInkRj1hbzC0kQyt9d4LluNx5fsiSN97p+K
	 sEi0osx2BGoYOycxu37qFAoU+RyZfht7Pfxx6BT0pEkPjP9VfKw7+kH+tZbYIqBdvE
	 zJ720Jj36xCs3DOILraWfmK0qJyoqwMkGCKlR17vCNqKMJVcTMR/SSz1qI5n+WRH0q
	 z0uNZjQoRxbLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED30D30CC3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834003357.28533.3472370752931685337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6561bcffba03d82f88cee65deaa31319071c88123bc7483a91aac86d8cf92a19
Date: Tue, 13 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768340033
