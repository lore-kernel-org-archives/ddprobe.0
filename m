Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D2419D890
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749683994; cv=none; b=uRxwLvAOl1d2YFEurewzWJca/M3FEGv2Cxlgafm2vggAkCOvpNLQZHvcMyclMInA8lQPTqfNgnN8M79BnYGti/9+0dU8aV30GTHSeAy2bogaKwuX+N7jqxfI3GDmr84G/CnRSQ6YJhtp1aUZi8rBHzmYDH4A9mMHvSfWhNzs8w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749683994; c=relaxed/simple;
	bh=2ukusU5FpAPUIkkexRGGaAsvjk36+2+hpdeFOVmer6s=;
	h=To:Subject:From:Message-Id:Date; b=gYkW/DxgvmNkKMvhlMTk7Kjqg4yW8cPJ4otSubDfZXRy00wQwN/EqcvYvxrAxk6228nNOyREqi5jb3Aq1kqxkqL49X3Rs6l6Oiq3Vp6ky1utr7TCqVGIZBhGNAPZiwaICKrisWS4oukw7kz/70waMRoudgeG7B/ZSibXG6WEu5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej4QuEIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej4QuEIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B49C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749683993;
	bh=2ukusU5FpAPUIkkexRGGaAsvjk36+2+hpdeFOVmer6s=;
	h=To:Subject:From:Date:From;
	b=Ej4QuEIrf0WYj63s2l/1gIxaS9RVSjTIA33Beaqtd3REAoUt/j2e1738dX3zEK1KR
	 Q3H5Z+7EqJmCX0utW4wdkFPqUx5k0zI+1HMk7RUBVeE1jQotDpsFHkj8prEeoXxw74
	 SG+Zwt/5DoFymDwK0FnHu6hK0O+/9uoplg5K9j67MAQ45n6DtBy1wgu8xCpfPlpI4M
	 cY83iiiDc3vMiYrgdnoquj9bzWsLhjBbozZTN8j8T2Zj5rvlIoYo9rl+kMOnAcN/6d
	 XFmJ4JHNONrDMShxL7561BFwIqoW9GizuJVkZRls2DJ11qIjzJnvZ5PJHKLRIWq0A7
	 Ut26y9FlHJAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E5C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968399359.32012.16675083719957719451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c42bb9749689a0bef67f7e7191463f716e1ce31e89647ce51494b494f293f0
Date: Wed, 11 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749683993
