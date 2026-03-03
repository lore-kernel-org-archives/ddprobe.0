Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBCE4B8DEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772554493; cv=none; b=jwI8ngrpl7ZjElLOmD/V/NTfH0Pn0xfmKCYr38p7Gmd/afLhuZTe8jRpzrsRFWdEv7NVDQOogPj4rdF60dEfmn9yqS3cC0AtsccCw88OSNx2UzEvDmXrUlrDNZAkFM0dB/ROXGyhVk4nGojfWdjhv68SNYrGTHwYfmuBJIkTRRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772554493; c=relaxed/simple;
	bh=GLqwNSj4vs7T15kDl2vquTnjxwlKzB37OBGjxTmUZ1A=;
	h=To:Subject:From:Message-Id:Date; b=jTdiHt7zvZzp4vBq+W+wP7vZabjO2jCg+75A1HpXH3Y9bEdftVELo9dqEceWCObzgmbusAfuZlMye3kIpbl7qhyeCgvXYlXPA5X7K+9f5xH8GnspNHiF+JnfiHClBC5EY6dFM3ze6hwGG3+USOpLGJSDsUkSPlakW3BQML2ZTlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFo1Wnor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFo1Wnor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE04EC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772554493;
	bh=GLqwNSj4vs7T15kDl2vquTnjxwlKzB37OBGjxTmUZ1A=;
	h=To:Subject:From:Date:From;
	b=uFo1WnorhBntv1Nm0Uugn1SCOFjLUKONZu11xofiQdkGxLmhv2NCaKsT/HOEuhQzy
	 buoKjEauREeJ7v9lepyeA7GwQioZHVnaHTbXqe45thbEykN3BgurU+AhahVaXKom0N
	 SO+3zov4bD0sVP3XqGmilFF02cAHkXIlHfLx2EBr0+b1oJxcWfb3euJNGIyndQg1+h
	 o08G4HJ2Hn3Uqy0dum8AQZX3rlmRhT2pn41Hf4zDGmgtSvCPRdlpJyUGoC8H6JCpPM
	 D6/9g2kBaxRrJOe61B7gjWkRzQ9ac0v5EZ0y8w2TAgQrhBGtKBg+NGVtxBqbwl7lV2
	 UzmS2POQLpoGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6B0EDA68D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255449362.26956.6675680614442266795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9462ac524c57b6712bdb0b858136bf8eba7ad66b25ff5d3ca4a29cd1907c66
Date: Tue, 03 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772554493
