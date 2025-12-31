Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF8228690
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767224034; cv=none; b=fMS/VPmdB4tCE9sdf1H2tdJwVHA4wDgYZQSsM9Izk7XKy4bj+1kNQP1kZuYAAHv/bmxX6YMaA1xLlp0ZYSJCG6zAuwSWnKD0FBN2H0efD0YBQHWqeHB4h+s7yvNw5oGsBdTd+6QSirDrscZ91ovqsWlgK8lflCVDFJbcvsjcBuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767224034; c=relaxed/simple;
	bh=ZXp+GAXgxtC8vdgmxjV5E7oqnbr8835BNR2DkTomLfs=;
	h=To:Subject:From:Message-Id:Date; b=I7ObCMOuQBQZzGdITyYXwpc8dxGshnXCwszFw6l7iiFU1MdNPK1dM2/Os5tnMVQ6WZdEx90O9C8CKckIHdpGxKcvLVJ45goj+yLFGY+7ESi3t3dP3CM89Yale0OATuvOy0C5Y3GDUvt8Roq3PDS6rmeBzEJ1pPAXWWNNCZZYTwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSy7ohhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSy7ohhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1015C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767224033;
	bh=ZXp+GAXgxtC8vdgmxjV5E7oqnbr8835BNR2DkTomLfs=;
	h=To:Subject:From:Date:From;
	b=gSy7ohhxo11UcF3myCX9JFaf8i3CVBwN16o97NSYRO7oKW8DGwpjQ7GMwpmZMaa4U
	 ockrjeb/wc9cylSQ+m3eMpiFkldJ7l0fsO2Hi2mLM0Fb/MMNyKsVGf17ZIY3FOL72+
	 wvGYIH6m8ZR8P7AWEfoRAlM/lS1CseSVz/Vl78uq3FO7E5MLln8iFXrD0z7HeFKNAu
	 OFpu/7jnjlYWxPg9VkorR+fzhfWxCLwmwfRhB9OK0NOMLq2mwQqYJ1XHQl6LC2KL7/
	 Drg9T7cdFE6hdtNbgVGfdNS9SrvyxtebQAIZ8i4Bgf+ej7dxvxZ+mQEFvZleVBSeKi
	 3n/qzMoiMJwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EEEE644A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722403358.15491.16440058486155602697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc72c0ece62d313dde0c987a9a6151975bfaeab398d293fba5f11d02930e3be
Date: Wed, 31 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767224033
