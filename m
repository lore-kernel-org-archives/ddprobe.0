Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4164D7D25
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789644034; cv=none; b=TKIAcbwMfyxv3bkSeJ9RvNt64imX6C2yQXPwtupF0vZyFd5iaaFjePwDn+vB3XcvGuLqbBnxpnMpkjHNQCwaHifkslLuvmImh0/SDNZK8Wl1dsqI+YfAKofbCMsXiBQ0l+XaD59AJB5u/c84SHE+ZEQL7YkjvScwg9II2cy3ER8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789644034; c=relaxed/simple;
	bh=9HOODLCRZnHlhRxjOM9pSNZk2rCr1KZGOO5mYjbag3A=;
	h=To:Subject:From:Message-Id:Date; b=hm1nsH9k4XJZLolZt3xzPxGXum6L3Cm9DIDtXphBMclYjcThwo0k7Vw229jCTZfIZOK3wrLnfgU+oBhVEITyuAeyC3VbCFKjqhBQ1HsWOxEgGsOac1YH30kJFB2tY4XdtgddPRCEEnuD7YBk/d1hmQusPtE7ix3/xl0ye2PAlGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ7U69it; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ7U69it"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19CEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789644033;
	bh=9HOODLCRZnHlhRxjOM9pSNZk2rCr1KZGOO5mYjbag3A=;
	h=To:Subject:From:Date:From;
	b=fQ7U69itwat43SmUKqmkg3ySx1UBiEYRFehoKPFtQ29Moap5dRbkccz1IQ/5a0JXE
	 KQoPr4BRV2UV4tVr7zO4oq3xs2ObqSMSUQ/sctgscjkUjhOFIRvDde+FyekqVr3v4H
	 NAVGVAcaFsKqZ5X7sLN/mkzGM1RlNB8XsxGI2aVG5Ta9UZ0ebdfbcBXtXIAdGiSz7y
	 eL2sPjOYwyUUfWwMe9Sx4zF67a2bEeac/Bi5qDUAJs2/gw5mBICxTokX+gEQROWjO4
	 k0qinsWecZ7VPDnPpg5GnnO/3V6AnMOee/gHG1rZ5JJKUgfd7ZckrRox4l8nk6umo5
	 j+q+41eG8rcDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB671C982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964403375.9782.9822883380925128504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cf25a35715783cab29911b3cb46f7f15254e7795f82bd42bc2dffb9029caad
Date: Thu, 17 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789644033
