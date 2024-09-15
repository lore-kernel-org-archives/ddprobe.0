Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94E4C92
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726361754; cv=none; b=HsGZ7DkMdd/Amk/XCrUuUSfRW94/a70Gt4GybO62lE349rWdQ32uq/iqMeMx8ysb57R/MhJzsw0bny0yA9hGEp/0tZphDqAyRdq4JL53EhBuqJwJY9xCP+uK4uzqxRWggv+EztmcxAOqdDpqjeT5dLjJbP87K+CgAA4zRuGor6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726361754; c=relaxed/simple;
	bh=ANDOLiFo3qElYJDYZrMAOmqgKQy65WLXC2DH85D2M6U=;
	h=To:Subject:From:Message-Id:Date; b=esSAuMluI0/3B/TTckl7yWCeuOpjzrSXpLt4ET6nRrcSawGmYoYovJdJWO4G1P+DJo0y2mPvZQJsHMq/oY3DgZ+RhNzt+khNJSXfOsCKNsxsmoGw7UyXowjF18+GIO9L7PXr+bxtszlWKgaUdhDw5ePmTEPKbdGDL3DfCbekp0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am2M0Edl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am2M0Edl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B1EC4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726361753;
	bh=ANDOLiFo3qElYJDYZrMAOmqgKQy65WLXC2DH85D2M6U=;
	h=To:Subject:From:Date:From;
	b=am2M0Edl/JgSRtUHJ65jodrVwCJ1pTy6G8qDXVr9Wejs6jncYXXe98qw7uElAmTGD
	 VvEmKSpszKATcxxBrLH1ssXK0sN7FpwfYFzmQqHZjAZXM7n4fPZvqEzO55goDHG0hE
	 WHYIPOEE8V4rayuWg5k4f6GY31RMrTfF31bfvTAdHh9H5zWcdEpxnitU128NMAL5Jg
	 cEDTmc8fLbO/2c0gk10uRlwNhOEkvtKdfAqE6zf+2UxjjkI0nYQKTnmzx9KJgJefuB
	 q4GZp+NCq1CA2l4wezvJ3uDIZmNFJKJ0z/IcD5pJpxYuwN9bwySVw4IRj4lPmfND6X
	 ORGc3yp9ieFpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0077C35FE0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172636175362.3264.4306814764477250342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac84ffa23ea3803c9a2f5290ebfe8de23ad26efc0ce01e3e41293ce7cbfa78fe
Date: Sun, 15 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726361753
