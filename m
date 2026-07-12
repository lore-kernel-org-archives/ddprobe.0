Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459EE23393B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783895314; cv=none; b=cZb/rp0FnwqPHUYtgO3ztQuJ6+n1DC4DkU4JZg9tNdwos1GUEkYqSfwJ7dZDp8/DmKoU9OZlBTqmk6qiyklt5299lovu++yI479mf9V02SoKBrTZ5DBf0Gf7T2MLMNyz/FNPQUY22vv3VNtVswfu5oJ1WDtKOVgl+6vJx5bDgH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783895314; c=relaxed/simple;
	bh=YDUgl9xP2Rb83ykjjQNuMwAm2r0N3S3PNLL6zbm32BY=;
	h=To:Subject:From:Message-Id:Date; b=Mz17dJHqbkug76g9L7XjYyGZBEfEvUTbKYa+KCPNbvFvj2EdtgJpXK24WXtrhyj+/Q60lBa0sIVRFHubD3QioZ2LiGh8eKcmFtjanaF8FAAhbSOaQ4QpIHxy117OAgtKDhGObxLJC5J1CiqddBiczT37+Oosr5pAGeUW4rCFf6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R59hOHRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R59hOHRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EBEC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783895313;
	bh=YDUgl9xP2Rb83ykjjQNuMwAm2r0N3S3PNLL6zbm32BY=;
	h=To:Subject:From:Date:From;
	b=R59hOHRVaYQsRAm9mcOqTMfFj8vIFt0D2ro5NXeSzaiw7vdc3MBshOz5AqqdSDM2y
	 lpsG86WloVSI6pDQfEECCGtJIVwwZL+/lO6Gyeg5XBn+o4b6+13wq7aL0SMMxizxYP
	 TEiOnljKqOJNdCx6eu3iwYwaiDbl9FIJCP8khqDg5lWOKKCgUwKNH/vr6t9zKY6HxO
	 30xJZ0Kte2YyScXPY030/kmMiLmIkx9rF6BMzSnu4nazr8JB6ZHqx/mtchNUId6ZM/
	 og/DBNpVC+Ti02aFYPrH1tmZMZ+e8gSA1RtCojlXmsTzY150XObCIhGNIMKZlspidS
	 c1Jj7etujDyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC42C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389531368.24982.14698738337873170616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fae0596772a59f868e85a028f8cc4b31a741025976de33caa745b0e2b43c8f3
Date: Sun, 12 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783895313
