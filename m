Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639632D0D4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773045894; cv=none; b=hLoUGaf54Bp02XQSU476X0I2mrvb22VqR/ecziAXTdRRKtovzCE84mCII0z2hl4knluEwxTe3iYhB2Kq5xhXwbW/3mPVKOtk6MOaSP7YLw+kKYIsG9VUhMfVl03/gRtNTPFXXj4PTObgVsEKwEIeNbQUWiV5rE+Hfs6zIQoWvyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773045894; c=relaxed/simple;
	bh=66jrxY92WR+eFW57X37toZ+PCtEJplKZZpcC9JDVLCQ=;
	h=To:Subject:From:Message-Id:Date; b=XyThx3kWJsWF3X9hwV9BoeVyVxzkb9/z5lwHoAqnRrGNiHzOG61LGoNJutWPe6zP7rIznQXAGLCuKceOHsPc4fNs2IrEFQmtQp2UU0zmmz0qJfGtxlXfcqLxJdNL8gDlHHk2z+bR0pFVlaFhK86+KjcpQ4yYJt/IBAqAh/LLY94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stUuCmjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stUuCmjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A063CC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773045893;
	bh=66jrxY92WR+eFW57X37toZ+PCtEJplKZZpcC9JDVLCQ=;
	h=To:Subject:From:Date:From;
	b=stUuCmjlL7Yn3BgrVFDP9ikJz7WURr6gskOsahZ+hMB7PFko/fFVF8gvUlMuuhN2P
	 OzgdDvVW6Kv/xLXvzosFWFoZE69owoSRoiYQvcIF6PhMWEFM1RmBgPac9UswqkpJQ/
	 6kNcrlZgh5cjc73q/uGhuah7IH6rmhIwO0gZ28oSjQ/bzAl60ky27yxtj2sYSIm9YE
	 BmUcArwVs8gaNfWQ1NDBM7DX3COqWg1iTUp25w1ryyFrBiPv1PcjrHhyH4JD+otlmP
	 2TJ8Jte9+J3g0DnAa5lUkDkxEVT3SaP8CoQPO/9XvRfoPjpjIxn0Je84xQ4DSs5M71
	 j89B+y+3KzZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2FEF371A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304589358.24973.6553299979764667255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b777b4f70520afa3e9fa6704058a468023e17f3cfc954d8a48a8c2b2bb5443ef
Date: Mon, 09 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773045893
