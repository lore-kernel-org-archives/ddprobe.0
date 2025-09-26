Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3065227FB34
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758914994; cv=none; b=njqK6riIjml6nAXdUlcrXagaPYdknH5uaOn9Ak+Tz9Jhf2ZyKMnTPL9bvRotQz6yMfre7aZmG45oKr8cWN1HcT5MXGaoIaZgCUgAq4fzb2OVrfnhfKBs4tb1Qg9aun4L59JfcEl8sEuW4j1f5e09XCksI7lNOe+PH5jk4uydXAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758914994; c=relaxed/simple;
	bh=4jwFRbeYDxA5BgxjwmvsFHRe1Ylp9JVQvvtzKE9QPZU=;
	h=To:Subject:From:Message-Id:Date; b=WKPv6aoesdIsWSXcjCrZo+U6f9aTsS9mEyVfNb+OJMVuG4405JpQJRp7NNGCvBVAhlmxC+qi/mZbzHyVWZsSjGT0pgV6163YRtlsvHS21zL+SGe6swaZro8+CvwE4YRQJR+r+ERqJ0H3mUne+G71Cs+5JPqdMs7r3JK4eQI5TbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPt6aquu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPt6aquu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7342C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758914993;
	bh=4jwFRbeYDxA5BgxjwmvsFHRe1Ylp9JVQvvtzKE9QPZU=;
	h=To:Subject:From:Date:From;
	b=EPt6aquuWoD8WqYD1fMlvoByJTru4WpCTNgZzOu1K/fkHYB1Zyz/MaDRAShuIpwAI
	 GwvS6/mmUg8zswWkCd6l5+xbkH4rTZz+xXP68EmbfNGCldKOXQ9+MVcX3EVEoHDqO9
	 dJBDQv/wzt9Q2byFXdWbKGet7Ovt0UmBtl/dKjQQLNTyxCpLET8GZ1viuhUTavp0ms
	 gaSvzyFVqEu8WxF82guYecPtiwMwznYZXosR6T9Wb1XTrGqHCPX7MOrTMwSuoPdBA+
	 y+F5MBrl5CMaGLhuEJIQRgOhIS8gK/TH/JyoyGd7llEHAV9GB5285VzEwEP+ndbD3z
	 +Wk6fSVNoXNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953BACAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891499360.22566.11807728424393859578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ef6c16c63b27adae3330f271d36fe91e7c7fc87eb76d5ea1395c4eada7b8f2
Date: Fri, 26 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758914993
