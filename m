Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BA3207A2B
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745483394; cv=none; b=hVX/Hx4J+2jWl9HaqiL77L8aD/T01aMzYJ2LgFab39Zs/nvdqSRlyEKom91AMDCO9iHVLHDRRNfrbS8Mm/xStAOsATiWQ09w752prCzjEGR6sAqpeW+TrL2u5g9nuFr7lZvlLsLCMPNk5t82kDd/tyG+LnIqf6eEspzUoDiYQPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745483394; c=relaxed/simple;
	bh=qA4NOSiu8S3kE7mfIF0gEQjgUb3L0ENz5cQjkaGq1ws=;
	h=To:Subject:From:Message-Id:Date; b=oShOVx+Z7oDCb23hPcrQN7H8lor/yIlhVulCzehWukxC48g1OIjSNuj06E2E7Sm00reRU5p2LbHB0jpHcRbnqZECHXe1R60CsdPNFwWQRzlk3Afcdy4IO+zJxY/+/ld5RWxY+SN4kFG8hI3J6ueGa2hS5IBTKQQmgxVSW+ZYfTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KX96/CDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KX96/CDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00E5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745483393;
	bh=qA4NOSiu8S3kE7mfIF0gEQjgUb3L0ENz5cQjkaGq1ws=;
	h=To:Subject:From:Date:From;
	b=KX96/CDS0wym8IdG6HR6xsG7iKgiw4ku2znb5JcsygRzzWIZimnP9rU9N+D6OCNl8
	 0QYbJKL0FZ5JSKNCWEU0R/1L6gD7e6UO+Ljv66BTXlod0LG6ArIxMHRfFBldMJFc1w
	 T8NJKI+9ZZ7WGWIISd1O6VvxUhLBkqX26UtTkmyW8E7uYX7dx7zd3bKHbDjPi5HkY7
	 KxFk5nyXkinJjDJAoAwFkXPeIAKWk4q691g1Q/IXl/PJ5vVrI76jtXmFctSFtEvaiN
	 csb3xLovgyNCkujtEfuP+Agl1uS/af5pDKi1F/cBAPXx3Xba9xhCO9fndw8HLxZkBJ
	 x/8YZDXE5UHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D4C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174548339357.30803.16755698249821832429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fca2f3dfa35a69480d87955e6a7659c27204775efc27a2eed425c95482fa15
Date: Thu, 24 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745483393
