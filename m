Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E904E36C587
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773089094; cv=none; b=up24wBgF4Bpi1b5+gILfFgeRJI1LTYKB1hTKVzuY88AFo+6khz2FswuhEOlWW9sFHSKaF/+dJg3As6OFhPpE01ejZBFTuhELdhbXchfthWyjsYo4tW3IxxD5aNSJtFnlxK62lveSmNvHpwZvjal9ocD8QRoJZ2lUAlvRZWjId88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773089094; c=relaxed/simple;
	bh=DQb5NaUckS5KPZ9EArb8Z8p5FfNYFWdVGthqI9M7KYU=;
	h=To:Subject:From:Message-Id:Date; b=gME5ciZIkrWGJXVrgQ8FXuDuEdk5NZyBY4klRjk6+BDLupppEUg0VxlOhJeAtQbdBL+5QAxIMSK5yp8Ejs4JtJ5fe302zxwimpbbYAXtybAQfaGvzp8cze8eMUKoXew++N9SRx+BYnLSMvolrK5zPmB/NZpt+HV96Ou+o2cYNvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwzfITiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwzfITiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E815C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773089093;
	bh=DQb5NaUckS5KPZ9EArb8Z8p5FfNYFWdVGthqI9M7KYU=;
	h=To:Subject:From:Date:From;
	b=gwzfITiTaAC8eQeT3MXIc5L/WVQiip55rF845oDExsEDYTH8nKzMAA9rQBjWu2Xof
	 RnlYtiV4kDC9bGQkgYqVj2oy0zNGFVtOnqAgZwUiJlhfradBlLwki0CsrPNBm1i2Wu
	 24y/tcSEcmVOqnb/nhkrZDqmUfHE3qymdH9c7xzadgBaJQD0Q9AtOc2a1Jz8m/IVrE
	 Pf6R31Bh6askERTJNeECfnvQa4lj6RwyV1ZTezKASFs4QDsjE/8ijt+g8RsXiiuikC
	 mu1DwRXHCVbU6IrOcTEjqj7VUxxVB51HYpfXNXg4nQCeVR4UQrnsa0Qnm64XtukGPm
	 Dbifzicl0PKVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0AFCA189
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177308909358.3669.1009757666055130343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75466aee49c5ad5ac5fefb0f848fc0dbe48b69a359d3d16c517db9d3f42d8c8
Date: Mon, 09 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773089093
