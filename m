Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648C67E1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741493934; cv=none; b=IYAvIELHUAswEUGbosnXpn9Wa5AoKUX0UN5upgw9E2W+AE37YrHtCxhPmns6eVRUza0pOfnqVyD5c3mtzaYsc9MnEx8lrFcqUUOpWanzKAUUz4Y/XLo8I0azEMhEwDXyFBLF6BTNs+cA119lstLRkdTDfsE8/NSxo60zcEqkMTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741493934; c=relaxed/simple;
	bh=XZpFk/S2euToQWQRWGXycyIalXeX5gRqDnSj1M+HTdI=;
	h=To:Subject:From:Message-Id:Date; b=VMQsUcI71QTef0uS/SfHjCXA9W4I9j+nWipRLnq3xykquKqYIm5+vgUTDMARFozwtUqCRLmOviYS6wfBjGu7BesG49ieuTOswX/g+xM6iL0gFhld6TwgTFzUa0gxStArWPshOtPtBDBjBMXYfEOs/5d8ohnHO0oUBX8TrC49cgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc8NygIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc8NygIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27E7C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741493933;
	bh=XZpFk/S2euToQWQRWGXycyIalXeX5gRqDnSj1M+HTdI=;
	h=To:Subject:From:Date:From;
	b=kc8NygIUQcA3lIBoOVNkYYFKpiRH1PSokMzDE/Dpo0Q/dyh/FmBtlOlZcWuE7+d/u
	 antQMRi+vXDevK6HE+9X0EQhEzuZqIKsjRYjrA5URVYpy9XSXRJfHNBmVISz8velMi
	 MN5+QFgKL5z6cF9DD9olR+mSmuJvVyJx5URBm42BBG1tBB6EE326XnmuUm/JHsMbRn
	 tOco8A+XqMQBqrrItCC0uKIzgTUDJEl1pHwVyq8SKgEo2r4JAkwJc5oq5XBUKllRJR
	 zKEMC1IY2daaZveJ/rQyQStdpVcayWn1l3F/5jDaJYgkyM5Grpm5z6OFzGDM1S0v7Y
	 6X1b3vk+BHOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE674C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 04:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174149393371.13486.8879486320997094134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ecb99e57e0730efae78cd626c4b7d847a623507f9734a2fcc372bc8a0c8a19c
Date: Sun, 09 Mar 2025 04:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741493933
