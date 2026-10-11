Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447BD23ED6A
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791738634; cv=none; b=QYz6uJ87daqMunJCTGzq0EJ7KSUsQARD4cpNBlDQ7tmpROKPO9GLa84GS/fetmA0aIMXWIDQzEIt8iIUfwnvJkd7PUCAU/2/TiFWBrG3wiq7aamS7DzSbUghhswA47IZGfrbqzb/HBqN/BULzbJIcE3YJRO6vRg7O03as1lRNoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791738634; c=relaxed/simple;
	bh=7XsiDzTeF1cj7mRczEPlBqxyu208z8pH+8P7Ejkqw0s=;
	h=To:Subject:From:Message-Id:Date; b=qdiF6nFfyGa2kXuBPr8JLz6/lgd45aTOVl3LMare7GPIX/TCwe2Q3OoQ1rQVnQJp6FbbazjEBQb8baBIFfEk+NYh5uIHbHGzWjQKINMIHGCS/oKF9k6IUOIJhL5TL/ahW9z4raJyFkZ3+xnVn4rKqzPCrHM+MV0sma5qrTWtCNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUEZ2NqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUEZ2NqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90E6C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791738633;
	bh=7XsiDzTeF1cj7mRczEPlBqxyu208z8pH+8P7Ejkqw0s=;
	h=To:Subject:From:Date:From;
	b=fUEZ2NqV9I2Udh0zsgUt2QkvadeuQsW+kRNNgAc75dxt6M8NHiXXRbRueQ/EE7nF4
	 DrLfROqEByWDYoj4RAidQVWB6YqPq3RjqSFC5gMkDM1PbVSxiGuDPMv/ENpC0V26HX
	 DYcQ0askUj9rVa86UVGUWroacF+vkxvtsObefwe0oUoNyQmeVr4PMikdUR8HPYnGLm
	 Z9X41ICwcivT84PwyzlOjrGmg6ArbFmZhv+wwtNYFw8+P3H5Adid3jPQzLsTtqhUU7
	 o4GNFGrqv7ncqL1sZ+6Dl2uuSHI5YfFlGwhACwAyKS/KXXc29MN91Y+//OgaETgPBS
	 v0yt4fJrqytXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11B4CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173863368.29828.4528457936172476565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646fc7ec310a3d9ccffa84ed4020bcdd8debe7d343a74a611e5382ce2dc81b66
Date: Sun, 11 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791738633
