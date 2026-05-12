Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E70339E9B7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778589635; cv=none; b=JycrnIBkpD71NYLabMgW9F35TqBScdKbVJUKpnymQSTG94mPJmME60mgmxMjNjLnPfeycKnxV2oVAqffvCXEs2rJyckJSyE42hKyXQrYukNMFzVIO2QCcChzHdwHMStCblV6iq7YM1LaQSGYmRivozgGH45ATNaDd74YnfyMN1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778589635; c=relaxed/simple;
	bh=AaAvhwRQbLTWuxiXoN1Z/NINYKVAr3X0x4s2wNM8phU=;
	h=To:Subject:From:Message-Id:Date; b=aZiyK/3Tn4I2/nBcOk8uaasMvfiYD3n0QZxXIVUfF3+Fz6luZz+RCHaJtfUvw2sW127mxoo5D3EB4Jd2R9s+af+vvrVdt+8mXji5oPDNdHWwFTbKB9NMC2U/yxw3SvIgkOpSIBkJn8/6UZQWxTfvo8vd1g+JBYCXIQP9x1LDOEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G25ynQcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G25ynQcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E03C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778589633;
	bh=AaAvhwRQbLTWuxiXoN1Z/NINYKVAr3X0x4s2wNM8phU=;
	h=To:Subject:From:Date:From;
	b=G25ynQcUGN1ckf+aJ9pgo0nXeEz6dAJ0A3eLJqgHfrmqUbsc7pMFTCzK1ww79Msef
	 X209llUZA4/eqc14KZtKTPnKCgzdDXS/F6F5bghtpah3axkO70mbgBf7OXGpaZil9z
	 ejqrlcR+ABeztQgvnvZQFzpo2AQLJ5fSepjMgn8DOMTWNjOy+S/HMVSYzC08ZjQNt4
	 bsaH6KkAt5H91z74V8/0QKnfHxmUtjIzRFou1Au6vftSSM8AwqK9rW5CLVl/ThNLNP
	 s0TYTbYQ9IZbgv1XMw4XKp4XdF1o1i/pBryGSVu7r2lpHbHqw1EpLNwGBPQ/K/dtpp
	 rqWVOqOtkbVfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29EBCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858963372.20326.3882391044369259716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b2bb952eb5f2fa04e5e8fac8a2e4082bbc47ac98124353c3a34d1e1ac64656
Date: Tue, 12 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778589633
