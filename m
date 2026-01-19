Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169C1F03D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768842834; cv=none; b=AlU89OZbjlVerhxW+8dA45RwcEoREP2ZUdOcQdUX1RL63YCPT1kVNVH063RZnqk4e8SA76R+I3Y0xHTUA3Or1+pql51OhbdAsCJXO7nNgE7UqVIXWCjY9qDw/7t1kcYzZ2hVM7/2+xSHm9TduQmxnNn5nCo+dyUCNV0OZTqjWR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768842834; c=relaxed/simple;
	bh=PPzXd3oTFsIn0Sk3et+NedVKuWf77D+8zep/1JipMy4=;
	h=To:Subject:From:Message-Id:Date; b=fbznbQSssbuMsIzePuXfP0P+no92jfY5YHajXPM5sGaEldkgHVuiysyipatDags1KkokWesWOJf+Q6P7DXaSnM/JQymJNE+FSOvTNT4FbiBJn+TGt90VcttMPNQp51dVzqzXdGB+HJFV9rvBFO43EfDdknL4BpUYgL8Rh0j5xPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C004nJXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C004nJXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B48C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768842833;
	bh=PPzXd3oTFsIn0Sk3et+NedVKuWf77D+8zep/1JipMy4=;
	h=To:Subject:From:Date:From;
	b=C004nJXp+qA9IFYVZdFSyZ6lkcF5fgd4wkAs53bZbzG+X82PMenie10kAC0Du6RXJ
	 2jepvpcJDtsAvobNlRrTGvVbPn1RhgoRLU4n4vZ8KTYldgLbBkyks4FKQn9yCW5jlP
	 esHSN16pnzNS92AYZDsINaWNeVo5Qrm2/rdSlRaJVJ0PnKe5xMEUguHwBUyAk+5K4C
	 BxW/dp1oVegp5g0UzwpUN+ctHBHZ4V53IVqbXeV1EThp8U2jc+UiUNKtT/cAlwGL+0
	 O+AcyxBFi1S+eYOiec1+kDFhVdp50R8OOAEWftszN3dUU0KNMRAnQtVaHviFFdTJzc
	 rcEOCExoMpWAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518DD29C4B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884283357.416.2956905358442762781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f30acc86c3aba623f2a8b33eb631476c733eb77031d1eb4c63dfb183f7213fe
Date: Mon, 19 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768842833
