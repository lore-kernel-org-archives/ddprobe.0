Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1991D273D78
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753784994; cv=none; b=DNou5Pflz7E9zBsLQeW5WwSw7zPBNCoZTeGpSA4Gha8z15pxY4Abr8vDFyYMbKoZOhCBV3eHtnvaiK6ooA2x6Dx9YjzzGwDi+cnpYFmmgD5Z5Z07Uy7sTqs5EanbY36mKKD30su+wHbne6oex0cpJfodzs/rvgVYhu2Cwgd3pVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753784994; c=relaxed/simple;
	bh=sytlAHeFn1e4HJ1eTTqnZ+YfPxe3i/lOXROrawd1ivA=;
	h=To:Subject:From:Message-Id:Date; b=nqIWMm65erBkcrxLYhERuqLo0S6Aus+Pvu9+GvU2deFhe9twkUUzKy9QTaBUoNRKlsISNfbAuGIjV+ztCviu1gAtqy2kl3pFpkZg9LrZTMqfns55QbGQf53C8l5qQcctM4YIiT3ULhZVrNzvDa2OtI/YVTMHS2jexuKtcBcgNTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAIwQJkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAIwQJkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D44C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753784993;
	bh=sytlAHeFn1e4HJ1eTTqnZ+YfPxe3i/lOXROrawd1ivA=;
	h=To:Subject:From:Date:From;
	b=CAIwQJkvDzSAWGrFP//JHs+Ciod+eP5V8o7d7G1+N0ukvZOf8WcC8fsvEauZ9mDGt
	 esyzxdw3JVhOgBkBOV87jfF0FwWnqRE541N23jQZOzu0Iy9xBnX6cfQ+aX4s2+uN2m
	 kCvWTyWGgePfzwcfk1/33VPT9zeOXkdzQ7lEjvF9MP/zqc7L0QJOfxiTuwQf5zlCnm
	 IMdtCKODWwqIM7LbIgtd8IX/3jALANShVkVTOeKhrqWKlys7LbR6JMGAIZDPqbWPg0
	 zaXPUG4FsVm1oJSXzLkFxIXCfPFvypwL16H5O1/kdNXHhwURkuPbQ+K+uDgbqRCY8t
	 VXn7TSPv+DVog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BEC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378499360.353.15999298089355059851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bc44a113ffc3efb0fef2122b285159ffa93381127eb2c5e8ebe5f66c35e2e1
Date: Tue, 29 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753784993
