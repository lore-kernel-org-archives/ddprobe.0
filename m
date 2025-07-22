Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7AB2E36FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753208394; cv=none; b=nl+mkobPn9QJzflErUSRfmxVUcc6wZ8jW6IjSIB3DnGaJTTwUAnbs3gSLYyJWgcCPhfdWb69desL8fn52P4R2V83aYnh5b8YzVEoiQa3YKj35O1cTNdn0oh3bK+sadOaVExtYsFXsDX6zm4QZn0q0J4vR9Ej4lw/d30VJTbUNoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753208394; c=relaxed/simple;
	bh=8+0CyuPmZ+imCl5IYY0jia48ldo8RAEJZUVBydFCWMA=;
	h=To:Subject:From:Message-Id:Date; b=FMx13ej/fNvP4yiQOy8e5oHPVErw4Y1lPe0X+PfewTTfW5jCN1IOmg6ffyXYQ5GqS+TsaxH2EMv9hsQ7gPFxpMN6VnqVsvn8CP5A5hXwsSTdSYxWsyI/XhuQbt+t7h/rRXvCFqoEekzUjt6ePA+PN1ImmQoYTRYPyXiZwzjedgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMuMLojF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMuMLojF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF322C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753208393;
	bh=8+0CyuPmZ+imCl5IYY0jia48ldo8RAEJZUVBydFCWMA=;
	h=To:Subject:From:Date:From;
	b=OMuMLojFcF80DTOy7ciOWbRgMVqNx5XlW3eGf7DPuTv8fqseR/iwtoLzjPdIdWCd6
	 mSjXSoYNlG76mIOo+UCOFchYstAQPZcDsjkiBCANqauW7+gPXuXeipALTMwWeRSZ1p
	 5m4f6t0HCtfB+hPWQbDjT9xj9giMUfUrf0ewerXOgSgndCC/cUXB4XyQa30RgDdbDM
	 y8Po0yNS5rxsZT77OtuyiOT6SVTWQnjJH286XXNl1YiZTX/OwXU44NoBqe43X19xZG
	 p15bGarNFWZsqY44SKkHcQtV3Vt3YUea6M79GLp09vegqFDGcsviaF8Af+YBQ53XpS
	 KOIZg98SsP6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABBAC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320839362.29700.7625085149330515439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cd3ee8903e1c4dbe92f477adf30b1aa02f84ee3a0207017ca9e3185fc4a2b3
Date: Tue, 22 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753208393
