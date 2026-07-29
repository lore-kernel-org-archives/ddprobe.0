Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C263DDAFC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785356435; cv=none; b=CTAEWnubOkkbSURvLyLnBgbmnsGJfKj6aINHqGqj3YNax2/YwSZtgg9nhoJTUz7nQuj6K2GYPL5DUTnxrH3LEhvAg72uKkAfb6EMaZ2ANNXWNJodbN0+qabk9FKVudYFkEB03Dic2TZ1PoDTYFI2cI0yqwqTvc7BHwizq/Hw7kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785356435; c=relaxed/simple;
	bh=eEeEKdaqGWX2hX+bC5AJ3HSCVZivFwTReeQ+cFRrR3k=;
	h=To:Subject:From:Message-Id:Date; b=UC2yO5VdubgW0z1VFEERS4e/BQN1x+PXTuoCgwK4/WfqiULqYYpO+K+sVrwAV7TaU46lAN8m3f/CdRTrUtA2qlug7ads0Q8xNuCy0I9Akcs1xhDuENISVRGJs9xvfmOXKiZ515LJrEAlP6IQmHcO/MDm0GWbQNr1eTFBLR4iSLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbwkqXDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbwkqXDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E13C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785356433;
	bh=eEeEKdaqGWX2hX+bC5AJ3HSCVZivFwTReeQ+cFRrR3k=;
	h=To:Subject:From:Date:From;
	b=QbwkqXDb3UAqGUF0gpgY+Qd2fm42JlaXXtlt+0/mH2aFouF395oMomMOD7E5TkJOP
	 ueQxcsICKGoYV7yisBcgLwaXixaOlMxWU4nFCYcgYqRvqKP6xx0ylbPm0eis/wkj0W
	 JETrzXH7Zs6cH5vQTCYUgYgc0sR6isQvzax8zF++7F61m4MOAHqQ0+IKVDEkPrmTGG
	 gfN38RQnfCmFoIEls2GAXqHdDGff3TaAHIZK8cwDG3/nvHBlL43SrpXuL9Y/GbO+V8
	 bXi1pYkBqee7hJ5imV+sW3mf3/wmYd9YJp3d6YP+6I31iPpSkxKIlykRMARl/EsHun
	 95FaUD9qRr1Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FABC54FD4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535643373.16799.6089661873913566781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f0296f4cf3a330dcaa24da187f2ca81b90839adc85116a48baa4018f87381a
Date: Wed, 29 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785356433
