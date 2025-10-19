Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A69018A6CF
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760909994; cv=none; b=oeYWFEdVpz32T+lo+7x7xnyJTKuDHY4c+NCXR5PWxnBjlOsIQ8MaDBEIYacxf9cTLA+E9x5EGEVUy1c6WmVG2k0mbFtyS+jMBj+A9ZAMO9OTEx+LQD8uxEbXyCvT8bsPAjW4m0IIsrTneEbWsxiEKFZZgxT/u1rCTcgGMzxHCj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760909994; c=relaxed/simple;
	bh=yf8CZDMpOEv5kKNvTCjwVG718vuNw3xxUbyI/UdeAuY=;
	h=To:Subject:From:Message-Id:Date; b=BEwMWwqoPCFAOzCrPNqfO6jnYZs3Hyq4Gtxe8ZKinfFP1i6GaqYQ+Di7LUuBTERA4hOBGq86v/aOQESVAo6TKF+uU2YEVNsh1JItINKvZmXQKs14fW6nSqz5PPpprpoRobdD/7UK4M0pDnwzIU10C8kKS5mLSL43fwrUFe82llk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6Y7jIFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6Y7jIFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE02C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760909993;
	bh=yf8CZDMpOEv5kKNvTCjwVG718vuNw3xxUbyI/UdeAuY=;
	h=To:Subject:From:Date:From;
	b=M6Y7jIFGEw34FCmyJTJJQ9ZMPqrOdSpd5LitKFPhiqZNPi58qQKw6lPvdx8mYDquS
	 5ohgAd9RGefbvQD68qq6UmVFyDLQrvKCx3/qo01IvbwNJUmRpTWlYNEzMUKxLvU/ye
	 tqUm4st/UzKyw1vWeZ35vFTzejkQ8SnQDqc7zd8yHGWPEO6rqBC0KWbTpCTnk0QA5b
	 KHSIDdH84tBIWzCYbsm0ip92ug765QhIZqk+wX4gLkYjRTJZGd88TAGvEE/NmB+nv/
	 bPa5ngALO70U5V3Ue9HByDsrcEZ1bepBZlpox7WiEvWtNRKUWxQ8d/nHfsXA6zmbOU
	 pWbuWea2Sr9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5B4CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090999362.14423.6446375165041891944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77ecf225e08053b0bd643bbece22c312352df409c95dcea7f60e1f24d0285bf
Date: Sun, 19 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760909993
