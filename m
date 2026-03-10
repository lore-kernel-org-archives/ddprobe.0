Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD98538B7C0
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773109493; cv=none; b=JGfOng1ultcyK0cppFA4DFVZBx53Zyb5wphcfHf+jPVRckJ5tONVEaJxJAPfT3k69dIBCJPU91JxzAMBGzqr6Vz/VjDf+knP9BGNTDcx9q0QmkjNDUKJohrmkaaOntNOeM2TWOX4D+ZZcXFr97T4EZt6sXOkpNG3PuSeEoARXg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773109493; c=relaxed/simple;
	bh=BCknG1Jd5Lp2uhn+36uQ3/fP+8NXpmWtI9AWAEuvy14=;
	h=To:Subject:From:Message-Id:Date; b=GFG341G/zc/S+TmMMRK15n1EGS9m4FF9OwSWylxs+0WSy/O6ZJFKZ14MlYddNpLmWRIexJyFAdmCyE5ngYK9bkBtN6k7WVPj0MPNarbdTPA3SHmuCdd06sWkB7rIbSdYLoCOBSP4wGfL+xA1azV9uYZ8jBTA9luLMIYou7qWauI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coPkGq/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coPkGq/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1DAC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773109493;
	bh=BCknG1Jd5Lp2uhn+36uQ3/fP+8NXpmWtI9AWAEuvy14=;
	h=To:Subject:From:Date:From;
	b=coPkGq/7H14x4VN72RpAAYSKHgd3LheROkErmZVysrD7xaMFPJpp+ZZpzfSLJIeht
	 i69aiyC+K+bbi0vABrJxOHgm31jm6LXt3thlFbnoWlp4UI8H/3hl1FMBQU9FvUAd0u
	 PhIXVzTYHg3MEEFcfgYD/iXAqYgujuDoTl8TE3gXsosHj9lqPrEmloe6YfwCH/bTc0
	 GOgY7arOnhx/EijkMVLo32anUGtVjAMy12UbKu7Q82na+fbKzvmN2NdCh+jGTu0tvA
	 1RICkXVrjPPORltnKLwxOesNMvt93WeXoVuj3RKjbG/HZjMBkMo+sEGBIUubyUDTzw
	 AHqanh+gjpNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFCFCC9AA
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310949357.18961.6808301979522901152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c440a9211096e6972a6850af5c72ae55b037dbeb5dcb35efb40882e186d077a4
Date: Tue, 10 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773109493
