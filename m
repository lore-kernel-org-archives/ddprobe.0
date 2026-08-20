Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1B42472A6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787212834; cv=none; b=dxx59tbT5inUj0IMWqrSUH04S7U6pE2Ueca2AWi5+NF3bdNYRSx621aZ8Z3+kc4R23wqdjdji821Nh3n1AvYyvhWoSBmlhNncyCIzy59IeYCvdY2QrTJFjqrEnAbv5FDCMVd0MXv7s9jWlTyTBpguUvAh4IeqVT0dot2HZcJwXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787212834; c=relaxed/simple;
	bh=lWY2YAx80gU2UCujTvC0rigSrIKw86e5ixIB4Hr/b4o=;
	h=To:Subject:From:Message-Id:Date; b=MAyjQQsIToa9lpam4tgmhTZ31/FUnKD0E2fk3ZnZHNLwTNrTHbAka3wQpTZptbC7oAQ5kXY2XM6eItWjAt5lgjHvd3EbI3MFLfILpNF/Aprcpx3P2dcOHf+UHeZOiL+vB1bKrpELsC7axLzJuLxB8fR0mMH7vTXyuoKGNuZPJPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjdZI+kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjdZI+kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C5DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787212833;
	bh=lWY2YAx80gU2UCujTvC0rigSrIKw86e5ixIB4Hr/b4o=;
	h=To:Subject:From:Date:From;
	b=jjdZI+knoD+DXS9e34aDv2uH86USpTkr64HJR/Kw+vqcuBvzMwT08sDCQJmBseOYL
	 UhDBXTq4w3KRYcUvYXa6MmasAOdH7AEPZBkQOsctP7xrEoNagDdbYDpYxVXOXXmptG
	 1+vBGipBebJfcrVgTowBBlcJOWkgPS6sLGrkqGofqymKVSIkcluyjG6aJe4HF0cedI
	 rmmTdPq8368l07X5lEm4j4cVYkmIQYjcciTE8dZT/a6kl1m3F+Ln0AgZZ7+y8UB/sQ
	 QOn9P3RJkoRFCTed7Y9rcIxIHmcBpROUoAFBTZFuxcRxuKfFB6xVN4xRRZrNQNZo03
	 PDw72QmaEVdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA367C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721283368.17451.10456659620860151028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a8d2b60d1ddf158a0734805bf35b9100c7751a613f6b44dead9d7f48a529dc
Date: Thu, 20 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787212833
