Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1241F320CA8
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761314994; cv=none; b=XzyZvV8O1SjD9b1HVZRDr1Z5YfmMsFsmOAtFEWvluakgBTmC2ACSvc1Fc1Jr7t1c9gQwawrijeSvFyop2O6ROdAqC338Cj+8YdiMsCk+933edFER0/bGNlqwtpRZMwPAcep5Dzdl02g/bFCYKFu0uzP7w7Hedhg40WtZ9np99Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761314994; c=relaxed/simple;
	bh=pmKD1GKtbdIjOfn2GgXGho4Vshjy4GnKsTpZwGaC2Rw=;
	h=To:Subject:From:Message-Id:Date; b=l8Xx/YP8xfM3MB5+6XFvgY82+bvoJfy6W1Cqte28llVwyOz5ktsUrLQLXGmDiPkP4+nleoo11+kXuSGpyJF5Bs6x3Q99G3ZCy7px68rP7Ctw1VZQfXYOg7jHmWiTCSep8glQ3tUA5woq35B1SafHksqt6LiY2J8dbWbVbu9MB14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdQfUUO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdQfUUO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F247C116B1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761314993;
	bh=pmKD1GKtbdIjOfn2GgXGho4Vshjy4GnKsTpZwGaC2Rw=;
	h=To:Subject:From:Date:From;
	b=SdQfUUO5pivG2OgQ+HBJq8s1cdJNqHDmTWAkKvzu6ujuC4hPNoBbaJFz4oT8qborb
	 N4X2b6uKHqJAApBjrpNEiIbrKXP3krO01yErR+mBmUk3TS8O8jdPd7n75F63jn/szr
	 bT+HAwKIZcvP6VqyKgJwUzYwbmLzmjolqw5psitb+m/moUWOnaCWapNP5jOM97WgBW
	 8oy8Qg/WBQn/8pWDpTVN0YSRCz+Toqpro29j65OYPDnmixQjq7/EHSWfRfb5Ikyg3O
	 +EmuhqnAnPBPADPF3qedK9prTOvj7kgTLVI7S/Ggv2vNZtrOdt7v7hSXVToVNSjJG5
	 +pbiva8OZrDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043DCCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131499358.31569.580578034404752059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f3b9d5f628d19fbd804b48dc13e5e028c701c1d20ea7d31e692846b2a24fdf
Date: Fri, 24 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761314993
