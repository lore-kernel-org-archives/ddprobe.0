Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26838274641
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116994; cv=none; b=KGvRbY9/gRo32kKiwSOm5qXh6SR45Gb4Pd/DlhVL5NbBrgXB3567Tb6lJ3ddZRgoy37R5QJwLtmBUFcOeFNcmQMmqrnRb3niBc1PVjMiFbXm+TT/CROyydf4Rl6k/nsVwbzFyA4Z0UqQb2xl0jXpJbEZ6HxCExY2dv9PY4hTPdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116994; c=relaxed/simple;
	bh=ajZDQtG6GluI3XJEwM8Mmx6Wa2e4ZBODKQZx22lryKo=;
	h=To:Subject:From:Message-Id:Date; b=cfWldeCUUEuk/H+xpkdQK0jkMEeu+1ZqXaxMWa5XJCDvMElFrsNRdZqunFskUG0Sbault1oDjH7Qe6IsYz46zyACMHSqkXxqnIgLNhTkugDnu9hYQGfNyRfAVNTrJI8Pc3l9V4h87xVopAWrmTcX0rUBGLOg2xNSgYLNB5HGPz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnLPF33D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnLPF33D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F51C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758116993;
	bh=ajZDQtG6GluI3XJEwM8Mmx6Wa2e4ZBODKQZx22lryKo=;
	h=To:Subject:From:Date:From;
	b=mnLPF33D8tSBea3l9MBIs6ejOycZXKuHXHL4eyzYj0iDaxvLh29QsHQKfBii6TapU
	 g4gcZq+pfwlDcQvWVaN8GL9MKyTJzHCpBdBMVJlAft8qoLwV5P0wvdrvw1wGHPdFw4
	 lKUjU/+RjlNOHSHD1qgspau1pMpMn39CaLiivzYlfcN/UuhkLKpAj1uOWRnfH5CZMQ
	 P4dLf0Ax17NScfivQS1rZV04p3dAsCuvMBEhwSwpD+d++QXPWLKfPNo3WVPMOmqxuX
	 7LimKChplgpr04hOZMPLKklXa89ATGSv5z1/FVl06t5Lz+BhUBKjxAFDCitlKfFRN/
	 ib4HNv8BGNKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF41CAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811699357.5001.13228552109685637764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad5938241ddd15b7dda09cc92fc991b06f32e06a1272c4aa7c1ed61ddd8f6af
Date: Wed, 17 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758116993
