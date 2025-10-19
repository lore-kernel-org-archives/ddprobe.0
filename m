Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205F5282EB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760911794; cv=none; b=tQAwjTrhFDR0bm9V0UMqK0/m8l6dRmo6t0sR5pjKJ2t3WItgI0MaULXHjGomISSLQsOQKieOqMQif73WEfd44m91gcTza/IBEoe+no3xccjw3pFuCiGmUkmU60+teIZe/vIaFOM6YcMTL4kALChDoIMrdMLFUySRX/Esm5NiUPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760911794; c=relaxed/simple;
	bh=z63T7qnHnkw0sxaGgJI1OytYYeJf7l5HPo3L0uDWduo=;
	h=To:Subject:From:Message-Id:Date; b=eqfs9knv53eWsszqRJKbMiLL0mf7t/VnVzocGFDLc8QkPomrfo6WOWc08s93ZcvB+8LBdOdf8cPgF3aLtWph89G5VVAWJ8GPG2C0GZFIQnjykkQxZOGymI6cSOCD9OTQ0Z6haGcqDAGZxxvD+Id1JPHKu0hkCt1e/4QkJE9fUl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwU8e4Lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwU8e4Lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B47C113D0
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760911793;
	bh=z63T7qnHnkw0sxaGgJI1OytYYeJf7l5HPo3L0uDWduo=;
	h=To:Subject:From:Date:From;
	b=kwU8e4LuadzvnEZyKFGRDhX+X49hKwbV1SsfSTq5eogewq2m3ZLsN4qOmK3R9sZ7A
	 9XUhWmVmyEdrzzmtaHxEdqCqAvelm5+B9Iu0YPoejvUOc/SzJUCsUAod6vgZx1ooOp
	 O881SQKDsS7KBKEZFBAOlGA646RugRd+hHocNP+ij8APu+TURQWpBrxrRRfBldtwE3
	 44JlNv3mfQU6/IlgTu/udN5uSlgtyNY3vWq21k7aZBCH/GDZuhDWdxHU4oRP63tc6x
	 isccfnexk0NYz5VCGPhdwq6bhZ7sR42vIj2INxlNXbdHoxlxpn08ZmL9ayoc+q0F8S
	 UuiFP8d2C8XVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1ACCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091179357.28628.12569030787900980580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62412273f10bf7f61c56f02ddab3f4bb03435a16cbd8e120843a7889b7c32fe
Date: Sun, 19 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760911793
