Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4AD4499AA
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783635514; cv=none; b=P7HHdhUSJZpFqph1LCQg6oQ0uN1hlFGQJKr504jNI/931p5jRVU6yc0z2Bm5bFoKRkjpCsOBnmS6Y+VUKSMrQxSsISg2KyCjeYpl4O59CGtV+XGJ1PfPexorpCIZyemocHh1a3yt5c7aBEs+8yI47OLzzzMTWJHImtAzgsrS0BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783635514; c=relaxed/simple;
	bh=ahoe8Ng7/HxLZDzyCW/DLrPgaU/CFZprhJDMBM4mat4=;
	h=To:Subject:From:Message-Id:Date; b=GBgeyhAKXUWNyg9pmHvaNLNBoEaWJ22tLHmf4w05mPCoT+ZlhWRlD7xUOikLhYCbJDUQCP8uiUPZczpxmMekTw0YPKSJ4+GNwx/lyXmYq/JOgb+gegzj8utM3vUh2wnFxQnLJVItER9/Qr8xvlwmz9VRykK5UG4941i04YuC8fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1bYLDZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1bYLDZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE159C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783635513;
	bh=ahoe8Ng7/HxLZDzyCW/DLrPgaU/CFZprhJDMBM4mat4=;
	h=To:Subject:From:Date:From;
	b=r1bYLDZ7Iho2y32yvbDUKh92NETWMV3szxkm5w5+kP6FUxulqP6o2U4gQhN+YO+v5
	 enVL9cmxLIdzt/VYzrUxSWuCm3/dSXU2qPTSyTFdGcT9lIAqwxsrRHSQK7AMhd3ptU
	 eGs72V+6RK/oPEdW5jxFGuEZP9tDJcijfZE86hpwi7ofSZa8DmhfYbOHhrcrl27fHe
	 O4olYOVaKqOxDrzJ4sjhK9QAvuRPW+C1Yb67o0PMu9Sso3av6+/SWaVndJxFBOTiNF
	 IrXd4JqAexaJsgYf6SWTZ9+dGnyniNJxw4WqMdJC2lxstSneYFxHCnt8H+QMh7q5JC
	 0rrPpkJ8fTEHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D5C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363551368.22315.2131881394730986466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c06dd6bfd411967e52c5eda82cb47ffeea2761c5e86b3011feec23e5da751d
Date: Thu, 09 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783635513
