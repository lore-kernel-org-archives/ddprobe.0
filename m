Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318C62391A6
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733370954; cv=none; b=aHHGlrYmIB5kV8Gw7A6NtwpZprEr7rfDRhRioPOsObqA+own0waxMrckyrRCBXNncoPhDeC5mbKkqvL2/0OJN0nHOvPUBZPhctYtvfFy8UHlH4e4QlA1IqHAhAhPLA2vJ56rI1LTW7zIiwATM9a5pT/HvDb/ndMO1HJFdr5DH2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733370954; c=relaxed/simple;
	bh=MjPVD8wO9ur4WJtWdRNyLWqt0ieTcH0gw2JXOVActis=;
	h=To:Subject:From:Message-Id:Date; b=CoxsxDTFaeNtUBqr0jUVhzBNfo+sK+QUpJ5m180YoZzyOjt1NlxMiF3UK39uCAtwsDo2spRmCfoXq8cVOHJFVUm5uGEPkMPgnPi4IECcB427Yr7JlR7oooKZpirXZ8POSZ4ytQ5uli9Lj+Fb6jYiwrRQxK0CBgfEmUTEgeGvCbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adF+mTid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adF+mTid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB767C4CED6
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733370953;
	bh=MjPVD8wO9ur4WJtWdRNyLWqt0ieTcH0gw2JXOVActis=;
	h=To:Subject:From:Date:From;
	b=adF+mTidQowGhr1t0r/Hgm4iqUxG83lz0H67TKgF5jtJ1xUzW5TdHNB3Am5RMmBRK
	 5x6n9oOQjmgRNra/98AAy55NBPN0TBV1VXtLqI6GwxnmEZdcYa0MbIPbiD/NS5eSS/
	 vxV+T0G+vQtEBEff7K29b6QbrSzfL/oU5matYF2m8Sfi397AVrCD3cA9ncG8U6RToG
	 2UqNwd1wdt/eRYnl+1hsS+jAPKmq3JX3/l+ntg34MWuSwul3+4n/OWQSWOLixcFlp0
	 dMiVw0/d2dY+z8gGbgni+kj1okoVoKsPqNlpYhv/b8afJXYWu8GnsL0EvRDUO1nl/a
	 kcG3tB0mjC6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96263E7716D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173337095359.23167.6273136942398961156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0aa10107cae0dc45f5636401c4866f9a6a07109988c80e0d6806b677932753
Date: Thu, 05 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733370953
