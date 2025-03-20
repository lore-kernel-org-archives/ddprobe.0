Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E341DDA39
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742500194; cv=none; b=ZK3B03Xj7c3jrnVBFZmABfKckQPhMVokvhKMTC9ZULX0Ug4NoPUFdF6tovpix/Gr3dy0LtRd/gJM6yKN5NWmq805r4XK4tf5wUMe0MLfl/lHbISSiMTjspi+jalQNdpUW9Ig7itM6kDTYyJftRtXqRB/M15RHXrCgJoHV79Jp/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742500194; c=relaxed/simple;
	bh=uFf4Poy0Tq73oba5zrdWL6jtDugb/xlLqaXECfFacf4=;
	h=To:Subject:From:Message-Id:Date; b=guXY7EYd++mqtW0YG1s2NAwyhSiyah5F1uDKdLm2nyWFyNrUemICd+BVOopbVjLosGGtrgJ549RxUhUkqNO/rfmwoO08guEng36oFqP3w42obGS20X3y4HmC1Ngymf8k9OpH8kUgtsXquAvYYFkLCs8aSdb/Am2//l4oaLPB/60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD+WgS4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD+WgS4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68A4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742500193;
	bh=uFf4Poy0Tq73oba5zrdWL6jtDugb/xlLqaXECfFacf4=;
	h=To:Subject:From:Date:From;
	b=AD+WgS4GstmpbtWyZ+viMP+kUpuRrY4jawKV14wz5wpLF82tzj2uYAtfun97LmPP9
	 Q/iEFEjSQ7eriuW6i95DdbDvPWrw3FIgMsblDYU4UnpRIYVbqrgBMYl07gx1B4YZOn
	 YxV2O9zzHRaIdH30chTv2zZbfNG0UW77V/z/ScDGJ4yudKbIfJ667/kLAz0LtWxJqh
	 KQ57L3YZrdI4M7HWBHZG0AT7FLc/puazahSPq6/tOnuHT3NmXWVWmdndkgwnIUeyp0
	 aFVpUSTJiKbv7mJbPtbTR+JTVSB+jYIcXANCX4kn8vv+bwX2LsRop7f9EGOhOwCdu5
	 CUS4fMrMxpcag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9FBC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250019365.27126.12041173883398778295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7ba2f6d9345e6b387560e16264ce175b11826869a7300b09ffbd30146cee84
Date: Thu, 20 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742500193
