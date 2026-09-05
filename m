Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAB92F49F6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788603634; cv=none; b=iNO4L3vlFnlT1rMIszhIf2Un8iSimCcq5IbY7BSDT4AgR2anlVQlEAz1MvI4nNcGvPVDhFYw7cplwXv7uyUxdUZNPXgCpS4JG+EKn092+efSryzDZ2FAsdtjhWdkjPdm8+TlwWxo/GzA+KEqyNWvWkSAXgGSFCmH7wOTwjJtcOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788603634; c=relaxed/simple;
	bh=jVjRw+LkkEpoVrdWELrAkJJD/orhf1uOO9IOYyjZCiE=;
	h=To:Subject:From:Message-Id:Date; b=bmhJuSrU9pDXW+yJeqFsPbGoxchbljfdoUIUjwpG5rAlvrK+qUXLOQENNfiaIXgnqrYW0su7nFDcevekdgFFfyo5Ln6NcCVPw2QnGGCcDgDZvl3mRmzHNOyIpjXw09xAUv4HAEQYFnW9/Fk2EesgPYygIdsdbM5eHICO7bJWYAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiVTdgME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiVTdgME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7A3C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788603633;
	bh=jVjRw+LkkEpoVrdWELrAkJJD/orhf1uOO9IOYyjZCiE=;
	h=To:Subject:From:Date:From;
	b=jiVTdgMEosVb5O2ukImHTNkexiKAVqI7QeJbLuOUYeiMHcmXLffZBpmBHL+1WrFwE
	 Nc1Nh7GoC4VzdribBG3y4sPwTYHfDc348Mkh8sxhajcsFeHRkrBPu4uigA+YU6jIrU
	 n2gkSFN/Oy5/Yp3FH9kmOWRaMyFaq/FdyKo2Qc7Eq2UfpmC1sjZp3VI2X4Jffdzpg/
	 ubHSHXX4ijS6WnF70fPlaPOpl9I1E9udcfJTZkp3bsZWW0CkfHmVbV2G0i6YA8rebQ
	 pcWgqqzqkS1JFdd7t+8eG+P9NNTMn+8mGixTuKFFt/herStGuFhb6Lx1reWdpDJgjl
	 noP95or5XRtww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB954C79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860363369.11828.11429595686299022727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d354097e4013170a241b5687665e466efa4263e9546b884bb4869fcc419a718
Date: Sat, 05 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788603633
