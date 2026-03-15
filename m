Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C21D26A1B9
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773580494; cv=none; b=kRAM7eq9HmhoqVhRmcvWWE8xUwR3LbQKBr9ZQHdvSx00powMSN0WVY+lTGPnzoHadePsomDL2vvyWmolsx70oQOt2hUePDmuZt3Gm1as7+Qc83JzGyTnN5GK6RLwtonFA9ThkHFkmnhoknk3dICmphQYlC7NTXzJ2T5sMl8S7NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773580494; c=relaxed/simple;
	bh=I0XRuKY6O2ZQu9TCPbcwUa+M4h2GMSvgCaskSb32+Us=;
	h=To:Subject:From:Message-Id:Date; b=NasStQF8H2LXz0ImcgyuwTtAADLKEZG/6fUBaN3N+jQVMASRyeaReCKwX2PLalVhOf0scsp2zQrjRQ36yj5DlgVIXO+R63LOv/9VnNKUGCPWzed/tbBsyaZfAhkf9dSivLsfv80u3FdsfTuiRFxuBqG1LWfPOqI1TZ2ijzOF6fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpBJCnQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpBJCnQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A685FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773580493;
	bh=I0XRuKY6O2ZQu9TCPbcwUa+M4h2GMSvgCaskSb32+Us=;
	h=To:Subject:From:Date:From;
	b=TpBJCnQjeLPgyd9QQqNOvhnKfLHkt/Irf1gazXcdadGSuVal7rc6MdJ3FhLtv2zsm
	 YL2SjJ2D5Zc9Jku05blQU2v843d3kzXFnK8ZBlrfLjOUrtnI8qvtD3ekFQ2U4cIdBC
	 u5SGGYMqjhTHa11d/k2Vn75WBPxfBt+lIJhaw9cpT4A4PWKKKlxIHJNBI3CryxmfJ3
	 zapAazB51qg9baiCZQEMo4fXLjcjnX3qUPSPiEG9KXHgAIIpg1AK0dM08Vg1kb8QAU
	 jxTbcZVXDAjd7kHQhoJuQI3RwbxeYFsIs+9xFCuLqc2fvupccwxg1I3jZfbB9zd+Kb
	 tMatn0hGolR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92354D58B29
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358049357.5146.10825194376623096179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654db45c1f02e85c4c0cd12981ac1eda1f5ff9575748e1a6dfbf2e2c0c0233d5
Date: Sun, 15 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773580493
