Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4742367BA
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771899294; cv=none; b=truW7QnOQAaYmzLMWXjVr7YMoR5hHBYPOULWEaxk6rUTrsSmvIXrNPbv6zqKioxxgz5fqEyMgXuQ3N59fRFR6X1T7riWGL9kRpVUroiEtcq8qL0uukeqvrsLRvPNYRJQUkyu1yFHxpPlPQkcJGrahFi9l11kxoSvgKdPY0lh+pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771899294; c=relaxed/simple;
	bh=XlmOO7rEfU9eAqIMp4hzYUhsYiP1GlPcz2zj0/QZGSU=;
	h=To:Subject:From:Message-Id:Date; b=YF28JMEneOv7IVpiYx+be3cvKtXeynGCI9DqRcPIwxsc32VLeyeaAqyGP8o2K/XAeThicE4rVOaMmi50ZhfYh+5ATlbsP8Sxts0tbL9hCgWrdNkI+swhHc0hPlolZXziQKvEcYo+95iUjy27lY+swRsEd81kW1fPKA9EySsU5Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeH36o7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeH36o7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2FCC116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771899293;
	bh=XlmOO7rEfU9eAqIMp4hzYUhsYiP1GlPcz2zj0/QZGSU=;
	h=To:Subject:From:Date:From;
	b=oeH36o7FI1d0xLFgnpW9soHPix0j4pKfFOqg8sbM61L2m9lFJk0Rtls9Kzb5xb1E4
	 WIwTeflXLR14ylBNtdpInj8HBL+bhvM3Vgb/dvT/Af0YRmREh9JkcY5YKKv1WGn9vd
	 wfSX2fhemamPO9V4wABtb4zSsxKgmppte6aIrf+G9BFRg3KwDlMfa61D73DC/B/DH1
	 x69sl+CdWF1EGzNvJqb2cGkfIJxn3eTpCX178e1IGYdzneqQNlc5uU8BCByriMC/UB
	 MFyzAjRdRdIaTfTd4DSV4garCt4MUx9BUnjDFE7GzRU0Zd/SZUrmqAHPT1z9xZceup
	 Ljkt9+KPKaSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B199EFB7E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189929358.15101.496980077124488331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bcd2f003b43a533514508a4b22fbe1b191b168a6c7b59410191a1becc749e4
Date: Tue, 24 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771899293
