Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5817DA7F
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738761354; cv=none; b=HReE5mc1p3qrHwLnve7kaQX+BHM2VRbULL7F5f5chjlq53DUtoHEcSCTDXMMWQGmy35YASl3O50bkLvKKfKIhOw3LgJ/VqJG+djRuryBzfxlow8r2JJx//m9k2vuIsN5y9JXbpk1OR0RkMbqnAquSxZ66io7T1nolq3hL4TjiEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738761354; c=relaxed/simple;
	bh=2Sva94vDygJjIhzg69GrpK3/ic28CzpuMlFbi58O+CU=;
	h=To:Subject:From:Message-Id:Date; b=TEBBdPY9fYffx2acHny3XiDicTBVn649MaiJK0maTEHJfbHwtzMtDnlno72mmKYtQ7T3PdqXTtUhnVE3L2GzX41hOM1/c0sea7s7zsanb6SGu3LSiVrfMmBfMDOjJB2QMaNcuPoGiFNvPzlxTwLC+GIkgGNsp0dEtUEye8DSCUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gP9sA99y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gP9sA99y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCA6C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738761353;
	bh=2Sva94vDygJjIhzg69GrpK3/ic28CzpuMlFbi58O+CU=;
	h=To:Subject:From:Date:From;
	b=gP9sA99yWYPl9OIJOgGsBdMZ4WWxoQMNG+dCT+aTvhmRCYkF9VE7uL+bk9KK8lS/U
	 e8NtTNpG/F5uUCxTMDbTkLznNRwYpJoxpyhS+148PYtLO6CTaxNj9M8dssqodJcXas
	 SqyfaMAD5M6G6wZOtC9AEtrxlPoYMr9JGv1Z7I5s7kRZHTVTpdaREBFZcQZc1L2o+j
	 iJ9GLcykTUkqOgLIvWh2ysv9nLq3Ne/9Is6LVpw71saXrxQn8JFEHHY2Y8x5c5vjYj
	 geT7Gns98F8T+7xOp0MJsip/AUafFhAqtbhmlh91zGZKbL5x0sz5ux0U0v2a4SXg2V
	 OHSYsuR1ow2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C7CC02196
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876135361.32133.9007701019111053522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e9315b2f8a24f3c30127c8c41d5df5b510f8d5122e38609ce651c84a218f25
Date: Wed, 05 Feb 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738761353
