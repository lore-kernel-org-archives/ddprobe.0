Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A98F2AD32
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746097194; cv=none; b=OfV/s8KmVRvdYOGnOmwxQKaZGoqDmimua6ivNTjiBmJ/py02dFlbG/qVKjHHCcDy/Sq6AWdsj6dVmW1w4Hk9qsB9TqBb+ZM9w3epPn0Xb1SR+TnjIGg40K70+M5WqNw88RCaHU0eLHKUpewfxAN6YFYm8qVubi7sWjh9xAvFTNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746097194; c=relaxed/simple;
	bh=nvU/cPIpmyMUMPn5aSwTSQ6xlL9Q9qdq4H9LpjofjIQ=;
	h=To:Subject:From:Message-Id:Date; b=Hwh9w3IQG1i62HTTqo60ECW4J8/2e5NZbUQFIjt3UTt3pCsxkgyyIfF9MK5TFIU8xVNLMdCGAq9IqBnSKlENMKtVDvXQiK9m00WWFhOpNOMQ7PU4YKoFBrctWzi/AF5Cy27Awh4J/JYR38X4r6ZmYTcQntEWOGPvC/TKtiXsf2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCDw5PCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCDw5PCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE39C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746097193;
	bh=nvU/cPIpmyMUMPn5aSwTSQ6xlL9Q9qdq4H9LpjofjIQ=;
	h=To:Subject:From:Date:From;
	b=fCDw5PCmxXmNIuxBz5kGwDoNaHBF9kkbsNuzbjPZrkQi098WCHKjg++JFoYgrDnZv
	 AAJRV0oCMxLE5+lQod/NzwbstN8OX/L5wfaP12ZIk44njeNckLpK6Vy+YulfvaYWaN
	 5RlUodgEV3Q3CnoAhVr0C1lwemOKff/JmrgxvadS0qsUQFPZ9mv7z37P6X3Cqfr6tc
	 xgGVYYWoieJg/TQuqGpbEfm3d5X88iOuCnM2MXqr92VlNN/WYYk7DDerHyfbvtQXPY
	 vTucuZPBSMKz1F4vde0XpN8ln22Vp5mOT7IoD3RzR/XX47R9yY1Au5gD1dQURHQjlL
	 gOuaRylD7samA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0A3C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609719357.8015.14922788852181063894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c079949ea917674fc516dcf420bf61e979a39e41fcc87fe4c589cf07e5353ff
Date: Thu, 01 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746097193
