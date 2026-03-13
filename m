Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2031317A2FB
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773381294; cv=none; b=CDQyi4KWcVAIdZiDOvX2FGawt5wLWYQWwKu6BSFw3jiHu/kungqMkNJS7w0QDGYaBnn/LzFjWT6s6CVjdcb2w89GHE1gtelVLTeCSRDvEdr51L712Qe4g5ceh+w6yjbX3ttpONwn0aFmJG3w7LcxjNhXwIulk+9CXbMJQa1YhPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773381294; c=relaxed/simple;
	bh=bsmrVvXoXldXeLbr9zAtmZIIaJHxmqxQhWbiQ6veqew=;
	h=To:Subject:From:Message-Id:Date; b=QIForwdeC5fMx1IqFjxFIns2O1N35VR35/9Rg9qwN0kU7dCLbbTFHkgk8rbRetGSRa3aYQsq9/rlUSCFqXKPAUb+XHLhwhJTjhbUEdKc+LaQ+idWDUFWGGCHCsAhsRJzQC4mFHHYw+RDQALK5EzcLO3GBxuGOErguB8/GeUbSnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaSq1w58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaSq1w58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A136CC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773381293;
	bh=bsmrVvXoXldXeLbr9zAtmZIIaJHxmqxQhWbiQ6veqew=;
	h=To:Subject:From:Date:From;
	b=CaSq1w58mReFnxEqCE5i7pCH9Gwt7HbRhkdVNuJcIQi4yZPIZCspS0e8oJGVN2F7J
	 Xq1vhbKgmOQzcn+zvHNfX5jm8b9sGjbZqPeauEJ2jnDG5i2y9R7pd6euT8Zv4gpJem
	 75Uu1WKDfDruUEc3XwfoHSGjkfednOnJVdm5X0Ou/I08NqudwPVUNtS99ysbpXVHzW
	 b9krtf5cLknGmcEwa2Fk33++fesyINT4SDY4N5NlZmevExzEhkLDmO2Pad29VnXpHt
	 fvQP5Ya93jZOjvEmiBykrpRYOMHlHGumhVIkDwYhSU4Ly+OLr4oluwxK3BO2TWFTFN
	 Oenh6QLV6OJWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EAD106FD7F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338129358.3914.5855664835473656858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6bea53cc5536aeec3474f69b272b8503ccd2821af83e3595b0bdce78459790
Date: Fri, 13 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773381293
