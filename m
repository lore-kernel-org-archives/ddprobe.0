Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C76537F5
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715419943; cv=none; b=ArEbritHdBh0B0FYRdpuAj2PaxdavTI7hbrvIcF+rIyLq7PtJ87a3Jyl0vgMYc3mUyfhbFf9gJYrot0hpkRPBZYqaFHOUmmcbATXKXUtN+QMWIoxQ2mwnF260z+P+BVYM6tauvymQ43VXIJU5tf981CFXTMuQ9LhW5HW+0MKScs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715419943; c=relaxed/simple;
	bh=psf0+GH9dBspnFPwpXqHC4a33HFfbcQQf/VdiBvj9Z4=;
	h=To:Subject:From:Message-Id:Date; b=oNFWnWGJlXFOMAHvDeCeyVhuvchaXTYVh0MhoD0/HSyUL9EVDnppr0KZPcaOgBMfJlGD7hbPDofwYBejcRgaCJKavWm9H9sUY4lcC8/407LTYJTWlRL9D160zHaj/NSEXkheT/P9APte+m5jvHIlzNOY+KBXoksRL0lGdECUtSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTvxNR/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTvxNR/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDFCC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715419942;
	bh=psf0+GH9dBspnFPwpXqHC4a33HFfbcQQf/VdiBvj9Z4=;
	h=To:Subject:From:Date:From;
	b=PTvxNR/RvoC8+amAkKnJlv7jjcws24ahm/ZFRqDOgSRBhhPvRj5WQGou46E8xvdBF
	 XBxhPNis9lgqICGlcDFlXkmvwjWspDwhoaFOu89L3kqrBimvsUHrs2jQocTHO7MDvp
	 wHTRChzFQ5aWs8nJchAIZC2n/6lLFC+meUb2SXqVL2wuNscyLHbTu5+bLe2VpzUlyj
	 DwcxLRh0926wykulNoRVB+o3NMUaEGP2ChBq/KZ0K1kYPHGrObChHjMdWhilPH7OpI
	 4R/bvaicsctLzTkmkQ158/XiQ548C/uSrODCbSynCcfNxsajJr0X5H3r1VylGKywtD
	 Ld46tsenvoxwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75BBC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541994278.9223.6225242565456651014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd62041c68568ac56e33be8dbcf62994b9638848828c11604d5b5ed382461b32
Date: Sat, 11 May 2024 09:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715419942
