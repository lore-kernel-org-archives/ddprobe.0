Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242911DE3C3
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739794134; cv=none; b=GBfAcPq1NH3EweblACRXRW5TL/YUugYtRx0b7kJ42LsMycA+EjNsPhzLoyF+3Gr/Epfy91A+YQIllR3rlTwESf1RAcpAI5bjtIfLYPGZTZB5EjiP6CZvhdZ9HKrb56IJiNwBQKs0m9kao4OVr4g+sz+wRzyJQFLg//+8hykqZZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739794134; c=relaxed/simple;
	bh=H7LjvNXZ705P4BF82m9TUiIzkrPP2gemeATvAVjJjAA=;
	h=To:Subject:From:Message-Id:Date; b=HmRZWWWdMWL5oVhnadwbiqXYiI/mi2K4y/Yt3dEHkA0vpxWav9e2pwcwESrxC/Q2m46ymqq7Gox6h/Y3ccMGDV1l+gPJHsOCTNoBDEk+zQlpNbZbG3M4ryAud87bRd3JCL3cDVvbc5WYW8vHv1+U2lgEdGKtEOdRiyGSI+bVrIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJDLvMT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJDLvMT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26ECC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739794133;
	bh=H7LjvNXZ705P4BF82m9TUiIzkrPP2gemeATvAVjJjAA=;
	h=To:Subject:From:Date:From;
	b=MJDLvMT+nj3eO3aQGPYeIUJlsNGWC9JLGr5TwWD4VksBXPQ/GbyENyEnz1FB6Uo3d
	 jH6ORkINDKNEcGaAP3MVv/ddoiP4oHI8PPal8FtDYxReNPbN2FFsBOPi6hVTIRLnpR
	 LGFC8pWDz4K/sSgfe+bBTvGwwyA0hnzH6yUrjl1EadWOxFfYFw5q+yx2tSNtzMsTHg
	 E/htnlpS2DnCboD1rD6bshK6wXE2iUn0R2wJME3fEykqqB5Yqy1mFzLjqjq9CwpZEF
	 zGjURfSXquFCScaJFRgm92kd/JgXA8+1T9p8U54WpoGyU4nFhBsN9o4ZS8Wk0sfl0f
	 IyJAOrTb/oWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90071C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173979413358.10605.15729203715231016054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce44c9a8e26d05bc6537aa5169dafd1b1c70476ff9e456869272b65f0a33257d
Date: Mon, 17 Feb 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739794133
