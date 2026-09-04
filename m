Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D334CCDC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788502834; cv=none; b=DzO/GhAIrc1ATeWAU40hzWTKNwhOERYj6X6jev1iqwQ++UttQv/6tVWeo7EcppwneYMY40Refnjtx99HYrhBpblQriV5CG7Z2eCdcyoWV8KM29PJkaaZUqIciLc89tSHVyRM9YIz6UkxbbdVZrvBTD5fwXsOGeXKyOJDLMDDNI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788502834; c=relaxed/simple;
	bh=OoSn5i+zWswKYM7HtZtMKjGTVkZVAGrMHCeXa+LTVJs=;
	h=To:Subject:From:Message-Id:Date; b=VCQkIPGfL8et/iL+eUWtX6I8CeX3uz0majMWFlhrxnsNUfPsxbez/i3p1CFAkJ/zQnPZOF/1JfOFhEAKoUX04TxRXh45QBNZx5w21vaTb44hQ2n4lm2fYhTuF5z2JKOQZ3HS2kc3aNhCIbmBYHRI5uBndpxNscD8NYQU6TAJJJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxtmF/Xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxtmF/Xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF53C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788502833;
	bh=OoSn5i+zWswKYM7HtZtMKjGTVkZVAGrMHCeXa+LTVJs=;
	h=To:Subject:From:Date:From;
	b=qxtmF/XficIcu6GyJuFGjePl6U3j3lbs0mWHPcWik5MfAZed2vKhY+iBtCb5oO8Qu
	 XWHgD2pfxW1KMS5Q8gHk+YGuJke2tZBhQGY5/KCLLsewhthwXTCCNppiPlckPQq8+q
	 Yi21PeLy0KomTiOp3Hxpqq4Csa7rKtezyula6dxCsnFjhTtoPnAtPRDUlgzacv12Qw
	 6mEe6ExgmVTL2wbOSEsPu0/hgN9a3UE8pEutWpMv51s2Bj4N0Mj2iu8GjvFfD9rI9g
	 AO92Na+/SmgE3oIjAUd5gpYNnX3uXd81Qj4K5p1k3HX8Ie8J+EyZuRGEixHmSH2t/O
	 SIvVa5F9IF1aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA384C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850283368.24892.18132332455045911752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0847486c2ae02cfac2ba4d93d15ce614b37eeecfea5b5025881e777b52d9ac86
Date: Fri, 04 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788502833
