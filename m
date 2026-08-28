Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355B472798
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787929834; cv=none; b=pcmYIblFbwqSyFRijP5NOPsxzCzK3AKcuMDuwLjcY8Rxu8vpoFJEwPA4p/a1vtkOHMGJWKfeso26px8ktUmRBZrtLE18+Q+3GX44Z9iVED0KQ4mmItS/bypEbB/dslTGqlR0nwJtC/m5mbHxu739XmX8lWtCM03LhnyXqX5EUh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787929834; c=relaxed/simple;
	bh=ukPgqe7HIDw97oxGu91kloGMgZeXQ5wHc3w1Ns+i7fM=;
	h=To:Subject:From:Message-Id:Date; b=uMOGGI50+gQ85CyAh+k+vHPoYffpDIUG5ZNox+czGycY1voS5Air/QqMxmeS3V9OBn05x2Wjxv5aPbmijJrOh9EN6uiFd0n+pZRZMumHwk6zvc8XJ9BXp3bGMU/3mN5rxfUEk1JuL609v+DwTb09ECkCWOHNwqV2fjlRitV6a1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbVlbDPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbVlbDPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1663C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787929833;
	bh=ukPgqe7HIDw97oxGu91kloGMgZeXQ5wHc3w1Ns+i7fM=;
	h=To:Subject:From:Date:From;
	b=kbVlbDPQ7nvhzBobkgElnpGKQOIm9wKFp34G3hx3UIYSYD3BLg/yJhpr2FbYiPe5d
	 ntN+m4Mzn8hVH+8w6keptaA3bsOkYizYo/3PBJmEyg6gx21si8Qcj8olIYp9yQAooV
	 QdMq4oRsgTVuVqxcFsWWPSAAclJLXnRKXp4iTRB87bqgkmyc7+KsCmp+QdBto3XyY6
	 Sm/6rzF6/gGZSjc0QsGH3NyMhLBbiXYQqsmRNmdAS1cNyl0++BcVgkt049iYEPYI0l
	 EIZ8dF3OvFRk66TI3rBu9uSZReJbybQ4ABRlt13uHbaMqL49qP2ULZDUlZ+KPgjGR+
	 KUNY4xXjE9Vvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA1C61DD3
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792983369.16768.642998119925509157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e08d5efd2c172c66922e1c27c888a05cd68574fa02b3fe9cb3e23771e93d60
Date: Fri, 28 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787929833
