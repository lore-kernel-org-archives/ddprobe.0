Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299B11F190C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736263554; cv=none; b=oxhW29ByZQTjEzpIN5O0oonrF4wtxcg4gDtH+PIMzeFqIIOmTRHPJDnCvy5PfjY3VHxoGzUtvkxLKEJKT1vlJwXbQjvU0oCLQVgjoojzFGvtSX/pCLY5UJhKI6ioFY2ypNG33yRlJVrtsph4K+A2ZQjx1vw7i7rp7NotIpgr4ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736263554; c=relaxed/simple;
	bh=97Dfa5jUV3FAIv55ZnNwuJtjZXdQMTd/Ve8C9SR/i1c=;
	h=To:Subject:From:Message-Id:Date; b=Az8oANWGisADRZyj4+6s8SoZBHogF906mTkDhi80a/F9IXmq9YFT83BbRPyUT3uYfgIzDu0ikM+6iALTX9fOLkijBGQ/dyDEQfcIfE6+z2XwU5xMZWhOrvIhntg0hNS8C0OEl9HYziov5hvh9JNgJF8HMYEVcoNUBWXHRQIFDhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR6sqqZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR6sqqZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A951EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736263553;
	bh=97Dfa5jUV3FAIv55ZnNwuJtjZXdQMTd/Ve8C9SR/i1c=;
	h=To:Subject:From:Date:From;
	b=MR6sqqZpvXRgBD+Ytj2dG6KcW7ILLtX0JVFu7WKtanBEqXNGoJI1E4a4BnzaWvRvT
	 x8RetMljsTsK3quq3rpZZsEe8KXDd7EikiUQR9652/iQ+GBVwehuiXDq63V+hiLnwM
	 AQBoOssu8QdCkayJGTEd+KU9ZXBeIU4FWDieEc8VpLz6LRR57mvnsIv5Iv1bYI80w2
	 35wvK10Vnv1X0PEd0gbfOAhZg4uwaggpF0TYZAPxp8BbKV3tuIqiynbzk7TAEDW+iz
	 AmQc5a2yk3t+S5OpJjDbdCVlUydgkPWGHGYpJMqAAxp3rFCdNHAmQMOm6D7SxuWA3W
	 3UWn5RoJIA5Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDCE77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626355359.16859.329807403987185681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dee915a2b919934212e3be92a74576b64d23714772f0bf0b2091588a2813f7f
Date: Tue, 07 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736263553
