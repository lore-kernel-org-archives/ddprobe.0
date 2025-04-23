Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32045201264
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745399994; cv=none; b=hw8qLEHNH0GbTNnFPWTtZF3wstuafBwSGu32wTvDJG985XeXAlxIf4Tkrf2qUAtexKw9IkH+2MUJFVFhECwFmIsbcJDs6pl7oaZlAMlpvGVcint16ojCq6/2aD7El2zzzdK/hniUPiC98TepgcJbL21g7iC3O8YeSHwX61IaMkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745399994; c=relaxed/simple;
	bh=s9bGstKMLm776nZZwc2sZhbIdNfL8L4KkWmAopon1jQ=;
	h=To:Subject:From:Message-Id:Date; b=H0EBHWUTW83iAlCiGUzUrn+f9XPnKMl5XfODMsvHXHA/HwX8V2t8UIovkmqaaZU9yZdY2ZPWelaYDVmGJBa0gdY7e9flVinSqkNoNzfTuMp8xqAwido9WihuwCmQHh4f8SpCVmNu9ppIiuaAJJeKOi/uK+c3nuFGgQ2Ri9s0pbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie9AFG+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie9AFG+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A041AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745399993;
	bh=s9bGstKMLm776nZZwc2sZhbIdNfL8L4KkWmAopon1jQ=;
	h=To:Subject:From:Date:From;
	b=ie9AFG+olSN4Mz6VSDsaPHIR2+Pt+iPlHhU7mHN8IblHjb/d2a7a0Ybzgwb2kvUr9
	 Ek6hd2Kyv5lOFZJDgEtlE8WKjeAWjqhRs7XgYoc3bWtLegHjCSOkkVeIe8ub1ncue2
	 bsplRGtFJ+OMoDM5GYar06E0z8OSNCo15cnZ4oMBvWbOVOazjUYg8MqY2hGRqCOTej
	 Q6NRcA414k4H1rFI9OtHKE0GgHrp6e3lDNbaEAa6WZu32ZYIHWE3qe4k5+BvKfeHrc
	 W1ijHfkgtoy01iduDXCWXNFjLAbkCRauvNu71k/jdpCRvTKLCsD4CrKTdOvF7C3FVY
	 n9UXhkT35PfAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E603C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539999357.28777.10638164829305297906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91175e0a8b8c21fc34c5e849125ba29472987b0731485d86ffbacbc7434f6177
Date: Wed, 23 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745399993
