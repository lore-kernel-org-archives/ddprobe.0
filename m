Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066403D6463
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787655034; cv=none; b=Ynj2LFfz1zcsDITsXG3iiyVfYrnTH6xavubCWkSnQXFJiSvibQDtG0Nnn+gjjNudOBLjMH/pephsqSuyWWNW0RDDcQptjtuoqxmoapXvqsiCXWATX6HacDHG9JRvRGwpmCfWzbKccnkLpyUjQ5UAvBSLrAHMxL/QMnIwOt2QyYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787655034; c=relaxed/simple;
	bh=W0lK0d3LXOqV5aaE5OhXQm+EUy4hrCQTtkX33MXdS0Q=;
	h=To:Subject:From:Message-Id:Date; b=kD/W9uchfBYSNDrOGz0M9kJC+/HujLto2aP/Ur4Zg0NGuCqrK7on7y2Ii8N0uXAXi8+Hjv+hPGCW4Wvit8hl0GVYmpVxhhN/yEB1mrg8AT57sZTuzqOi3R233VqGq6TqJ0F2JieIz1NGDAPIh8d7Gvq4WH2Jws/jaEZEIxHgP+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0dG46Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0dG46Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC458C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787655033;
	bh=W0lK0d3LXOqV5aaE5OhXQm+EUy4hrCQTtkX33MXdS0Q=;
	h=To:Subject:From:Date:From;
	b=C0dG46AoFMz09Tf5Gw5umsuiB7WY3bEuG5/NCFjgdThcmVd3NFLkvmlhar/AotCvd
	 +SVyo7icMASFJddK8DUtPtygWknPXbOgRfmYKbkJ9nlF9mXCjwQwhi4h+bbsRxsZdO
	 YBF7Ey1zuPWFB+Dfd/699DHTRmKJigJ2TPg2GQEqgMD0VQnHprzKvQjI3tM2OIGyQj
	 ymp25zk6OKR3iio0K6pkKhihjwSCi7Wlcjzy/ltkwRo8MbQ7MNw5xea2+b9P68ALcq
	 pj6NjugBouXmuqoEduONMLlkRAU3d+5OBoUVRtGlJ2+zv/CLMwLk9ptknpYmhNT76o
	 PnuUYzJuFqPFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA581C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765503368.25474.8554718805260022073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3d49e71af1e536f018a98f27760117f938dfd212bdbff4d6eaf4fa61cb3341
Date: Tue, 25 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787655033
