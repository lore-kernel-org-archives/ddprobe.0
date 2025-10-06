Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B8834BA37
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759712994; cv=none; b=oWNlsVkr1fCU62nIMpEiWxeUMX5Lj1Qf1MiaAsURkCuY+d6p3hA0owCDbdTua2LVT2lCtANgSkbJMeTgJvysfO28PecKKwOetbV5X6M7dBA9imRLDjB0U611QdDqnKCUO9k/7QjrxeVQF/sy1+yCiUBwcQhVZpX7bJTusx6Q5Gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759712994; c=relaxed/simple;
	bh=gZpjqG5oTRrnZXukmc046/KclU+fXycvJ/O0telK/fs=;
	h=To:Subject:From:Message-Id:Date; b=chMy0KuEoRn3zdb3uH14FfmdZIT0F7SHtVfHX7nKfKkXIbjZTf27OTgOIImI4G/2B1AOEthv7Rlnd0g8vU+E5mDxI/CxDmI6HVrCoSHaAOhNd6lT6Rd7LM3rBTqE4bluvLh6IeEKFfChlMcwPV2UxH5ckRSYFNViK5jhorzi6T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqUaAM0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqUaAM0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D45CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759712993;
	bh=gZpjqG5oTRrnZXukmc046/KclU+fXycvJ/O0telK/fs=;
	h=To:Subject:From:Date:From;
	b=mqUaAM0YV3uEPNEUxCbuukxFPpKQy/UWuomtTob5UfGQKEZ+VwMuh3ctziiZT8aEI
	 fnFAN3boqUMpjIzcDAMkBNYeJQ2Pzmo8NGaqvSPmRedMO0qc+wHi4vPH0MUqsW6QXg
	 gtg2tPI9kUjdSisxwO0OMWJ37acQSnuJ27fhzq1KiOAtLPTQk2/aKz/cI3linuXmJK
	 aXJ4rKo99j/LOT8BuXrF5HCbwv1rPtmPAUaKMXhn82cQYCEuujpz+VUDXq+2prm/TG
	 pENYR2/kJFp50k01x0ts6hIdfomMQ127znfkI6OfeuEiOWSbF9KhETlQixgiFMvMBu
	 dVENv4DIA8l2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F489CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971299357.30461.9373525734274152594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8c61cfe59d42b639aca16996b9e4f1e164d221b432bf33c9f5f46dbfba5252
Date: Mon, 06 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759712993
