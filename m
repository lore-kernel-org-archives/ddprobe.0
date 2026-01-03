Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0C33C465
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767432834; cv=none; b=lwYS+AFYm87IogNwZTPqs4YfWHsYprKFWDIJFLm2+YLasG4kaWYFzcUeHZC2P2gZJzxUwxmf0Pbu4oObZE5lO/M92ynu5I6mTLk58Gb/zwVCJVvPqdzMyOUaiMGVn7C2HNhB4o/9iXoRgp67+dV79LeN1v0DjpTeEVoQ5yOV3e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767432834; c=relaxed/simple;
	bh=4cLkqLr/Ffuh+9PE/lWpnusSiwcpxQImCD1qq4ItDdg=;
	h=To:Subject:From:Message-Id:Date; b=Pi00p7q6wlMlG/7QJRN3wYwcLJ/CbvbvSgdOmslM4J94Ib1CEWKDmqGaECbBTLfnhX63I6UhNM7l5G7E/k3AKbEgv3r89+micSpim7TF6YZOeVE6P42561Q4lqexr7IAl6ZgJP341tihwbYWUb74Yjl004O8Hi+Epg2T3PVIh04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDGHWQWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDGHWQWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4994C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767432833;
	bh=4cLkqLr/Ffuh+9PE/lWpnusSiwcpxQImCD1qq4ItDdg=;
	h=To:Subject:From:Date:From;
	b=WDGHWQWDS/6m8IMOOE+BnFaeGBOsMo0D2wXrly7J86rf3LNTUvA8ssPyfD7d4ihG6
	 cmXonUPXm4fSfWEJ0HccwA6nB4Nn9EcWs4pePA2Ln2NCmMGAWNZoZdGE9MbUHhkEA2
	 Yc1c65hAsPVLn5Q24gsyZN0kKNaebXtiL9bq/rbzfybkzyWkr4g+QDBmHRBEJ8KGmQ
	 4hgk4zgIJsauGyBoY7juw87KJcWQZdVWuUzuKYqmhhmTDlKKkLWLK+SzzyaKP5iDJA
	 Q3QEKquH3H8TWg2j23tYC9o4hYHAA3D69bwTfSas7wmdhT7/vi65ePdA867T3kqda/
	 zrqAKAxUzbRlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B1AFA374F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743283357.21277.6488469076489340529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653ad04d7041c7ca8125ad1493b40cd6b9dd8d109a64c742b897a4f4d23f9981
Date: Sat, 03 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767432833
