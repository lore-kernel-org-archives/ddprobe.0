Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12723244661
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768615434; cv=none; b=n49JddfFxAnaqJVZh/M8CFO2XQB9ef3rty+4UnivUZZJXSlVx6tlnDy0ndwCI1B4LkdN8ao3aEL5OnodmUNk71oSj1AZkpZ62zQ4et5W7IwK/ZoLVyR8/474IkdRKTYIKAqIS64RjEnBg4GG0CGUV899dYuUQYwqPPCyflii6a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768615434; c=relaxed/simple;
	bh=FYjh4MEStcmJkslvhlMv3wCtiL6uU0+CU5drt97ajVg=;
	h=To:Subject:From:Message-Id:Date; b=UyGkKR2gvxPsLfF5REjMmfc8ZCNyTL6xo0VOSDVD27URrjE2nV8YG9gjL4qK49zP4LCTr/IixGhOJzSmEu48QgvJfokAkV5ue5j+/pW+i++Hu/ZTIK54vKs/H8g9XUZj1AbJikT5kGqX03evWDe4B29SqXer9uY+O7iyyWnkYk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcikv6QI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcikv6QI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768615433;
	bh=FYjh4MEStcmJkslvhlMv3wCtiL6uU0+CU5drt97ajVg=;
	h=To:Subject:From:Date:From;
	b=rcikv6QIQ4r04AuxoVciAIGLs9FLEO1yYDd5301ss39w6R8dceVOgNoVY0IxqeRjb
	 q5y27AlXksVwtUAU4B0mPXWfFJT5KwAKKmyswpbumL+8r2zS2MW7afFJEDKHMeL/br
	 aKRxLbN0BVFBSkZyZL0y/BSE72m3eeK/NqZNHl7zr7lr0BJiyNRVbXdiV5IFeLCxW/
	 sVq4zqgatSR9laW2qg1k0DflKWQ4b/YioTmHaYYuv07uTA4O3N/SR7LpZMuuBqmzFF
	 mNrm+t4L/YhLDkl83Up4+ZnfqU7Ox/vxZAB5SxxtWbSs6zAXlt2P3I4yCsiqHzZX3T
	 3B1+iZTMYSzGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929FFC9830C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861543358.31433.2188389404469575797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a68c3f8c368bca4a567717dfca01c24d0c9f32cea497d0a02a238dbbbff5ff8
Date: Sat, 17 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768615433
