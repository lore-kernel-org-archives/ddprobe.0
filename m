Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262FB2472A6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779093034; cv=none; b=Tqz1+MiYt4OKuDZyk7y9u4scAXRcf6Pnkhw66ItwrspmtqmazmRst2zUnBPHIdfm/S+plMmWGbvYf2OT7yhzdzYwLFduDuIq+wOuUgiVSjvXuGeDL3anrrLNlOyd23+lUZDTjg7aako5fM6I1Xe0wwMWY0dWy5HxJtIfTJjtNac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779093034; c=relaxed/simple;
	bh=s9eO3R3s3Rx1eKYYgQs4ROancZCmdKJWh6sT5cSamZA=;
	h=To:Subject:From:Message-Id:Date; b=GgfXDBIneEKSbKjeFspSfHxx69YDjDGVixuifVjAy9jfQT1IRkePpifU+Q6uNQaMW2WAssBOdrnP98P1lAUtN+u/ofN+1VBhc7YbDCXbB/gV3Fxshs1J1PcI3O83WrjzcIBLs3KePPxEw33pLHvXQbGzqzym4Tm5XXSmraWySSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgyOn5U8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgyOn5U8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC787C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779093033;
	bh=s9eO3R3s3Rx1eKYYgQs4ROancZCmdKJWh6sT5cSamZA=;
	h=To:Subject:From:Date:From;
	b=YgyOn5U8fH7D//+pcIEJFQZ/kp2N4dO+4xbzuU93m21VTMJSTjovUIZFtoYXOYrnM
	 hxQjxBOprwY6F1J7BYUx9tpMaQNKUQE/77JcYkI4yArppvJ5yejROpVZBiTQTPWXwt
	 lAeQQfEP+ZpYxuvuSYu5U8sxFAN9dH99LZVqK+eMKbfRNKXEjo2DF8h8UZUEVc1HO6
	 wiabpR1Ul5bEJpC4RGaeOKAqSyz6KYKvmv0kc1pvmRNbfUEHouHXyoJikWmGEXuYC6
	 42I0ee1folwL8B/jWGgICgb1nuy+7rb7HhFBNLwj04tllFCBc6NBTkUmgkdQY7W2ef
	 OgX3g1vjs2IWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2F5CD4F54
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909303370.1010.1261935885666490417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40db255127b6257971859dc123217f2de06e43b6db90ebf0af26be50d4ef57cd
Date: Mon, 18 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779093033
