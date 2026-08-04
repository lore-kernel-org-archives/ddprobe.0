Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4773DB651
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785849034; cv=none; b=BMcbpgjralZk+0WEcGGfTCdqDAbAz25CC7r2gedrJg2EiGN/f0WQmJMe90IvFx0NMYptV9JRI4mMZ1ho0blcj4GpiyivGdjwBqFSLom6D208rgVTErK/e2qLqjaecTHKn4qc4RkGUTXaqLJuUhPkhfnyeYAAmAU8IwZErdcaHms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785849034; c=relaxed/simple;
	bh=qUrPXq8QrGo7G306wmIuok0NT1GEeZrEQqlhv+gN3SM=;
	h=To:Subject:From:Message-Id:Date; b=BccdimtIUl41oyoYg/L/qTek3rLwy9lpWgM3mXdD3U5C2vSKQpHlyx4X0y0j4nh16AMW2CESR3UvkNvOduXoIuNVBtyARScfdkVucykvrPbhReo5HQ3bEG4Bw9fBlR05k/OnuPq6SmxAK+ziUaRGguBQhfbN/KZptcfmZkwhwqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKsXpiWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKsXpiWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11AAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785849033;
	bh=qUrPXq8QrGo7G306wmIuok0NT1GEeZrEQqlhv+gN3SM=;
	h=To:Subject:From:Date:From;
	b=XKsXpiWXlt8MYwkdXoz9LFdNS0uT8mULcR098C/oiBWXCUthsN4iUAeDvguGa6YQf
	 g8k0ruG4Lyle6HP0gDwCS8aTvPOr3e7kLToYonHrPFBGO8vZOfDkpAO0ilGxODXW3J
	 9S6uKusPzgquDa+GcP0gsMAEJttQKC0aOtXWaAImv8jKcs2Rxnb3okm0f0XAilxJep
	 ul+w1ZDPc3gblnp3s2U4mndsakAOmcfdJ6nHWNpSE8KCatcJtlRP1XOFSTvp2fPEtt
	 LJ7MayO7CzGxxZWPiABieLfoLHz4EWQ7HsHvY6Aog3++rErEYIadGGRIP8L4Fwb70K
	 63Qo1vEEDsxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE0AC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178584903370.28413.15420656634498294145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774155255fd5e341821c41aa06436546c101a162d4df34a593597ba80d5aead8
Date: Tue, 04 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785849033
