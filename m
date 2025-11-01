Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12BD219A8E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761971394; cv=none; b=ppT3klG4DP4SHCMNFQxZpXD3LPLvCBWUBl3J9dePMaoHZWqamEyrY1s5XZOqp1OLCFb0hM6Z/95FY4avNPJVxZXXnaSo+zyOPcclvjEuDqbtPY06v0i4wdnDUA5ZXRfB9x8lRK9GNqRqH1ucWj1WWPQeiUfmtSsfuhPA1krKD8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761971394; c=relaxed/simple;
	bh=HJhrbjAizexVQOrIQaMme4Y5doI3AL0IqXGahbEVsUs=;
	h=To:Subject:From:Message-Id:Date; b=DJnBv6iRn0yxOOP1ORKwCaLxS/dFEZkObCcPPJUt3u3RsWCTG8V8xh6X6bvcCanrAjpOu7pj6HCybg7nhh7ZXqY6i83UBgdFzsGGIcQ3xDZaP7ZahbCvRG2YCucyGtucoE+MpmGgKglWO7h6fZaA5rOsDTc6t/gcH8KQWrsi5bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa+zXEed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa+zXEed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC78C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761971393;
	bh=HJhrbjAizexVQOrIQaMme4Y5doI3AL0IqXGahbEVsUs=;
	h=To:Subject:From:Date:From;
	b=aa+zXEedY3v/k+ALNhK8goXxFA0XW14x0VIww42ur30mpxSqzqHeuSfv9dsMyNiLT
	 30KMhgVfRTST7MlrU61YHTjasUUeIV9A5VTCuiWHLP21DShS3SyqRDTSSX/PA4XLE/
	 UAcDi0YZKdEFKPEYYMOgij2NBugI8VlhwQylmg/dbwOFrTNW2oGaDbdpwJINe+gZq7
	 0nX1t+2t96LDNjPkrwhAm38LwxJpHgv59jiq6XLlmjNvtWngyC5biDAw3/5im6hFSr
	 pq3hxke4G7ZAc6cq4VGU5WJx6me8TIw+DbKCDVF1n6keC+1Ua+LCj4B9+/3JXwUEf2
	 34SCAfq9o3wFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D91CCCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197139360.22559.4146509706171633452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1225a703be69d47bc6a9cb828aabe099569222e37621de744776514699a07e7d
Date: Sat, 01 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761971393
