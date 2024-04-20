Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6161518AE0
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713649823; cv=none; b=fP5gbG653oMmeFnoN7sk5eUWD3bw8AOi905mBUpZkycgolOFyiTtIJRj76RWarvTAKfxA6qODebxu9xe1ZuT2mbtWpYAhX8UwrkcwOKYpSPE74CEJNJ613SFPi0x3NKC3ehBo81/Bkq44NXNYelapH0nbld4gxkSLD50trb1maY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713649823; c=relaxed/simple;
	bh=gttoniKrUBAlYDf+Z1rJ2HSdFNY9VKbnBqBbgx1OXfc=;
	h=To:Subject:From:Message-Id:Date; b=oFhPJHaHjvvKDKH66jPycRxNVC9CatYXwBafhqVN9NOB8v+06+6rNZy0T+nA5aeNG7UkDdpxa5y+Aj/ffxFv8lruRLPS/Fil+fhwwtU1wCEI9tirOxbMWpQixmod0hrwmECd9yJCGvk5zacNyuzWAtvSUhzRC44iinJmQgxBjN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPYeFUjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPYeFUjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D745FC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713649822;
	bh=gttoniKrUBAlYDf+Z1rJ2HSdFNY9VKbnBqBbgx1OXfc=;
	h=To:Subject:From:Date:From;
	b=TPYeFUjHGdrARqJ23wItA/WhXGG0cWkNEp5F1g5Mo2A3QxrKPjvRFvQeVwy+vMuZG
	 lh+BnY929tTM9pCD/oq2qNc5RLdD1Tp+E9k8hcrb4DMNlc4yzYWbAsJBI3/aoQ53uH
	 vAooehyYsSnZvw34lmG9QFSv/c80LIEu1rehgsY97vGtrYiMOl5ImOfTInlleVm/wi
	 GZEQLaiFspZP1MOvSB7BKmJNUhFXJV+1FbRP6EFHp0nxPvxBK+FsRNO+aQdWuDXtFg
	 xYRy8rkD/a/tZ38NQMemnkGrNkGjzXfjHt7GTqWwm7jqu5GPTZUnr9Q03aHItZlEn+
	 JGFEP1+V48DlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CE6C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364982275.21562.15645277070293985274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b47c1f7ce88414e158c96352aacde231422fb8fc314ddab0f6575402dc79771
Date: Sat, 20 Apr 2024 21:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713649822
