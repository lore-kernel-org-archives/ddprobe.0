Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434EB221F26
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789073434; cv=none; b=oXWkxTiXjSRaERpGlcayw1PlmZPtg95RsrmgxPTLcYXGcmkO9yCM7Dy7XRDi84CD3xS28eBU9k4LpzW61U0MCNvLIHXcuZtH1ObX/pavaKJL5qAvQ3y1CdmuFcU43qzKPcmu2w75QeIQlRwQUovu7YlD0RUimjxAjQ8hv5OqP0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789073434; c=relaxed/simple;
	bh=jzAph5yFvtvutUvBtbFXbyzR0gwQW+eZDqHHqMWmRSo=;
	h=To:Subject:From:Message-Id:Date; b=IlopdnOxTGIbJIzfcoUw1IhQUgb6H51KHWc9ht/1HnPMKUdmyybnyzOF9xxOz27HnNIlfEkYFCMtLx+5cWp6cPMS3m1rtuzDwcaU/nqW3b8HLllKsbAwxPMp9EhIva44heWWjxGPra+mcCDhVEXTjReYLV5VOJVF3hhQPzffQmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXNm3u2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXNm3u2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED6EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789073433;
	bh=jzAph5yFvtvutUvBtbFXbyzR0gwQW+eZDqHHqMWmRSo=;
	h=To:Subject:From:Date:From;
	b=dXNm3u2WkZ46ka+hxovivgWG7s4QbmJoPiR/bCAslXdE0v8PQZuIKEP3Sr/gTXk6F
	 j97s5569UHBbA2WvJjmca4BMjhaXX4cR0/gxEyCUxbuX+J0hnPu/dGtilpwlIPfrOu
	 bNAJInY0bgdQFlv/hfQrKXDMMH/W04eOOdOdMx0NbXI+fVzKua6KmIZFHRPRIJ73h9
	 VAPtk+y1jh+QoVtyEaG7WwcayhX0qwLCzVGi+XU/OYNF7SQ5LPMuxb20x+GlSiHrJI
	 innLPK6XeMnf33RuW7AOXMat0DmQ2BjPdgmPKXI3t7KHAE+VmKmzFH40Qztv9UjrfS
	 9nXzZM6OmyCaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB68C79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907343369.19023.8911893722135920424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ec51bd08d60ab591fddcad58503e1e4696be1ef04ca4ca5b378c0a45153054
Date: Thu, 10 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789073433
