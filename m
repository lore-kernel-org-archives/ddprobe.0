Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD8163D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718760563; cv=none; b=nkBhpLCJPddOdsMzSz4vg3ORvxFPwskharoBkv4GMYf0f4qqCUYvGs3i9iq8k1OwbGjYDJb1snMwQLuYxg8wh5HPmqLgsUF7XOvoWpnVPrwGZikaWbincWZRpytn44sZ9DC10+4x0nwAqtECwqe/w7456hIOIi+UWziqzPYgEms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718760563; c=relaxed/simple;
	bh=hYDifXWhWqGKlQPHGGBmI/QOg9K3+79WehD8MIs5GhU=;
	h=To:Subject:From:Message-Id:Date; b=jHH+bemBIfWU9RS1hq67R38ILNIDUorqbZ2UzguwfZeUTdL9khw/2x4Btrc7h8Au8xyb0wggmOgF8jOX/PVR2q4R/eGRQjdvaD+jh4ewLn98j85u0s8UVMIqHOEiI+tRdv7PSIl34fUYAZRuSWvn0giP1giHFgA9z/AEDTg2bkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfPr7Cyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfPr7Cyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA558C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718760562;
	bh=hYDifXWhWqGKlQPHGGBmI/QOg9K3+79WehD8MIs5GhU=;
	h=To:Subject:From:Date:From;
	b=NfPr7Cyvu4FH5YSMA/vCRjSsbUlOZKSOdKQ+/oZiYwOxZkbfB4U3Tp/xdSWCl0r2S
	 Bj1r/+UL1EIrFHNwL6bwz1E4rJRSuuDxgCY/yjXWd6it9F84Y8aUiiOw62qS1ZEuNn
	 2c0/ghMkTpUg/SEVL6b4dbFvmJoTRkQLEiLEb+9y1HKTfGP/CPWK5BXQpOAQjX98YH
	 maOqpGaZkhic8jDk2nKmcdc1xrW0jphPQcTK82KGp4O4iB30pEgjue5ZmjptbZBQXW
	 ZOya9gQaNiAY669iSHZ1pgJxKfuG/ARHOnVf7cmEpa1FSBIkhwFi8vbjaBdCsWkOxS
	 pW2JxiyOp4Vhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C386AC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 01:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876056278.19479.8071720349617774435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0177bd9817a7d92bac6f6ba332e40a216d7199ad66cb3cd9f96a6623f0c53d
Date: Wed, 19 Jun 2024 01:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718760562
