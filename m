Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C5A2B9AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720955423; cv=none; b=l7+oqNo55svYxtG0n+I4Vk58m7gJATkMcmcZ0FlLTtTicNVBmXPkeDnGgfk4XHUNwxL6ZirEh+5PH4BdRK8XtEW4FAmcTfn6c7YjpXFKdctTXFtFgaFpoIzTkH2cIpM8O02zirNn7rmF30jPFo+37ZUiborWR4XH7mPeUb7pK2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720955423; c=relaxed/simple;
	bh=c+EHrAeKPzpjHdzkKSceuKvxaBdfs3h2iXgCo3cWvyo=;
	h=To:Subject:From:Message-Id:Date; b=mq6nNrzLAR0SmYdusUKttWWaNP6FgK+3Jd5EIsHwpRHG0TpxrilSxRePROcNvPB0ju20KY5B4gh1nbI9AhT1sBQhS1jdT4mbC7D6ZSOuQ3RKE8RMlfd+U8Zpze4IpVWOaptHTVpDVxDbAuNxQa9RLAz86yoSCCdCF8RAcu67FYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/6MucQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/6MucQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2FBC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720955422;
	bh=c+EHrAeKPzpjHdzkKSceuKvxaBdfs3h2iXgCo3cWvyo=;
	h=To:Subject:From:Date:From;
	b=R/6MucQDqL2GSa4ebvqFMGJL6oVJ1bZH2SsR7cwZdJn03Q83TxxkvQKw/wZsJ4Pnf
	 BVXP7za+iVRKs4prFiaSMXUu+Na8p7UfmdZmdW8fJa/Hqci+dVG26J7A+tw5IVwTg5
	 XSgFNWj7EZj+g0/XBmgKsIrdB0dGBQLOZmhkvb9BiXg8ws0qpv9DWBjT9MYRb4S/y0
	 Of0m5vL+sdmq6yLSjtlHu7wA2z2T1g8W5+mLF7dtrsI9zFhvLenSPYuJ76cs2aRYEg
	 YZauWYb1zCHNXnM03c3R+fMSokw/S9ohSv+QA2T4EkemzRBbPjV2vzrd165i9aWryG
	 KRFbHCCV3ZiQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93A3C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095542278.19271.9006966067530381427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f3e29f485597d8a7471532c717bc02051f5723b48d6c36a40422629d1889f9
Date: Sun, 14 Jul 2024 11:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720955422
