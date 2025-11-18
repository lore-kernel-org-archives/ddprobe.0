Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8043D28853E
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463714; cv=none; b=gw60rEJyAotT8EwtGE8P6huW5iX/yoqeZWaMnmOrzMatA45rCkht3vm0lVXHq7zuXT7uYNOlcPUv70s5qEDSWejzPK7y9RxxsrI4XIpM0BKK2lSjZBc89/r72W2MghwaBo1SEXHJL/3doXKYCVQdLk5Js6nZoE3DY2BluMHlvwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463714; c=relaxed/simple;
	bh=SFE4+EhJ5crxmWStjj41sOfT6P3eOWHgFWE2bx/rhUE=;
	h=To:Subject:From:Message-Id:Date; b=sQ6EinOrhbqvrCWchz4RwGs64PzgVjPguuR5RpZKOjJgy/pWaKeuCgZlmq32oS0nfVkvxcfXp93wosXprEWmOJ8y7oN3ElklPRjn3oz8x43mcDiIAFZlWzO38m+1mSnFtPa6y3bhjspdrQg7wRQsovQO5DRtTJi5j/pgPHsJBPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sokWj2tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sokWj2tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7717C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763463713;
	bh=SFE4+EhJ5crxmWStjj41sOfT6P3eOWHgFWE2bx/rhUE=;
	h=To:Subject:From:Date:From;
	b=sokWj2tzeYJ6Ok0hcWkjlofjlu26MLHfF7R0MllMcaUpGJCxkJNWDjtF+qLUyy4fK
	 pTEcz5l2YrWt7X1JsW1U0XxuQo166dkeKUpDZcC2XrTt4/yyvPrgOnScpNgAu7dxIq
	 5t34q1T5L9wLUy+fRzAxtY8vS8/h4A+us/Pl3P1s87x9mXXjenzQ7TBP1D7j6rawsd
	 pWCXMund7niQCp4oC4iGWCuGjqM6BJkBL2x5ZExoo+jQlTKm9hMdH1dYYAPfLY0cE1
	 8Y2B1NEX2LhIsDDlMnxxuoCMxjZCSh98u9rZG89OVc5yYqT9RaftF9vM69jA1InOte
	 WC7jAlBIkEO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C0CCED255
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346371361.17890.11032533578530535014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c6070344421d0760e77a3ebd797da1d18b170714d78f8d95be459cdfece4c1
Date: Tue, 18 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763463713
