Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3471374BE1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766783634; cv=none; b=k9kNMPQlExJW/PZp/bl74zfsvdnJtqqagBSLXntHZPkKin03/RRg4ftmEfyDR7xlGIkZjHstk2HacX6fhq4lW+XcqKEJ2DN/KRnpKBx4CSiOAOY4RNUfdm1umYw3kYJa6GkhO8xo79evwd1GX70EGaCdZLDUj57b85uW35xRspc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766783634; c=relaxed/simple;
	bh=ETUMCVa2bmUnf+evYPtuy3SSS4gg+j5mnYZ9NgrPZKw=;
	h=To:Subject:From:Message-Id:Date; b=F3fX4b/36hlUHBXnW5wOn/vFLPJgJO3jeLm+wLHalNZBujBCe/WhOmjtAKtmrWKMHc5BQ/8HiWxtLjnqUGHhu18me2jbHc2QHTlwRc1EaiIyUVk6FPD554Z7P3NM+fPtoHNv3NkHZBN4CtZ8WoCuOgWiB3y/45wfFOVhnFfFiSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6cK7YvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6cK7YvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92F3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766783633;
	bh=ETUMCVa2bmUnf+evYPtuy3SSS4gg+j5mnYZ9NgrPZKw=;
	h=To:Subject:From:Date:From;
	b=V6cK7YvTl/rEz6987MrwaON74KiVCxH2KNoZlXPANiyWxYOYWi8Yq0bOtK7UOvWkl
	 XmcupYvbjMkKEYxUH9lJd/O1Bg3XwICMsjkOc54wlqDvuS4N79lwzBEItVzqt4smbm
	 HcJ7gVPObCUgvcY93F/A252gj8uAAkeb2Jxq21eD2+FVJdFTqpm6SObgyt6N8qOXIz
	 br/6YewjByKbGxgPjy+Isyjd6CgMi01VH5qE8L/ewJnEyjoKlvlkWr3aAn18QM9sb/
	 MTohbDkUthTxKGabv7ShTPS1Y4Bt8aoIIusQZETta+C5VoPsReRugG0/88GzP2IV1r
	 KPQW57Fk/BhiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97359E8FDB9
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678363358.5104.5636368451147773860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b42134dfc67308e024ac0af109bf291bdf258dbe4df85a431c013beb226e525
Date: Fri, 26 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766783633
