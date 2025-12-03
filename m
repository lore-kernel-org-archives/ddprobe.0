Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2D6352F85
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764781374; cv=none; b=ljIZ/22rKI9xnCWVmH57ZKPUAtTPaTBTAuboL+r5iR4Hxz3SsYRj2gwLu/QJs4uXG4DnMuItr/53E16g4TP2G8UYKwkLAikt0+WK7TJxmx6I7clkTYp06EsDUpETLlIkw2ESexkOGza8Rw4EocKGejqxpGlaE736rJOc+jUAJU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764781374; c=relaxed/simple;
	bh=ZgvCxdvCSigoy+ALsTxtzdHSk1T4Huw2QMdfalAljFs=;
	h=To:Subject:From:Message-Id:Date; b=XFNmTchN2Hey07d6pBdDDPmS/uxVnGoQzvHeP8o0Mm/cR1uiR6tsGHATxoAp0AamaxyjmcIGRTtqGiZOdgPJ+xMh51n3CryxgVakA9kazRjOQYddnCRHjU4owvg6/IV2PphIBIpLYBZaTutDpoYKDqTwQ9UT7hQtb/8uPTl7X/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=In7UZWwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="In7UZWwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A8AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764781373;
	bh=ZgvCxdvCSigoy+ALsTxtzdHSk1T4Huw2QMdfalAljFs=;
	h=To:Subject:From:Date:From;
	b=In7UZWwUAW8aW6KPUvZtugajj84bNf1R+SLlBB5LTFaEPCX43uF8ENUTMHYQ5zAAN
	 4/p74JtN0qcQiEHVxNs9jZE4/E/M5QPQyLupgpU1DwM3cZCl2/uax+3mb6N8cUcvyP
	 z28tk5lwgjU1/fB1UrwFJGFa+kLhLaMtNMRwKS+jQSB/WRXthvmSI7CYSkaygOyK2x
	 ZucWsYDBk12sOyoxK2O8ZWyX5Fp7YFtctirEeVjUoojykH8MAhpD6CCRkGpKOPCkJP
	 HC9h+UvrtHryMHst51eTsLoTsS68bnp8pafHfXzt8hAM6hbWhOMySMNAzNAMZOv9MY
	 VC7E8VxXr+NVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935C0D15DB6
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478137359.21261.15000016721039734334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77ed05bb2ef973e92b570beaacdc2498e5ca526150a6fe3ff91fa5fc391275b
Date: Wed, 03 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764781373
