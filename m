Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43141486404
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792014634; cv=none; b=atTPw98TCFg1xr6k2iufRildLZBbe+p+OhS3EG0+39uzU+sMmZX/1IKoL8+DpgFFn5Enm/7kpo93Tca9iurnI1DLgLwkJNcUwTRx8IFkwtb+aYNyuMZL8NJlk+SP0/+kuhz+Fp6umqV1ilHVVGNyDzPe9xVrr9U0rU+xLOC8/cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792014634; c=relaxed/simple;
	bh=QsYvoDZ59hM5aR1ISOC4HYsnN2hc+oGG9YHlFZk606U=;
	h=To:Subject:From:Message-Id:Date; b=RHOjGYNKsIqwrkcruTnBygbhKonUybNtXDidcFr4fq5C4kJB/Q43sWW7PwlLuImdfhXiECffkDyA2WFf6ZZx9HQ3V+8RaNJBk9qxOdFnAIsARn7qCbfbloCP5tHfSBrEEQLOTaHg47/mTjXp5Qa+2zvFk70023O1+sG3ukBtFkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH7f7kkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH7f7kkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC757C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792014633;
	bh=QsYvoDZ59hM5aR1ISOC4HYsnN2hc+oGG9YHlFZk606U=;
	h=To:Subject:From:Date:From;
	b=KH7f7kkD5AGAI7dV2K2IxIuRBpSSe8H5s0uWSo4jquZp3X/LAOmsmLPC9TvTlYYfL
	 UVqF1FNxgr8B09YZRWzY0JOqEw4IpAPeYMsSkdPQUzT8IS6GnxahvktPEHhiNAR9hj
	 rb/Vr+22Q089tuan59cMMei0rS/cuMNLjCiFmJhXV+ZkQXuYkMSnqIM5reSAkXJQ8I
	 nEWUOWRf/pqV8lFZGc4QKwKvFrvTsJZCHchQOMxr5Pf5auzWMRDNsNJuQdYw0FUcpu
	 uVxXN/6JhBY6QeYPpQnpYFaeHcUvW/ob2cj4C2Oho755hu29zWaLUvGIibJ8e45gED
	 B1CQHdrjH9ePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9010CC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201463374.9069.17043535955178540607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5276bb2e28eebe7dad09caf5bfaa7ea60bf273a28fc5c9001900c3e0383f8b44
Date: Wed, 14 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792014633
