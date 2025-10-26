Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB4263889
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761506394; cv=none; b=Eo61ZrSCjKju7/z1xhZ0GdHa9VghF1t9TrmWxqPCw24+udsgBiSkMsOs8mpPhafnVqjSJAdoMc2jPjbegPN6QBxHWm7095slxrP0pyS27Kgl8jy1yJrxPOX7CBHs1F79RxQcvG46Nkv8VENXOnNTdLP44ETpWO1025PIQYZqs8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761506394; c=relaxed/simple;
	bh=ViyEKAewBGakB3mCIuo35+x2IB8HoTMnP2afrWG/Oag=;
	h=To:Subject:From:Message-Id:Date; b=I8snOD6D0viGMba8oOL1YGTO00uldmn9772kU8jzJWobE/i+muRfC1nDq212liXrTDcay+0lFExPJdUkKA5xl+xb7aa6CDxfS4jRiynlpArLh8L3AJAiWyZ8Rl1nWuGUAAmEQ/ikzYS+qx550ga47Iy9sBgZNXZBW+nzOTVQv8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prTkwWOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prTkwWOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6BEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761506393;
	bh=ViyEKAewBGakB3mCIuo35+x2IB8HoTMnP2afrWG/Oag=;
	h=To:Subject:From:Date:From;
	b=prTkwWOKOlQrnZNnIU+46p1iW0arg+GaLK9b+3PeMiqSVPqmy6tqPEn/4sjLDzkPL
	 wTeh1UYOL+f2hHxaXNWRjgQa45yfI4ClQ8SbsBuX30Ov8JWrEagAqbKl7vdq/CavdN
	 P852Ef4vbSkGoTwlvIOhL4X7zlF9pLkEONCxZakEQFNs2J8zC7yrzV8M2Wrp8gXdH3
	 BHmXaouHDg5YTZ2tNSFcQzo29IdZz2DnfiASYLnCI4ifHUY+je6D6J0Hy/XCbTw9rS
	 NqQfyJS67zkviuA7SSSR04M2mNvoGBgYuqRkihZhsQ/EhBlqE/n0bE0hrGZdZFtmbK
	 9y73ydh7utQoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BA9CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150639358.15955.814531864813460301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfd4d0f597e2dd818ead1b192eb7a300f1e125be0edf541d1f11bae602813ce
Date: Sun, 26 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761506393
