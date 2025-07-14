Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F48623AB90
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752526794; cv=none; b=OKQsPAIASo16CxI7nfSbxplg04by+Q6DIdtn71mEWMsgf2ON3551B2Cgoxt4hBo9gZB77WLaUWnh0hFI+kdAtPQki3f7jK5tqiDQSmiZvg6257JV6KXYO2Me7OfsRK9mnN1PYpKNSym5PdBnvG63zUIpErHdRI3d280gsmBR/v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752526794; c=relaxed/simple;
	bh=Xg6YCi6asjQ67/aq38TqAwBnXeGwJ7EfGKU4vBsegBg=;
	h=To:Subject:From:Message-Id:Date; b=Y3eL6Eu+iRWhxhVzqdEnP2G263q92x4GO6Nk7fONhG2HkkvgkDfa/XEFZE1tfi+5KLmx6OBcjKCalAa8B7CMN3TwIadFFVG+4XCkY/+1cQtJNBwprDzwV9biehdFm6uMqmyY7UkBQI79bVGnwBASa1lzvV7Qy7Q800XCeZWOBqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b18RA63C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b18RA63C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A715BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752526793;
	bh=Xg6YCi6asjQ67/aq38TqAwBnXeGwJ7EfGKU4vBsegBg=;
	h=To:Subject:From:Date:From;
	b=b18RA63CIfXaOnmPzlwah6UtUEzUq84FJpHkJwkOVtdXxxDxlXP26gPfbR9AQF6c/
	 MV9nb+aXmK625cT9z15lkgTxtgqS/RuV6YgG1BXsXLzdSMxfaYqOkct1zPNpiG0iFy
	 Tz7UP6NmedMDQJYvCtS8vLuOWBDhIQTEo7G5y2hAGQO7vkCLyXpbsJ1Cn5IA3MIvS2
	 c0ndggRnEJcNuxwBLdg8eXYBz8qu64Si+L1rda0le9NE8v5vQzuky5KAzdMB32jdqP
	 wctWlVnIOYICQYmq8slnD7IMdvmTYED54RQMIK8B6Uc8ttj/Js5LgMrFarKV2rlsvV
	 XCmdPso947hMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963BEC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252679358.31453.11687087530238829274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45b576dcdfd4738b1682c8291f10c8ab3a62ebab31ad76eb9593db1289640f7
Date: Mon, 14 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752526793
