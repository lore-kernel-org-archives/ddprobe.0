Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8A63AE707
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778532634; cv=none; b=P1DnGB7yS2y4NzbxOEjHocOC78V18sL0IfAqrhdQT0qOtlsHDvEDMsSKaZI1Ri0QMF/WCLDEnnzvVX5HLz1q24LAA83oOphJ9CpyQJSW/uEe22agAlHhBesUMgVSC33lSqctLaWSzrr3Ppn++FjrwRHjn+CEZTtVJJKwQ6QNLRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778532634; c=relaxed/simple;
	bh=uf0ygfJjAVmNHHt6/x4Vmwrn5TclcX0J5J6xCH/3epE=;
	h=To:Subject:From:Message-Id:Date; b=HugdRfg8cknEqNWX+mHx1LiFMKjpXI/IFWYth5PnYI2oWxPUvRR+6M6cI+y3RdqgSQo6Uj2UmJSCw3drIfYBYlT80JmYgU48JvTQKzOrWkg/zvziKNQ9jub2K3rCx/IKFLCe9mlUrqOZoHFLS7iTnB/bBJYL1d6CVeG+vs6opis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoXzRXm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoXzRXm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32CCC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778532633;
	bh=uf0ygfJjAVmNHHt6/x4Vmwrn5TclcX0J5J6xCH/3epE=;
	h=To:Subject:From:Date:From;
	b=EoXzRXm43UhAVn3uuOp0+PSe895HjaOe/cTRQe6rdj8umsnUGwp2ZNNzi3qAmtdP1
	 tVO/9RFNak1++ykcqIUIjFrbEXR4nBhKUq9NjyI0Hht6qG0HXqnMI3YQUd2R7n4ZTO
	 Cp0zlIAM3CYj7OUhtB2N5mhbzVG7ODPJ9P1K79KFIV4Q27GZSqMuXqFgjfUFQmo5Q5
	 +5tLDCZIW9OPbn8yyEuiwX2Ue0D4vHmOULrMzhr7oD3N3TTmPhL2LdVVBOF2R4maEz
	 TWZbTlzXeZD8wLVGZsVrd5Hc3+nzYjQ5XUeQxdU2gd4Gwrx+thSJeJpAXPw5b+zqeZ
	 dSBGs3pfnoNeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA73CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853263369.23954.3498565106497913183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e4d38bd070d0ed4ddf0679560a19a76290ed6dc72897d35b11e0d5826e0d7c
Date: Mon, 11 May 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778532633
