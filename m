Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8AB378D84
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776553654; cv=none; b=sQGj26Pit1SDo59mGuL1wndhjwyiXgaKHkKPA6GAHxoc9i5aOOJrWJPAjF+g35do5YulC8RbXWegmPvEOQOQWs5Clf72Zt+Yo5OmRX7fdqA+1vfXt0Ejtjd7RSsMUe7S/BuJ79IIXMMFapWU6G3BeNPE71UhhRBRlJnROnCTpfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776553654; c=relaxed/simple;
	bh=Ylyyq9Hc4EODPOw4RCFmXpVp1OTTedu/1GWd9ByjGhw=;
	h=To:Subject:From:Message-Id:Date; b=pGhkz52BAsLgP4uckpsiS+Utv2PC5evVmy2hrSEnU+Sdi6MK5OWmOpVNIjbKyrniRvPmweAQSJS1MNAnE3qFA0IzEljJknzTm3nzFQQIRHq6TX4dbhDy7AOmHUr3BR27gUCeCGNCz47YGAEXHfueHqWRxIg9LezFqJlPJBNTOok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibWQ34aT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibWQ34aT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35FAC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776553653;
	bh=Ylyyq9Hc4EODPOw4RCFmXpVp1OTTedu/1GWd9ByjGhw=;
	h=To:Subject:From:Date:From;
	b=ibWQ34aTyCJtXSnUKEgdB/lYEYNPgMEsOulk55jjrofmL9q0ViLuA70pAKpVi9Cju
	 HTBHprgDdiW8RZ9Zt5cFsCyC7+GUhf9TkUJa0zrPDvL/RoUA79Mr+6+qdbFQJoyrg9
	 v2Layl6rG9DDmsJooSkoOX29/Wp4ujLyo6B6s9y2ye1YqfrDQcy1sdMj1IAgMXYq7g
	 Rx0y4l0krg/WQHSX2icM+k6hiP4kEgtpETVksFFGmgDnmv1Pfh07KRzeJRoReDkMzM
	 B0RX3WVhquEzEQrvIQTGzzLA0njdrTrbx2m/TUtJ7uO8qIBYiE1UJs1/1mdw23jGmv
	 OAkvpOIR4W8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF405F99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177655365368.22464.8229925395332210916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f101d0d8e4fa736272e6e8c097a71b297df7b2596b34c0a2f72f39e76e7924
Date: Sat, 18 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776553653
