Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2112036164A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775030734; cv=none; b=Ju1S32X6CSe4H7zVN+yJDp4EZxuP9U85OoFxQhpvpxhSXw6WDVY/HXNE5Pv570qYQzllmU21i+ndxyewJb8cBUPK8l7H1BUcQgfltLNJgv9hkg6HDjTQxIYcU3kqc+XualIvBng4O3hrgIjSvZ/ywKnhG44FXHciKeDcJ7qlUVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775030734; c=relaxed/simple;
	bh=h40f4tRrYTd8A9ykFvRGzIWByBM5O3Z5Pg6xF//VSh4=;
	h=To:Subject:From:Message-Id:Date; b=caxNGBIjUfJQnM6bcCYQKYy2Ak9SPjLG27LfVl9sKzxAPcwucjCuxtP9CIMVUoO6NN/LJny/xdkuyAkNM9c/+QEI+XkC3yOAjv6mC73Ut9X5ioqX2zlhDYGEAhDgrlqeWiK0gtSW3SiTlSBrmttKGhMJz/1eSQYwaT3dFbwF5u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxfuUhm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxfuUhm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C87C2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775030733;
	bh=h40f4tRrYTd8A9ykFvRGzIWByBM5O3Z5Pg6xF//VSh4=;
	h=To:Subject:From:Date:From;
	b=qxfuUhm14Xdgps782qPqdVtc2TrCaoZoFAMq2IXLbsnjE7XxpBurf7HUdW7gKIGUd
	 dbaXbzEbOPFZ2B9z1TwSOYTdEvuWyPxnR8+N+lDPdZkJOmsevMPYnw22E2X0Gy8mBF
	 NtmsaAvFk0Tz6xKezsuF6xDhCfmY96mec3xLy1rg4cjCx2p1CrpAXZovCMV/VCSx/+
	 HbjWh13aqLKs9DENsycAbRldPXQR9NG9koR1P4/Xzqt5EhZkLs1ACXbL3W4oFY248I
	 VJBc1vplPRvd+/X+bfGTcFV+cCKkdjh30e7rzuA/QT+dgVnwxn2H9xrYOjNnIMcvMh
	 a1Gg9FDegOePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF7CD35157
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503073368.12774.11317777788456057453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017629ac0f24a4e81c78200303a713b808b79193ea675f901eafd84fb8c9b153
Date: Wed, 01 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775030733
