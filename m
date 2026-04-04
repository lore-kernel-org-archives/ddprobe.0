Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E0414884C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775319934; cv=none; b=XtNcbv8SFjeAA7E3a2rFShEb+WC2YwHV9DoX+TwoFXQkis/X+UGfG3ck9apt1En16AVCyY5AOSuAEDLRZUbaCB3PlRBfJnF1Q1PlewGGA4xdSHd9+ycJUL0Sd9dSbC4e27vbTEx7jrHDwjgeDzVlwtVfQTt9Zq3Ff72Tj9lqkSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775319934; c=relaxed/simple;
	bh=/qu/O2tEkDsFeHk++DYZwVMsYaPTfocoC9AmXu8NQFQ=;
	h=To:Subject:From:Message-Id:Date; b=ILYMjS+ZCLjyCniSBx9+Fj4ctl/kKGQhT6bDkFKGZJV24eLrNMkGBrlVUb6Nrdw9xQAc3VmIFKucaWEbc3rsBk+wumFYsmO7O749lfsf2R7ynqwUwZ4r0XKztRQBj4637NThlxjNa4co8TPWcEOw1zpHA0ScjWuaod5YSnjthx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuRP+5op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuRP+5op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CDAC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775319933;
	bh=/qu/O2tEkDsFeHk++DYZwVMsYaPTfocoC9AmXu8NQFQ=;
	h=To:Subject:From:Date:From;
	b=JuRP+5opEJYtf4E0HZ0OKbHhcWjuZNeOXv4sy75JX1hTpq4e3fQ0iX9ob+LPz/mfA
	 eNHGXB+yUuzXOLCHXeHwRpmx3U5U9fpOH2XgKsgf+LWa/6Qchpea1WnYnLfHqtrl2d
	 yVfyV7cyLtiFdJCJk2YJVJqF7rsW3HT8+misuF1ufJ93etmwVil/G7DNsQmm828f3O
	 tmiGJ2R/Jab0DN8l2NvIv8x4WAqoI+Ib1tU0WCt/1JKv0AMGi4HTT/J1KNHChFJG13
	 k/cUkJrrgyXN7se8XnhQRYWEYUV681WErQif5QEJ6wt0qf7nJijpFDUEyjWrxsbzNt
	 bhsshjqKYvG9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B008BE63FE0
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531993368.19472.16257848069413816408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364aba549e8380b2818c0a7f05057a5911fa687d77bf69b5db56ad577640019f
Date: Sat, 04 Apr 2026 16:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775319933
