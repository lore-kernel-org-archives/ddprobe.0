Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C050225D6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720894823; cv=none; b=DP2LmG7iDCxIrazPiEDUu/8tJnQJXx4TZKkG3W0LH4PeoCqlRNRrXELht2t1Jhb4rTEd2RZ1G0hq6SUzFQ5R2YmZRkxn2rnX13QD3lFvv7+R7yiejIG/4s1dsdGHwCaRkxGCGZbH+e/ErwnroK9W7naECdOPxyKK+kERXNdYwCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720894823; c=relaxed/simple;
	bh=XTPjwedqDPqEDLlLITonrwDogUq6A7ILHvSpciyw4tI=;
	h=To:Subject:From:Message-Id:Date; b=TY8i0Y2tlPs/aq5YQdftF+sHUrardtCoJACsQfGtDss+mMsxWdoueugqX380wPThOOan5bKkszKUeYWZ1KjbymIIezMQHKg4HFnTAcFY+WiG1+mM6+PBVWn2101Zg4hC23lCLtoQcU6r43CMpkA7ZpL5C8zsqtOktMoqugBTJUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5McOS07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5McOS07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD35C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720894822;
	bh=XTPjwedqDPqEDLlLITonrwDogUq6A7ILHvSpciyw4tI=;
	h=To:Subject:From:Date:From;
	b=A5McOS07njXSCZ8jP3e+wGIPxErEbFw0vBP4xWDJs+DdJGN6j3PyiagBFDMig4/Xo
	 fhii4BvZ369bS/oJNpHCVkXQ0ZE11hxJk2pXeUQ2rqmYDzuhx42PWhj6XSgVwm/dAj
	 2SYKeUsrj/tbe3i4VZsu4r5XA6c1eJkgf79fyQ8g9xJj2MucJk0P3TD8EOjWnOEFjf
	 4W6UpZZnlBO6EosjwsN5zaPPRwK1NZ1X9Zf4dmPIWLkFUUZFLquhinLCkTlbdL4W9p
	 XlBz3U/Df6x4hZA3ljXfEO/arPVlweFNpbRJNQ6XFVAQFY0ifqCg+tvrBkFr7ADrYT
	 L3uVxAhys7A4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B5AC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089482277.6458.5502656293090256483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85608bf247d3d4ba8a73c98eef798c2e06c3bc953c9592d0e15603c9e4c98f4
Date: Sat, 13 Jul 2024 18:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720894822
