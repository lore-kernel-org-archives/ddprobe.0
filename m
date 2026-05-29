Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384991DDC37
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780015954; cv=none; b=ZBMfBmJn1e77xEKCTFQonb2HR4fIm8ull8zIiH2Vd2NqC+VqlzFokELZZBiVBpSsFEyBh95ZC3My7uDx3y7XffviuCfHqmyR0w9dqky/vVKXw51dI5KIO0pjdaPh10+LOLf9HH/r8iQ+w3deOMemA/sDeUCkT1k+qRPFEOV5RWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780015954; c=relaxed/simple;
	bh=6QoTLBxo0IANE4tlLrxMev/TdVKg2xbud794yzNppcQ=;
	h=To:Subject:From:Message-Id:Date; b=CT/YIWbsVECOENC6bxIVknT6wKW8qpwCSX0efHwDEQ0BsCY1QM3F01U6aY9Sk9afn61ByqwgEXXtO9qp02O5m9lDHj9KXrsjdpLWGcjkuloAsG7aU4YfLFOWrLwK9CcSE9idPvo8UBS9U9vdPzJDwTtmRyI5oF9ixszVT2/Yw8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBcJyCFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBcJyCFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C625EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780015953;
	bh=6QoTLBxo0IANE4tlLrxMev/TdVKg2xbud794yzNppcQ=;
	h=To:Subject:From:Date:From;
	b=dBcJyCFCd/2vtdjlCTWjWR/ntZU0suKMBLnXRb6xwoO0PiLHC4oOeSlFGZxHcrWgO
	 yOl7Zn5Bt5fEbNzfwvy2DscnGudiJKe56KYUTE/zwdoovNTZjvRIOkSM2DfDdpUoxh
	 exVoVIUZC0ziFL7e9c5CenI87YJLNZd5jNm4tFbNFe3KzZrsP4yL1eJB0vtu3R2jpB
	 srddCJeF6IQr31dTiQIKadX4bRmD7ENyyLKZbOCt2u+qsyKlCbW0aLPUCd0nijyPwC
	 l42bdfN8re2KaT+JNfNz/FCZFu6YRipb6ih/HOEzZD6BqOoKSkkX+05h8pXALoJGQJ
	 ljbwEgVpZ4UbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF889CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001595368.2148.3002617233282369004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0717c4ed920f428f0ac183a1df393f73fc170b41a60b9fa4b2f1523f3577069d
Date: Fri, 29 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780015953
