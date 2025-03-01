Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318FB156C62
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 06:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740812335; cv=none; b=UpDXEd0McL9CIMfNCnNP6OBDIKRf4+Dy2t/7dldCRjE2WIA9kP0lm3KSLZAtAiM3wosYJPRyKZ67QFeXwGk2LAa+3eODWgRWY76nJy1BkCfiPa0NzJgDKQ74ZJw20/12CQD7mWIX0shw1vTlZfQuYAONUzb4E1qtXmkjFdNSUZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740812335; c=relaxed/simple;
	bh=VIC5l7v9r8ZwKfXothPOztg+zxVC1A7JjE6c+UaeQoA=;
	h=To:Subject:From:Message-Id:Date; b=t2Pwsf7pzkFzrdUa5eS7ZQq+HsUW3u+Qu77D7mFXhKKUn3Om0eQSE0i57Zot122oHY0ZXyOnMQArspflg8zHfOeCnxqAvGCSUtMB347XXOHagBAh7Jj74f8BSSFPsJ1d0592mzy+PCAuyNeDPpcqLF5KAZxR6kBQ4DO2DXvA4gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufdFTzmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufdFTzmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CB7C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740812333;
	bh=VIC5l7v9r8ZwKfXothPOztg+zxVC1A7JjE6c+UaeQoA=;
	h=To:Subject:From:Date:From;
	b=ufdFTzmMBQBaWMTSnSaTR/tNL0yHcXDk6TYxgKewUyZ1uPOLHmwW8/pkcgq3BFMvz
	 2UkvUuOSFnwMIvPaWCOKlj9QPFDOT2CE8oZrC+W+MUDPrJKzd6g5oD5n4yBU7TP3aa
	 YH73yJAnUKbQf76/lf4CX4vI3pAvwgWR1mva7fJAkee6ZJFRVnlwtDTVyQIqLX5Veg
	 aDP7qd0rBUoRWPyoNKJvVXd8yRql86+AgV/eJxhz2CEb77bBOKvwqNTIHntyW5Pom1
	 d0InFkWeoLQdWbU8Y7O+0/tUHNwxe5l/l2wHuj24/eb1PtNIEGB7e/cM1fD66vXwBL
	 QlStL2Wz2tobg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C36C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 06:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081233359.31484.9328396373241947940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0dd57a302b3b374405b653709b5f582e20aed8e636eb16f34a01656170e1737
Date: Sat, 01 Mar 2025 06:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740812333
