Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6DC287263
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781115994; cv=none; b=H8RZjonTBlFU8QmGfnQ5UjE7z1Qdg2kreHP5yTeElWJ1Jx0jJ7vLtRtTo/kUS0WJWCGYcLOTPuQVGbCP3K630waZVLN+RQJ48xDAtlM7T2eiTIl4V+l6guzw7AmIclUnTsLmtQP/ieouWfHjFHXbksebp0fmdZtBd5qrCuyexB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781115994; c=relaxed/simple;
	bh=lLI5KyKsj1U0oF0GSsgV3jdi25UJzHo/cx+PdUbI8xU=;
	h=To:Subject:From:Message-Id:Date; b=p+8ZvxJ8qPDp0ZtkFR6FDWoTih6mMp8KoPmpgdfpng+3nMRymDucTsvpF834LAGmZ/3Z6TvHDhGRPDifgsLlWtNE2U29M7rkJV71187uGQaFwdfrOMk2H5MeCWrOPfphcmNNG95HSpCPh0PS9FJK1uUgGmoUxRvgnm3E1PUTvK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkTGKmjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkTGKmjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81F5C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781115993;
	bh=lLI5KyKsj1U0oF0GSsgV3jdi25UJzHo/cx+PdUbI8xU=;
	h=To:Subject:From:Date:From;
	b=fkTGKmjQ6tIeISvxrxoyzQ3z2nI7NRD5Juf/oDMw2vE6ThL+0zT9/u56tPpRV3woP
	 U6SGlrqu8125ttJaIpLRqHyvpEwpYdIiazPScKz/ZTUyHdL/B4Slj0Qqou3S2uT3yo
	 dBKoiYcL44YdyhMM1RKTwXVm1lgBS9U1aivpZxdj0O0WYLTp2oQn1dZ0XLnE0bJqIV
	 2rYOEj3hpO3BT+Nzit84IAZfg19rN0NSFXV2ln0vLsx93Gm9Nv9cyY1q8vvyKjufzp
	 UURwN6jh/H86cgg11PDGOtsHiwj0PR3JWtKCJS0wrOolW9evOHREG6OB3/0enJhOym
	 3b8IG9O7jNT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEACCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111599370.16808.10132656630458885796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfac2ec0584f950533708fb9480083d3ea10c8373f63fc872e8b5bb8f6ca674
Date: Wed, 10 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781115993
