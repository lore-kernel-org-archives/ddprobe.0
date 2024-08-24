Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4D21EA80
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724514354; cv=none; b=Wq2tAUdjIvP/eh0hDg4XTOd+V2Z5R9jxkycwe5WXE6lysEWfKZ0FeLKw6D9n/WY8QcLnagMlzVn15KQN01h29yhE/dQ0Q0K27XDxXEcPtuNEZP3anIuG8ljKrCupp+Nvf+7Aiyi+2K9BDZbarktBZmNIvfETQaKp0KM3WRmxQFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724514354; c=relaxed/simple;
	bh=1fkM4sW0xxsbqAFVn0kxy5K13FhM51cTpX+O8Rvdaew=;
	h=To:Subject:From:Message-Id:Date; b=Dlfslr1UnOBxHwblswycJPuLsW8LAf44yqLTjjKjnmsZ+hhbjfhwwWmLDYivrNjpLpneniAHKvt8GOQRZRKNLgsV6BEg/qwGiay1RHW10BfxdrEwrsFysBnZseDfVDJAFuOGguJSNav5nSVLKCTAgSq/DqdXc+qUYnv4Gy4XyQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRtTM40t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRtTM40t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17D6C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724514353;
	bh=1fkM4sW0xxsbqAFVn0kxy5K13FhM51cTpX+O8Rvdaew=;
	h=To:Subject:From:Date:From;
	b=VRtTM40tIFNIcozS3IFI60/AW5D9FpiKaVOZ5kbyi4M9s8Ltnal4ONpOq0ohyKHYU
	 R7+ox3cTLldLM/Z1fR4GeT8vxfgqPeWdL4P+LFs0Op7o3P/nyaH1myaonOgR21h2Ca
	 Ns8zgkgU76jAF5s/0rOPrIJTv7Y7WkwQbSI0gOh206ADfa0MeLXSfuILLW/QDO0Av9
	 Op6pHpb0yuLobNaRzidFKNEOPgY4LAUA3AUjOqkPVFhXXZ7sKNjW+w0FObMhiR/+m9
	 V1Es1laHNgm7BHaJD2X+0kBax4QZmg6YYOXDU+/LvPvwwTguFv/EuiUuTCkdRx7F5R
	 v2ajMgXyGXULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2CC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451435359.7354.6416250975605108256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcabec870c02250715647b7ffaf9f5738f19039b5463f4ba0ad8e3ec3278bfb
Date: Sat, 24 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724514353
