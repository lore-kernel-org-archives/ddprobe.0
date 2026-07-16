Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0D5332ED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784188114; cv=none; b=r76PdTVEfzREvoylatZOHi0dLsXiN21L6Xy/VGoav6AkmZnKU1MzjcP2hKpExumAs0fXPaDuh9eXM0C5P26hOzcDMDLtd2kylujthCVq9dTirnffv6fKxM/GAntibHR7wvVjuLAx/j6jmGJHDvDcQgzbS0qIa7rzOBabqDcpH78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784188114; c=relaxed/simple;
	bh=O4WLv+LpQcroL7/wsRd+6uvYJeMEBsmtQdeUeeGfuUY=;
	h=To:Subject:From:Message-Id:Date; b=rs+C0RefpM7wysif6ZhB9k0YtO/XZi7/UK09JVOc/6z7d9XeiknjzGP2OI2MR8Ndiy2DJ/FI4G5ub3lH7dh7JRwgPAiXa97gaQtvGo/TKHiJpSnr8R80BPaPQAbxDgfBwjgHu+Lx41wCjStMlRROu0fbw0J/jUwIU8BfGCUFycE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqBQ83IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqBQ83IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6A9C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784188113;
	bh=O4WLv+LpQcroL7/wsRd+6uvYJeMEBsmtQdeUeeGfuUY=;
	h=To:Subject:From:Date:From;
	b=mqBQ83IOtjNLMMAOSiiZYOZP3donud+YHA3OVIUKrXAaQJN+iu7ha4VPBt4wfN/pM
	 tWU8PN4AxGOLDtHK+qPDpG4/C8QooO/L0hcXMkGhBPV34MSmYS6hCuuWhKvE94jTbr
	 a8jxw8kl6NH7/zaLZ/EEfitoJLl2IUSdZ4o1qr/LOH6MvGcO9qsY5B6xNHDwJpHVJ5
	 g+THjCEF9g1clFlgQ7Tct9sXGpaZYozbdsxiFNwUI110VvltbpvjXcf622sx37rRNC
	 ZglH369q5H17JG8aail0YHbEAeds/+NsuImGApo+sfSHhvv6X4d8/oHW9d5A9YeOpI
	 ELijj4fbcHmLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A5DC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418811368.26158.16044491558771751735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13e8120de9115738a8b09e7a34f54b675e62de41323091b14a7a07bd7ee8f93
Date: Thu, 16 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784188113
