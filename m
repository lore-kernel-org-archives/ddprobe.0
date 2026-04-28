Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CC744105B
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777381054; cv=none; b=SbIXjSAJEmgLcaMPuvrigNJ5nqYId4qs0/TT+Ek00tBeZV8G30szNtzPoN7JL8UIxQ+Tm50RJAEX+pPUaxPfOQ0Qf2k0PCSJGqFnfDmsTqT9PIglHrsssA01zjAx0sOfXMYRnDrvRkAE9o/rPQ98JhcoQoeY6bfhcP+YdDxmnWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777381054; c=relaxed/simple;
	bh=DmI+nrFF60NFjQb+X7J8Fncal78F6cknbI9gEMOsowI=;
	h=To:Subject:From:Message-Id:Date; b=LXc4Pk9i7IdvV0FowKTJOERLUlSubIgFvpxPll3v4XoTb7aBsAYguTtUJFZk34qIfmk+hAi5vMsonjkFb6sI9doV+rdKHCJzKLryIgVL1BTj/B+1m8T4mRiWPBOD9SWAZC+ntheVKNhlgpWCx30EJ1sCR0RzWlHK46kre04f8e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMf5N44c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMf5N44c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7993C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777381053;
	bh=DmI+nrFF60NFjQb+X7J8Fncal78F6cknbI9gEMOsowI=;
	h=To:Subject:From:Date:From;
	b=iMf5N44ctZ+9lHl77P628SA8/0q7qrzFVWcXwXLAxRR1x3ZV8KycN44dU4BqFb24j
	 mmFa+F7WCbyk7sPO/feI8XAXKjOgXDPZk8b4de3K7rbPp54VUd11xjJWw2+rFGIOrL
	 F3itRriKIJC3iEnqLcyr5rj8X8ylD16IZiZlps2nW/QpJPqM4aCIWj5E9HjTf6kBCf
	 p8dlxe/E1107BKBiJVzJLgYyk31bntW5JpX+e5V4RRmSLfrREpISYcKFLZD9PuvvHc
	 fpnY2oJkvVvl8TykoTqab+UdgrWQ3QOpcZVOcy98y+TmZOHlgPMXVlGdk8wXADGH22
	 /a0hQ9zFnz5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2F5FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738105368.17771.15080623423194991612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfc0ea4efd336919da5f1ee7278ccbd79dfb31c765d0c7bb926249084f01343
Date: Tue, 28 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777381053
