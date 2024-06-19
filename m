Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580A414F9F1
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718812763; cv=none; b=PBISr1ny6/yxVrRK7Xc05aRlHKn/y+UH1Cd+hswOLoBZTQitiDuxLTZewoM9urTZ0JO4uMH4Bi2jQiS/UpXjBaQ37KFT1l3LMJsTZe3tmcGSRTOmafdIdfL93QTqzxdmUZl4+qSU2za9h9azPgOJ0z0r5ZdhsydhkejRyvURKJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718812763; c=relaxed/simple;
	bh=NR4i0E4kXIHg5srpPQKt6XezAMaqE7UMFNKViSWOImw=;
	h=To:Subject:From:Message-Id:Date; b=C/suAM5YAb1qfmeVdAED0Ps1UOioM1ZcMk4/RLLGjuAV8VQNkOVcrzJVeA0lQhd/r/Pgwwq1/71pvU/z7E5YmseM0ov4bfui4hBFyFCuFuiCwdT2E0+DCuOrrzdBJL1KXoOcuk9ZxQRP4dGtN+VleLCjiZlDLkwPdGzW8NKXAMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihornPa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihornPa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AEEC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718812762;
	bh=NR4i0E4kXIHg5srpPQKt6XezAMaqE7UMFNKViSWOImw=;
	h=To:Subject:From:Date:From;
	b=ihornPa+S/KE2XTTZx7TgH3Fl24z90YHizJR0qpmx8Icr1cERuINA0Svf7Qjtv2Fi
	 UXrhRsuP8RhbKuwOLXX5FMZEmE00uDOHzXv937WT1vJYymV+GB0ce35L3JUxm+ANed
	 7WkO07eiU1tgb+KF06TrcLv6gKnK9uBXfp3hHoikPWErWVh/BVxDZdFpK7tg2A4DU8
	 NT8Nn6d7SDTZgFWqeEZlEXd9rxsVJI2u/g6WDv6i0hnNsCS5AjXY4KXIAwclAEQ+UQ
	 81Bj7Er1vvmlkERNjD4bEezrsF4C0vnI7raHLtbv5diVaD3YPRY7u+RXxX0DKaIkJE
	 6pjsdC7rjxZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB853C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881276282.370.14446759035630916910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3657a81e7b925a10ab754e93ec23322796bbd99fe00bcfe1e0f4ba30bbacc6
Date: Wed, 19 Jun 2024 15:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718812762
