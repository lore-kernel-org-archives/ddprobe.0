Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD232C95
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721575554; cv=none; b=hup3QkARYl9gGU/dA5HRE37niIUIVTjW7d89BQuRYTy5I+WO6A8fGmL3En8Q8EGW6H9lIzxDQTuWfPi+RJxQQvLgZhjWtXT1PkMxKwtcck3o2DbrR/4JEYJyvBEkTaKUMHkVqcEFBHfh++DOHfJZAYIUXhCjwpURFHctH0ryrIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721575554; c=relaxed/simple;
	bh=IDbdLoK/l/FWGatauxAGKKnK32HMceymbXMBZpXrVWA=;
	h=To:Subject:From:Message-Id:Date; b=KaVyncRqUaJAbZXm/htrRFmxI0gLA7g0OSKhmjGLcb20O+C7H4g0VOyacARA3JRREjX8YpXoIX8Rq/juODeiGhqGROlUqUUHqdqLwfCOA+ebJN6W9gQ6YoNtsdiq2/6gxU7NvCWt2yxKRFrVaH3L3yIgroeM2QT60mkrhdK7ymE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouRS5xkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouRS5xkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AE4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721575553;
	bh=IDbdLoK/l/FWGatauxAGKKnK32HMceymbXMBZpXrVWA=;
	h=To:Subject:From:Date:From;
	b=ouRS5xkUCwWQ6KmiqKrU4NyED84lurp9a2tF74UlZqjxHzkHhJ9dvvC1UJigV2w19
	 zAZT+sfNz91B0WH4sBkJ8ZZ7bDszKYMzIeyHhVCLcIyW57QTFPrsXQp9F29ubx3Tg7
	 zDZU7OqF0ENa5FlsNL3rsrTtoh1vHS/xWV7OFthPJKt5O/Tt2rYa9C7WQ3bzJj0LI0
	 QqNFfAdDFy3Olo63xd8XUm4nDBCV1h1PEGJZPtdzodXcWK9pqzo4iUBkZ+rnepI9C9
	 bIJ0L+6lcRhkMdwmUj3TELS7I7HnKnMvmUnEUfj2jvilPJseYtytt24gbjrOFCvCVt
	 +192a89QLZrOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C923C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157555359.26810.10788774895112683933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0d19f18e58a6930572ade55f29e6e5bc533a46ac74aa0cb9de4caad7f87f80
Date: Sun, 21 Jul 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721575553
