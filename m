Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D54B410D3D
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770233034; cv=none; b=ZHXQ04+lMylnoS/yUP9MsKSBYeCR+ZCuBgtoC+A2O1xhCmuYbD34xwysPCNEOmwzopd1OaEfS3QxvLl7DUiVI6xjQHMEtx6u/dykbW2jukkZZYKFcSsKcODiRIRWxXqWkeRweSj2abXwN6svzwpeOUyTHlZNS57uhBciN3jX/aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770233034; c=relaxed/simple;
	bh=Pnmo0ZE4zq2FPUguEiR7aGBpmJTBI3USNYbpZZc1O2E=;
	h=To:Subject:From:Message-Id:Date; b=eQtzAWr+tgdcN29MrwulMuUymRN1GkwjHUQcnmfQD+YnOWFaro6j5UyVheFRSwZFZdXKxcCFRf1agl10kW8VJlEci2pL8jJwKMX6a6+ZTrtCuiw1j7zFFt8niW1Ac3ho2XF5i09EGD03uYwsGvTwraz/cjH6oK3LafjCu9FuRCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv6hKRT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv6hKRT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B972BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770233033;
	bh=Pnmo0ZE4zq2FPUguEiR7aGBpmJTBI3USNYbpZZc1O2E=;
	h=To:Subject:From:Date:From;
	b=nv6hKRT9lBkepbb3RZlEUHGCCJnNwtvEOcz6gpNY4XMSrbqNd4D4ICW7Vcv/vj73Q
	 eikAaVCb9Uh2MyhE6aEJS8tiZsBKk/Or4iTmk1gjtIawnrpRXb4aA2BuHaMsBcICx0
	 2H0iMWRBnm3adr8F7iE+hXa4i4rL+Pw7Z5SDo6SDPEDuIWImRdmUdPbpz8pR2gka39
	 tYz3VCQkqfHjRDmtTHaNfTcGh/ILo1JKwcrr63osjaV+ftH0ju+AUMYHq/Pk7lI7aD
	 IdR7LMKXhC2Feg2x1kFa5vQOPaWYM+scJguxGutRSGe89frXbDOW/CM1oEraeV296Z
	 dwXoG6ExHvoqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FDA7EA7942
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023303363.8096.9680763102324287934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43933839be73a3a512de47f3ed33649f5df6f4084a33db02e2225e96388081b3
Date: Wed, 04 Feb 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770233033
