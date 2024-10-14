Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3012013AA53
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728897954; cv=none; b=i4r87lIbEoZo9jOBNKJZsdz0fFEoEaLa7+fq8y4zdX/oOm9aXHP10L40L/WSS4OdzAUsmw/NM3OYJx721Ih33+LG2Q9t7PaJWLFSSsyCCfeNDpqkSPF2I5pZrAw3sswkEIrGmtXtQKBWCWI3n+LXquCaWuWEwrttjeBfxy8n9YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728897954; c=relaxed/simple;
	bh=kdgyqswkHls4blsSSou1ojKeNaVXcifpOlTfYg5hHjo=;
	h=To:Subject:From:Message-Id:Date; b=ME8cZbRGdMj3iMPNBnnQI2o7O9g/pLn6DGbfwULJsfLAD5qjskwFDnJVn6LkHeYD9RfsbYq294bPPWNNab6aaOT0RlCHmXMVfS3yRsY9pTWsHuTmvlIg/aMvN/yy3WkkoOBobSX6ij8sta5qxkG97A5kyRa618kSGHvfR1N4WOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTaYhDQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTaYhDQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7942C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728897953;
	bh=kdgyqswkHls4blsSSou1ojKeNaVXcifpOlTfYg5hHjo=;
	h=To:Subject:From:Date:From;
	b=HTaYhDQv4H/PyKmijUjZEzwnDToXSmjzKZWBzIpMvwOWDAzWTD9VtuQZydGSJAQJL
	 xXXvCXkhkOBcRmPOu0Uw7ZRPaReCO/G+cLXyw8kmXw3ba6m5x7o+og51sudcSrJOSe
	 O4t9E0guadr09BCHHls8BVpA5fSIZZ5anyj6pwKunvUUmfF0HG3ofBk7wnkxFozS27
	 uCEbZeaodrprabY841COJKiUSVMC3SZATl94Yu0HQcDm7O4nTMcwSaah/CmocumZbO
	 y63YxP4p066KKfADez7yaB+Rdebk2hwum+U2c8MA1jRpMnQsxJWtzLYUFm1osDoA95
	 FKKzNeRWtI0dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7022CFC527
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172889795366.21995.12080934848373622184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1191659ac99c28c94dc7fd4442a846b5731cc50d7bcecbb7daa5dfd15e92be81
Date: Mon, 14 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728897953
