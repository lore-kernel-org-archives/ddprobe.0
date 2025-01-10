Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29979221D82
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736553354; cv=none; b=kS+z/gi7drJrkLnYgoW9PKGX4MgqVKtauUkwU6a+p6r9KynkO0TdHc4r6tlO2kP67sTeawZLlQ7berCjQrAR3og8FjSU/i7UsexwWbzJoseHbRIF72qKnHPeTTUXVUgfMER/SqmkdQHJTICj7N1BLNINSSyo2fqynn38OF1Rca8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736553354; c=relaxed/simple;
	bh=GL57BMLH/A1Kvf4TQQoekbwO+Kd9R/9vuzOjSg3DrBY=;
	h=To:Subject:From:Message-Id:Date; b=THnBMZdzNQMRNtUY6/7pIW1tISNYE22U6YcG5NUNvUeU6q/obNrl6oXbI2l7AiE1uqlbUsNYLMs7f6GppwOn6M+RWCTxzm8N2q6aCFOGnKTay/f/7VEwFncKZOcOTYRFHkp4edOz6gdZkr2b68Rr3xKNLkdWRgiJwdudfWPkHgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWFXPXDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWFXPXDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB0CC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736553353;
	bh=GL57BMLH/A1Kvf4TQQoekbwO+Kd9R/9vuzOjSg3DrBY=;
	h=To:Subject:From:Date:From;
	b=cWFXPXDsv9QdO532w7X9CVp5W/QHV72ELEWm9uRng9pgyhM5WPOyAwiGb/Xf1O7kU
	 8jJcJf8Bx2HVXIshkfG4oNhe25P7ZKkFwvniBG3GYLIMrN/F9GrNtMMbor3zmDOhGt
	 hHjJtceE/nW4uNgJ1FfnUjPKs+VZsLhz0xtSBe6G1uX+RMmzzVzkdy1yG9NcAHO6AX
	 ZmMvEeVVOgkUyjwkgIfc78qxihQ6UY2hdZw1nS598/OSy/yfPVO2zgqgL/Yy/9RfC2
	 V4FKutcYiHmdT8ipiKFHiANny48QE9h629cRPu+acyWJLE/yoZKPsqcWJ9sZzRCOJU
	 JzeFlsIWZWhQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1DCE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655335362.20544.3737156633816009729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b445fdb6febaf9b8eb4d4f40926a9c37b317620df01115696e84a9f6a72f5caa
Date: Fri, 10 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736553353
