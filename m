Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA988C11
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758677394; cv=none; b=uUEAthxu6Rxo8caSIGPEYRrcyExnNZ8L/GXdCgFRKxgBzAbOXHHntPJyPuM6Go+C8caJr6YeUlQjTcnnpXkMfHJ1Q78VsLXBXdiyaXIrRQO7LQCjAvPaPCBdMAeiCZpJyizKCVL6SaJckaU7b/WfjUxzdeA2me696tOWN6mYAfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758677394; c=relaxed/simple;
	bh=HIOWATUntY17qOw8VLo2pU2xC+V9uPGp+UmpbPo9Jzg=;
	h=To:Subject:From:Message-Id:Date; b=D8TX/sN+0PMFvx6hK4ZYgBdpZgeq/mbH7uK/mu0OX4Jw6cjFeJGcPvLKCVKmdtzdgfChLATN+CNwA5QLJ0nOJtRbt8Wqw97C5forz3XuwNvphZenPdrM2BQHDUC2yjvzi0AmKW3xP1uBisHwecVxtuc0BPTicClHj7MUaFeTgTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tls4QERQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tls4QERQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7222C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758677393;
	bh=HIOWATUntY17qOw8VLo2pU2xC+V9uPGp+UmpbPo9Jzg=;
	h=To:Subject:From:Date:From;
	b=Tls4QERQZGIYSlg5Ox0obz2l8D5Owe05tHwZ35+qjdTaMd/pi2QwXaDIcqyUgVc0Y
	 cgoUbqxXU0LyDFMQpeW4yiMTsWaDszlIG/njEKqt/lde+a4wVUGTYg4K1BAn3dNlnm
	 LyIFLHaVU/EbCoxDD4ZTjwWrHrgUxGLClfa3X3EqqrewcuRiWnnibEtPo1K3hXJ1ns
	 6eqe8afZoz3BGNPWCSXbMeSUoOKADPaWLzAAVG8ZoqeqUVb0rGca4/JrD9p1O4i996
	 ErUFYnMI0d+Xc1vPkVhJm9xjYuCjH98iBSgRlyrAZxPIc/YbxmRigD/AAooO2gUkyU
	 DDW3vr6cctZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205BCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867739357.8182.1673798159473265996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb65229c807de900e17ead81a62b638e71e54db7bdcdab01b89b5b33c22aeef2
Date: Wed, 24 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758677393
