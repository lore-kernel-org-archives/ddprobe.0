Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7629401A0A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787659234; cv=none; b=ht4gGkwNETkj45jWXvi9faz+iTse/9DComzeoyN+N+DWIiqB695zmqkYOxrfHmL8dgd3nkLaIqLvCDlXviuYPqRq4/AoTBvonWMoBNflkZF7m6yLHryrg0bJxM+jq5sEgdMmUuped2mV+N6AguI8CA6kS6wSbs61BH+GRmZhqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787659234; c=relaxed/simple;
	bh=il1yVa1gAfM4DBSMvWdVHkbeZtBe1zsGiReuShfhZrU=;
	h=To:Subject:From:Message-Id:Date; b=PE4xMlOOPgbrhNTxiNahKGBLh3MHiNwRprg3kRzYNIffyNUYmCLwjHyh5EzJ0YjtGYUjHKpu51MKrZza6SgRCwGMWbiW4Y1eBBAK7d0skJMS6MljipoIaxMKQIpnGIDS3lk4/JhIX1xNmC396gJwW3J7SZ/1nD0HRCW0mfXMYAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIVpA+da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIVpA+da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66AC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787659233;
	bh=il1yVa1gAfM4DBSMvWdVHkbeZtBe1zsGiReuShfhZrU=;
	h=To:Subject:From:Date:From;
	b=PIVpA+da9E18I9yJK48JunlXYpFQNyp+U4wYThXDLdT3hvl4LfZ9z8ANGjaRXezq0
	 jkW9p3Z1K/mCUXF9IBkCqSSQuijRJJJtnV5Ap/S1TSokDGxGKae1vVuC3QQXMq8BB4
	 kP58gr/7hvdpvmzHPJLqVPEkzMgE4FLZUwi6uFlLkErP+46mvwZDj4cCN6GnHcYrOa
	 wDH3NvpJ6x5kL47+Iby2dY6uWIG8pNutu8R/Ne1zwTPuXBJ3/ywrOX5ZnyezCdrbWv
	 OtMfDg9a2C9ZsF6qZk6hV7N2XV3/P2sUG2C4GkHIqn4/4zawo5W6vy5+8Hpn4JE666
	 VcWdckHjgsWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5DC61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765923368.21817.10222152186057961747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d07a4cc4564c2eb0fbc9c4aca298bde4bcb4e474dc100edfe72457c1698395f
Date: Tue, 25 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787659233
