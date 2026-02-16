Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202E330FF06
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771255494; cv=none; b=DKJ4kvHnxVyWHyvU0KcjeURw5A/VG1vBR7FDMqev+39Nf4JOhYcJt0Vk5b1RaaAfxDC7FRReQYoJ1tCVTGi59CQ0qNrh1HJ30LrhTJpnH/MHw1nDxsM0s3KvJ+3dXsvPXBuix0cBMg5u4KNL1X3ecGigQdKNiuNN7FzK8QVXSbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771255494; c=relaxed/simple;
	bh=hv1UWmTOtTWul48gsFK5/zCPMQXmM+L+Aajch4s3JBo=;
	h=To:Subject:From:Message-Id:Date; b=YtU5x5nW00qfAG/09Ntb38wt1Na+Yw2yodDuxfG7e9e0SM3SQDumAnFP36IO48bhw50nHSDsUTdq0gkrhNPb2dF4BaqotWQgcK/Qspz3fvCvGbJqMZqIIJcG+qECC/lUpQnf6ho/uUk8+7xTSiJFieoykz7dmSTZ0E8PUs5A7AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx7sFQW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx7sFQW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9941C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771255493;
	bh=hv1UWmTOtTWul48gsFK5/zCPMQXmM+L+Aajch4s3JBo=;
	h=To:Subject:From:Date:From;
	b=Jx7sFQW8QUSY6NGIOB+6xBKJvVMaPp3lMtjrChYql9YIVp2ua+NDZBYj5dnuzv0WY
	 LkTkAfhpDw1RtycBjWflu52rRhBFsYjqbQkkkHaU031hCCgifqPuhwggHjEJoxPl9P
	 q93Scd/IJs77NLBdLoDrGywLFXXM4HAuZ/nDQBfmAmgDkpY6irfOmvpFSj/2VNT/vj
	 VZZ3LaTCYwPpDUXjV4m6++FqtAQZ7XiJTO82azyBx6rO+ViP5D+Nw8UJ16yAMFzWII
	 Pbf/PW50q0Mg18PeAtfxzdJsVXtEmq0uwNKhXZEfA2GmLQcMgSPnHeDVqgI0U2PSa+
	 MUbqDK4PzIcOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97761E81A36
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125549361.25940.11850241754432437207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1657c1cea486c8ef41ca1e4fab6324cbba9d6f1984f96ee4eb1fe59b25a26d9
Date: Mon, 16 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771255493
