Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE1288528
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752058794; cv=none; b=cudSelhbsQPoKklGSAkrU2wXFazVm/uzxIUIsJKQP52+yTd6vdCn4OsIMkw8W1jjISkkKvDRNR79ejrsip9dOtLehdLJTUPqd69WKYVRxKCdNuPxWZ743Hs1/aNcEvEQxTpgqjrwISo6mYaOovlWAmak+l7qB3Qgsy/3ZSEREas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752058794; c=relaxed/simple;
	bh=7t+rmvHTxdlXmCu0ExgNO3rphV2hGIKg7xnh3Z0ZRj8=;
	h=To:Subject:From:Message-Id:Date; b=cjjumT2YxK8bv2bR8V5FX72CApp9xzYe/BNaPDkud1NvasmZO/cpIyyvRVJ+/5wl4WDOBz1g/JH4s3OEtUNj7HXNGoSc/E7DQaiAhAJNioxGYSkcAYs9R0WmUkbCFW23bMWJ3VYEKG9m0Iw6/j4UyAsnEFGyCjA2foWRPXKHNg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q65G1nqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q65G1nqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC81C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752058793;
	bh=7t+rmvHTxdlXmCu0ExgNO3rphV2hGIKg7xnh3Z0ZRj8=;
	h=To:Subject:From:Date:From;
	b=Q65G1nqMOgCrwZi5heHBWfgO+tJ+J1yaOIKHUaln+M9ui9DrDTI1Q5Q8S4kKHkaFS
	 IpnnjEb9ZNeQY/SaU6dQxCTk2c1lHvrEhmZAJeNGdB6q36NabvHOmuCGFujlpw1A50
	 QvW+XEV4QB9D3NHQD9pyRRQHEj6oSqugDiqsDcyqURH/LfTXgA6x7VFVZol8q2YLvq
	 Yr/lFs8jCAdzGAJlfNm4ktYHeFuHyrSPsj/u2f/ATb8lGZ92OgBC14CpquMnxXvkb7
	 CUnNkjl1QqABynHp++yNkyT5neW6NezdL+KlFiBzAQ5YNaYOF7nTr2iqSt4YBM8BuR
	 IHEJ/10y2daKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEEC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205879357.5603.10470588985592018001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9aeb7d1d7f5467293154736a5e43adb38207d239689115e1d41fe227b2a6d9
Date: Wed, 09 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752058793
