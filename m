Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B0C3BB48
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754056194; cv=none; b=lpgnvylpEL7L9ZuDx9tDZNYNgY4uYDZFLvH3ZEyfDAZN2fI3Q0VRKnjLirBvUaAKxiAkqwaDXcOHLV1sZgvyzMDtagC2Z2QAOo66+0Arz57KIjJfjqDiNXw0W3hz6EiBAJlrFSvr5zqm3qNuJYxBpLMyGljVq6XOeuZDODYiW9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754056194; c=relaxed/simple;
	bh=/DBRfvgLquNH/hp3Lm2zGkyPga/WCKjYPJ9TT1OH3Ms=;
	h=To:Subject:From:Message-Id:Date; b=mTs9Y+/iOj4meiZWsLXVCLYAgs3YxnFvjiVvaisgVFeWnx8TiOUR0CB2nGbxHxznRIYpymCxusrSryhvMReqE2hPJBv6FBxiGBIP4he5SJWNTSufJDb6q8oblnZUAvjl5qjBTlj61UzusBn/wWHFzJIFNNyCIOxXmoEfpLhnZSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKKNUO61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKKNUO61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4848C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754056193;
	bh=/DBRfvgLquNH/hp3Lm2zGkyPga/WCKjYPJ9TT1OH3Ms=;
	h=To:Subject:From:Date:From;
	b=jKKNUO61vrq2KtSmFRE6rZ/pWIhCy6gbnYPGe6jtGSTFz6BuTMW1y5yiNq//5Ir1z
	 kBAgSlas4uMN0D7bkkAcMYyZ46tPihLKixkwj83UO2z+tZTG2KtAybg+sAlf5D042r
	 fLSHLGDpVY2L7FSQLKiSxEod2lzigsn9no7+Gq8F0FdHV3PpvGa5ZwuOLKXw0irj4Y
	 oQ5SxFNjBTnC/TdMvuyRYPE7uXFjQpWewD4AUmeS2gNkXHWSwuJ0wsJv0G+7psIJhQ
	 liUJFqMUJ/5M92Y8ePAwXIc46BHyKDHljwY+sdxyRKGYJx3ArWGBGCPnZr4RIDNLUS
	 XNMQ+9D8sPKnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139FC87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405619358.28446.15758302783456871406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad37a00dbef1fdff74974355af883adbb72767e5e4c30828a6f177eb61974d7d
Date: Fri, 01 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754056193
