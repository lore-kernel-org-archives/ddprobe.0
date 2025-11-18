Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139FA1F94A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763424115; cv=none; b=CFUYQC03LWUqM/ffYv2Z5SLhTfejHuikRrJC8lY+o4fc3QBp9SPLewaAeNO2HcyTOBLGckXrgG5kAQILpHuEejoJ9NCpQ6cuxh2B53jOg/kMHSunjuovFAS90lZZMM1KLcAFbEqstBqSLsFhfx9kkiKEYC7ZjVx5kPpVZR1go6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763424115; c=relaxed/simple;
	bh=OIntqg/d8iYIn+okSXzaRDHBZ3cOAwdxYen2UBiMLas=;
	h=To:Subject:From:Message-Id:Date; b=W7iTDwauhIw6+Ikq0kaYuatmGobYiisTpiCxp72v4tIYleYFZ4fs0sbsdCC9zzxKC7uQaU56I24kWssHUSEdXdL+alEUzfNbXWIFTJasfdsQGGgfJxDrguDOBA7hbmed59TudXawPnRAcV0pTh2KuH5wkgW3dHenwM73Ozdqxtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaQ33BlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaQ33BlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAEC9C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763424114;
	bh=OIntqg/d8iYIn+okSXzaRDHBZ3cOAwdxYen2UBiMLas=;
	h=To:Subject:From:Date:From;
	b=QaQ33BlEenc+YO5io3PWaInXXoTD5TgMydlM7kJ7QDAfKBc2PPoTSDnVFcek7c1Rm
	 AMtlCZ1Bu02ohulFgLz86v05teFyHh8kKi7gT8/ht52Gk6zn84rqjIuiVmx37GLM63
	 l3dibV8rklhJtUlQUDXKDtp2tdogoraYAagXznf1GlBDEaFlzqqKIz/13vBaEFe6vZ
	 yP3Z5/mMQvLgNzHM6OSK0By28Rlv3UNaCXgsRJu5PlAny1p8JZrP2aqpRSeiWxdBAT
	 0R9mNCQZ7yMHF+2aGGpvQvqXAramcft+kfGc51TUuqfJ3/K1vP2hhKadTv7lViyonz
	 uHkbIvLZrQhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964CFCE8D6B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342411358.4510.1756797021727199518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52877899c0c319a983875d1cf429e31d3aa0a431687c4eacee3298983d7ecacc
Date: Tue, 18 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763424113
