Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6541DE2A7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762503594; cv=none; b=iL18uJ3i6FEtTJJmncDXd9F3NO1XgFyGaZq3BRNhWh+x2TdhtrXnt/9mvKaaKhKdzUeGxjy2/dzev2w2Z2ZNAV0KMYByaSbABgkJfRpefua5/oIM+TKgI7lKPmxEaqakpy3zBV7Ih4mH8A5+cq3JkzOjQHZIB/skLgV0V9kAfFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762503594; c=relaxed/simple;
	bh=YBrUOamA8XhCtBRjza6F/QYMwtw3StObJuYrorkCzuw=;
	h=To:Subject:From:Message-Id:Date; b=uzjsP55bWvBOMWrl5ooenk9hWzefZ3kz2cRuVDpqB9GjSERsRj+/4BwXwz7+cwlW1ASlb8HFQVuy+PbVohkoKq/vNw1VyoBocaX/qFYwV5VMr3miot8Y5a8x6yTPK8M6VTNjaLH0mNxnR5ViG2/xSUykJkX5WLAHH+3q4uHXjxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0QQFsoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0QQFsoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A53C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762503593;
	bh=YBrUOamA8XhCtBRjza6F/QYMwtw3StObJuYrorkCzuw=;
	h=To:Subject:From:Date:From;
	b=P0QQFsoOsTk7m+dA/N8U/bkWRMeQE/x3MRuwhMgWQlNY77KRZ0snuC8MZi1bMeX2O
	 WiE+vhKfcbPQK6RfTqYH9DLG+Ov37u5kTEy27M7WnkgACso7bz39bwtforfPntp56U
	 MEjS0CAnfd+KTHQ8JyZHyI1RTIU3hDTv7Djo2sx+dF6Hb4LHzVd8n2Srj0/OZDhk+8
	 jwPjTGxIHUxLlMiXruh/BiInm5KwBpjMryI7jtGvICyFK4Nzd2ttweRDQJ978UI9gY
	 5cY+82eMDWIZgtY49Qte/JJXoEztj6KNrvJ8+Ll8QyZwJAGHGmXNlTT+M9XDm2opyJ
	 MO6nUYiyWqsSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D4CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250359358.23816.5852498966408833926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cb53dbd05cabac894c9fb5d17178486c6d9843fe6ccb6a280e9d4d6d918b77
Date: Fri, 07 Nov 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762503593
