Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D71E21ADC5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761539994; cv=none; b=UP+qCSgK3H08ak0M1o4aSZ9+Of2pHU9tywQtMy0UwbclqKXBF79IL/Y5yqD5JN0yO3qdZ329YRVLLYPGxCaAstj3DDSjOC6fSkIRc2r0av/aUKJLrTo0lp9p8cPGOtzV7QMKcF4QC6CWGWFu2VIhAn9qXHzfEBY0Hxskhu2AVNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761539994; c=relaxed/simple;
	bh=fAnbgcBjhplu3Kf45ajUiKtvU3J1Vfnkn5ILJxCfx2Y=;
	h=To:Subject:From:Message-Id:Date; b=rkCmniJ0W3HBUB8h25LWKmGS2lGtxOeymqXSYmKWDdM1hu6/YSyrFh7hc0vKF1HE9iIx9uChLamxEXulKx80t3LgZIEPPDATW9NedZhSMNl0jBlNESqZ3V6MS62m3qtAK02WFvOSBN3WeUJMlwzJpnmB6DjhveE/0FkUdYHOSSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8H0vj4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8H0vj4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761539993;
	bh=fAnbgcBjhplu3Kf45ajUiKtvU3J1Vfnkn5ILJxCfx2Y=;
	h=To:Subject:From:Date:From;
	b=X8H0vj4YezmBvrmmJF3aclnHn8QlJ5aecRCZtkIg1vhcq4ZJxxhPLCiwAF4lr7lCA
	 p86CUs/2f+yOt5v5JH+jeI+sVefnwaRt75rBBWn0SXCeg8eYAHlnAg+JYWvZaaD55S
	 rzkvlhbyjh1CSE8ju61GGKGIRPpRpjQeWEliU+xPV6jWguutIJURfGrgTzmcgnF/kZ
	 nUQRZ/90gsgU0MICqDX2oGWld5gqpNYjraltxgzInWfqc5vHXoHqvrgzxGZZYoFaz3
	 NW3UALKUyQBPNkW0MM9jIkHouG65xtLzyrN5b17wCdtpHPS8NHpO47dOP+i0W1mJ28
	 erju9j37JMNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D6CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153999358.21150.2566836889063630663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070c44a47e4e8ca61e12fb7067a2eea8533398f52cd2351fe9fa08225b40c75c
Date: Mon, 27 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761539993
