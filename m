Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291AA2882D7
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763638914; cv=none; b=lckD2ossaFLRqUdQU4TwFAkgtDS8B7sbBUXS8QtZhjHdCWhXFmE1bPp0NyB0HPwI9v37FQVG9t5yBwVc8o+fO/ORYB+gkD6tzsm9NVIEcFJ9igk0dPkppPHAPssMoDeUijX9mE3WqFDESHa31IK11KKgu6qfr4UrVCJxiAVNnas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763638914; c=relaxed/simple;
	bh=mbHdYraSUVGFYVGIa1Jd5g4YnoajGaTceDAWJB66kU0=;
	h=To:Subject:From:Message-Id:Date; b=gGxrEnwjWKHCVLX2QfFPyfFIYmWkp/4kNwrnWf3+xIUuevqECMbGNGmYnCcDE0b570FMl3pmjuUBoEFMJmxunBXzRraoh8va3KjXzJpy/AYKQRf0k9ZoSGlJPk600arDpdiqETOaXN+/CvEZXZJoeeTaagMNSVi+p2wPIhHsMKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIf2maqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIf2maqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763638913;
	bh=mbHdYraSUVGFYVGIa1Jd5g4YnoajGaTceDAWJB66kU0=;
	h=To:Subject:From:Date:From;
	b=EIf2maqozGq6FqLkdzK6StlDILefnAMeqCj0stALZltkLnDLPNQ7/afAKiq/IqqQl
	 Y13oClLGO9QifDW9L2rR0L47wHfOZCBh3QmNcIqL808qk6/ubrFqWxCcTcdcd80hTI
	 uNGvPI5209pejHSN8R2lqID28Esa719k3kXrTuZiMcyE3MlxMtHpoj0ct2IKjinRkB
	 CmHZujmGW417yGFDut4rt3u8sHrz0OikaxEd+dy4pc5A/5I7BnJRquALKYrFmzUmiE
	 mWxZDJKush5YFDyudhyy6oKDZFKRbB3goZRvYxZtu5/9Sm8qajhAg5SUgyChv4WlRQ
	 XSYlSipu45QkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3DCF8847
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363891359.10632.13471915587556593328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede2b4bad48d499ce32d1a15b893c800825ce52e2971d42b1fdbcb54809174f6
Date: Thu, 20 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763638913
