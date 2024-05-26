Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCC3B669
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716713663; cv=none; b=X+0b+yvtleLtc6dpQojCARaIvkQhARz/Y8j2Sybb0QywmsXAphX+dhUZCKZl379BWtpQ6EBmtqGSmwfZkP4fyBzT7i3O+zbZZ7W4IY/N7/XH/dsuLzfX5+DVBS8YHD6zvdFSNr3600/Cw+PcqCTxGUYcc3O/r56V4FSPmZCma4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716713663; c=relaxed/simple;
	bh=ryUSkSP+0gIN66kW0UIRtHxdl+twhmYtb9GUkx6rgnA=;
	h=To:Subject:From:Message-Id:Date; b=BLYMKdZPvtODUDjpR0DAhwhOzddjmKvJxy5RKK9hR4zvn6GEbHfoIuJApsACMLVB9Z1I53Ta9USYg0+hyCVzJd0SK07WC0+puOBGtBo0JLIsJws0DawG19w7SQgiOAASmc+XAM/Q/12tKcjK+6Vf6NFfWBStKtDxHVrNCEVI48M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGZJ2iV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGZJ2iV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2CDFC32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716713663;
	bh=ryUSkSP+0gIN66kW0UIRtHxdl+twhmYtb9GUkx6rgnA=;
	h=To:Subject:From:Date:From;
	b=XGZJ2iV2l3h4fif3pXwhvV8GwwUPsrRgi5NZECAF2bc3mUYCDK9fOi3wdIXDyhbMs
	 TvwY7ot5b+9J97eecQ9US/n8+4t1ibKGaRdU/cn8jUo/uM4uIW9shCbFhFHtv0wnwt
	 l1LMOTlrbO7SI8SvAWwsmItVM3jz8D6XIz77tcQBxTPM+JrswgA11ClLRqwEcvQM4y
	 mdnA4XmbY4mWP2ciHqxJr33ppFRyJGvPI2aGvSjTbyrH06t5LXWOORCEui+Q0ZtX21
	 y/n/aFBKaVI6WqH6DJAngVwClBs57Tp7rSY+eeOBrqrEKxcH++RUg4b8tIftyDcxR6
	 AwAnMCf3S6jwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE2EBC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671366283.7798.15471961795369320223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593c79317d06ff5cf5f7e29c1ac4a1a37ff605200cf6d2d60c33f1b19b7633b1
Date: Sun, 26 May 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716713662
