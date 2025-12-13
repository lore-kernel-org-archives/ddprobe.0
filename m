Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D76F3B8D6A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765647174; cv=none; b=srf5zqkkmDBzvkhLpt3KGgRhZLtlrx7rKNWHO/ZhoOKhiisYxZKXn4jp2Tt5mFF6Ruxe9RTgXNurP2mtoBdzYhveN8dXH+AcsGHou5si6OKLGkw6knTenUZME/NtsAS14FfQGiy4fIz0poGut8Bt3x1zT14W/N7EGePllM267+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765647174; c=relaxed/simple;
	bh=Z6V3xZ0DNnrLliAoU5TDA4zc0qChi12TH8y8kVPGOSk=;
	h=To:Subject:From:Message-Id:Date; b=Ptl//54O4nYBsNXizWrHQEF6m7nMKiuRcQjc964iVWpjlMGf8D1Oy9wltK4gDnGHWwZTKCxYgdJvZ/sSsegAdQ5v9r01cWcyEV8uUL1MK3Mb+s5kpqn8VyaJyo8QZnUPl45pn4dxp0Na9Of04aBHOprTJBFLvbCYyH69keb9tp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luG2/O+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luG2/O+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A512BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765647173;
	bh=Z6V3xZ0DNnrLliAoU5TDA4zc0qChi12TH8y8kVPGOSk=;
	h=To:Subject:From:Date:From;
	b=luG2/O+Fm7dXvCDMQ1n3YpqmlPPJq/AjjB9YL0rQgE2XywwQQ1zVJ/mf+VleNicjF
	 TxdzqBdgbaXilDQWalVNfrZwApZl0hZa5UPYCZsrv2ZFeyJuZWQDUqBfdi6DuuKWx3
	 yk7zuqW5KoPOygClCd9fjhqaF2nOqUsdffZ6YNxhfwV5qGasjOB84sJSlJ0+MEvIP5
	 vyXd1gaL/TPUcE1ZnrSnRTi99UcWaPiBwhmqwX2gOYPNicpIyl63S8qoySmt99hUEn
	 lTXHrWI401HUXB/hTcLbKOuvKVpnKnXz5CfXtI2rVYx3PHUYctSX3xapjhITjsrwHO
	 Rp/FaH1FzDNkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B8AD5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564717358.1500.8773464286165004519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bb598ab8adcd83f688a621490049e7f9033ed722c9e3b26212eb8ef6dbb79f
Date: Sat, 13 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765647173
