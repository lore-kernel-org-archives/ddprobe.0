Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A82824729E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749677995; cv=none; b=dADJqYaCmSGFYdZHCAhDz7OX0dSqi5HW2IRmfNhgnk1x1ehc2jQGuDw0ZLHIlCWlgE5nHqxDc3OfDyjl/CgSh9RyBh8GxKb81sgu6d6MZQ33dMnKo2Xe6hjxkpzkFgqbnyH+O90STvUguqHEdvgjY4CohKuysn82BVRhWKJD/wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749677995; c=relaxed/simple;
	bh=cDRvmgUXpp5d02sEMwE9SffIE33SaykXgsBr56WKJb4=;
	h=To:Subject:From:Message-Id:Date; b=W0LqEIQICaZxFfYZqgpFVNFiJ8Uf+2KXbEG+V1LEeDdIWtoFjM/4qQxmMeehRI85897Y+FLTalONB164YP/WsFaJUM4+iRLc3JtmJ6t0wo99UQDvQSoBKQU41rdenX825I+zz17Y1dzjRmwXCK8Hw93KgpDtNOgUgTjw7T3pzlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jh3hTdu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jh3hTdu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8086C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749677993;
	bh=cDRvmgUXpp5d02sEMwE9SffIE33SaykXgsBr56WKJb4=;
	h=To:Subject:From:Date:From;
	b=jh3hTdu95m3QbzktEfTBFWdfOzEDEtKzkcEUR+hRFoM4X70GUwmUy5oafNCg4ypM4
	 1Bgn24Kqt9mrB1ADlEV5uIG1kXXUnGx8kKQNETUNIYYYXh/NSAMTrBD1RzWV4TwFks
	 d2hiAr3/9r9BOWrrEOdW9Ll3HTf8zizi9dJqJ9pBzgrAAZvW+enaxvsZCx7NLihtiM
	 75b6KSCAMbYYEpAeUPL8RxMbLKUO3uMkYuhl4tkJy4nWLQlEWhlNORop49o326eU0/
	 rt/nGoyEgtmH2T6/NBd1ayqxnYe1nLWbYw9y68Qvl3oQmLFTje0d9VEpHNYhiDjyx2
	 XbDPYgnMOqSvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F8C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967799359.442.7333216894969147160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29969cd5785f2bf4a315f7fea12b30a2eae90fb66a9b2e063c23e3bd3a75a766
Date: Wed, 11 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749677993
