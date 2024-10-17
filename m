Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231891D5142
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729205754; cv=none; b=T20rmlTlGF4tBthtmEK54p+YkZ9WEAdmkAiniNuHYmt2OqitFJ/6evCNQOipw/7Eh+rXeqLBTsR4f9iMN74prLiy0Tv3AZNhsJnm0BCtfkZIsu1KedSGZXc0gNi1W5WYSLb5kHX9O6LKhwYM06ci72O+DD3Lz4d/jvrdahRSi8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729205754; c=relaxed/simple;
	bh=YC0PuGErTdSqDPN8j3EaabAZq899w23T+N8BBe8ElD4=;
	h=To:Subject:From:Message-Id:Date; b=OVrV6s0+jzcZQUZ6GICsfiA+prvtW8qVoRCbAR2SVaOCpMZuVoGa661z0Yf72D08x1gDx2WCBxhcKEEb7dBN2Gbvo2eYYeCUzoRHFZ5QfcUjFeLwBjE8KnAsz5uLmcKifmyBV7p86o5UEBE0Bqs3RAxN/hUdFDnlv6vXZ9e3ezA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdNFvlpi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdNFvlpi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2681C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729205753;
	bh=YC0PuGErTdSqDPN8j3EaabAZq899w23T+N8BBe8ElD4=;
	h=To:Subject:From:Date:From;
	b=SdNFvlpiDmIHMl/aqikgx9bsYH2CrL9+RpFHG9kRbp2ylTPmNGk72QaBCI3uVw5kO
	 MHs/BvCg5yJP72JsAil3MeSUXhoOioHqHPpPt/nOR6aeSmQ9WSrKOG+FcKOo5HUvnS
	 xGFZMm8kaCz2ikn6GuWvzkJk+GS3hR8iGeEQFXxcrpMezlZnLBhGFWpbGAhD1Ngvnt
	 3GoITYaeFYX+cRjn99ipstNlaL0y49a9gYmdj5Y+1RbHVx4oGHqvuuZ0gfzQipbZy1
	 J8+mzr7H/c1U4znmcaiX10TpwyQI93v0vhKMP7p9d1Tz3B5ZtcDKWHNmWpM60sonTI
	 +lkic+VYSKc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008BD3C533
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172920575358.11211.11743886933431252417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632ac5382ee5e0004133a18b05381d06cd8f8a4a78eda4f994c4a7ed9958cd9e
Date: Thu, 17 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729205753
