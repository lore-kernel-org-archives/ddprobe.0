Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB7F2119
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719022943; cv=none; b=nhiZnRwIFRI/iJHomt2Ci7ZfJPy/qjMbV/WCcSpwLjb+orcYmAg/8UqKxQ33MaDvmljl1w5N5erWspEOYVPnqMbsLh+3VeFs18SkwmyZYyCMPTYOeyR98HQ7iY5LIxHMxp+bUL8F1BV3wQmwMetvan4mld47ivef41E2QNIv7CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719022943; c=relaxed/simple;
	bh=AVIyk2h0cykj2JXxhy+gOu5A/m1PYdcaMiQpQ7IAnng=;
	h=To:Subject:From:Message-Id:Date; b=RYj91mLaAgm3EHmFEuNh0o2MU+OgTI3aPtVYVifQWr9RfZsnaKdKOQzLy3KyIIF3XySs9RU5eeraxVxPlDrTNczEIlaktoHG9/KKI5rs6UDS5t/42v5NJG31A5/bZz4F7viujGziRJj/ro4HF14d3Ipb7zIREosuspV0F8xZOkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHHx7Kly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHHx7Kly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EC1C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719022942;
	bh=AVIyk2h0cykj2JXxhy+gOu5A/m1PYdcaMiQpQ7IAnng=;
	h=To:Subject:From:Date:From;
	b=mHHx7Klymyd7W5jNx31g5LI7MNsN/PB4Z5G+4geFtox+y0LhK3aLyMqvLYYY9FEbd
	 wLd9w+mh/SBnxdq9NB2H66OIHdT3OBYIQIL+fDwD4f61ZMjlbX8/TJbZE0w9N/AWQM
	 JuEq7HEoupfHCaRDMhwI6uOk11dA1mGWGmYTPjWq079tiilAfugJgniJvoUs1ltDom
	 AZTK81DI41PA8zhtP+KyL5rwIsLN1A3Gw8pQr0miU8ldH7CiTa7NWaBV7BDk0Smmme
	 IKoabXTBHwYLxDB2556LXOfrt2JDr2UO8ScmlrRroWGQdqjCbekTIrLHAmjcPZ3n2F
	 lYgBz4K36g0xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0E5C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902294277.22484.7721545298298869509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893c208a2ea5a79336350b6f102b69405d5f62f574da1b6b1fe1e7d5790c8d56
Date: Sat, 22 Jun 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719022942
