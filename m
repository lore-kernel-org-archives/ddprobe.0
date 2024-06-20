Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4901B9AC9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718908224; cv=none; b=qHx0snteApvD+x9BZZNnrCiCvGJvMx0dtieqDc9lFcZHP6OyKcobqi2ac8HRURGoLY99cZaxfScU2gJvDUKiRseAxSHYlatA4vPe6XUMfgy0LqfkD/qKhpb0pjXEvYE8ox2N1KfMsYkq5Q6nn+v/ZKnlloyK79FzM74fKSBBHwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718908224; c=relaxed/simple;
	bh=ArdKxbsgxejEPeYn+p3makaw6+x4SgRw5knjji8sekY=;
	h=To:Subject:From:Message-Id:Date; b=luMJtHMcJYZjoR7Zw+fzI828fRejuLKofYSp33w2Uwu0Fx8OjtCmEEXdJI2u8rcUyqAijDLv00d9F+2STNvvcEDwOLsnvGVzPOYjzKb2PrFFSPhGvxe5aci6WQq7kW08qYfE1NHVS4Bu4H0h4KQC9KWIOGNS8jIQ9NJFcbtRB44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExO47KXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExO47KXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DEFAC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718908223;
	bh=ArdKxbsgxejEPeYn+p3makaw6+x4SgRw5knjji8sekY=;
	h=To:Subject:From:Date:From;
	b=ExO47KXvSsVkY5sH3tw/wBJqiNJuuh5DPhzNyGH0DkcAANrTKD0yejVyiHD5QtnZ0
	 8AehifQpLQ9tG4z9MzASLcRuScuxCWfwQVlXZ0JCo+dReXTmWwMgIZRIgeICYZuey5
	 ktZjXQ65ATxiweMMgwREgLOSCEm8OmCrKakOzVPPBLQCKpS+gDmle+vWiAV4zFRv1/
	 s40fwrFlupA9Q6LX32kHzIF2+D9+5wEbaJ9sjMoIpsTdygRsLv2zFBHr7nihNoE1cK
	 qYGTBDXSPiz5ocBtRzx3hRHb1KnA+52m++KU/7SoEbkD90XqL3/kv6uJYII/xjnWJz
	 QrKAAD9ZUNcjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C55C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890822282.1078.16552399050352396675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07d1ef91deb8fc3a31942839517b828600f02963b023452a9e781a470729aa4
Date: Thu, 20 Jun 2024 18:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718908222
