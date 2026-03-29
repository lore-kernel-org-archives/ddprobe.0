Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86A249EB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774828494; cv=none; b=kwCXCnRHkC1TXtFwtRHGWsAkJCIqaI/+V0zn3oEE2+iw/j6AhWqlwL45RMzFfxPYbXc5fpUvNSpjE2QmBa0kFukqhkyx2eclsp2XoFcp1GxKoV7uKK2nj0WgpSvgL+x4Bn7aAxTLq25K7LQI8eQ6oknAMCaGShT/eKYpB4lSGfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774828494; c=relaxed/simple;
	bh=1N+qjrY5Up1/wvXumaApR96j+UT5v2ZqL/ikywgcsWQ=;
	h=To:Subject:From:Message-Id:Date; b=GsqR5g/Due9dyvpEjMSoCy8MOC7JVcN6rOvHy76zHcpl0UnlAZ9R996ny26OSnyPUcQlfwAsTG6dES5WyTiUWthHxfFPo1RCUwUa2xA2qg6KngM+bxMnH3XGyQV6EDuLdCCmZBImJv5Mn5UOkmal+/kFP7Mwe7k5BMgwUcHsSNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bv334R+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bv334R+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F36C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774828493;
	bh=1N+qjrY5Up1/wvXumaApR96j+UT5v2ZqL/ikywgcsWQ=;
	h=To:Subject:From:Date:From;
	b=Bv334R+P0kKD6ul+vBE8GsauNs1MOTL1TwQnZYT573D7kR2oglGGbj4ahPklI/WdK
	 60fGSqZL9Bme5/0LZUzfkRiI60+8yVK08J1pXQ6cBqnzAG7wqJizuBT1BuJ4kuRTgA
	 yy+sykgsa8bS9Sk/K3YfFFMWZuUsETEDgY4nIffjGUE7PdJEGbCDz/ehO2DZEWgshR
	 fOnqocRPP/d4kRC4pwO/xCvUfIu28F8AjT+g1bVhoCw04o3VSs5ekakgoB8BuaCD0h
	 T7TlfPFoQVEKjQeKtdnFU4HsI0MYK/SEL/zhbRWglLCX8+RF8kNsNHmXF52HTbPgEj
	 ZdhGH/geE4e2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94947FF4927
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482849358.21097.13667307631644287990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5397cdd9875223dc1b981e7a48a1cbb85ad489ee1b797faeb7fa4d08de9a0a
Date: Sun, 29 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774828493
