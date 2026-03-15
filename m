Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7C20E334
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773546294; cv=none; b=AqxxRmaOlu4rXZkWKRzFYhjaN7Hum8FDDlCi1rp0Ot9AW6wp/bJJge/fEiij1YmzmpDMnuODDUj4aNd8rkgxt5u8bmIHpuosD5f7EtPxd6AY0o7xofUUCs/Sf2Sywi2e23JGbes3CZXpZXovQVnSubfYa9av1ddmqstW02t/oMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773546294; c=relaxed/simple;
	bh=wxsIuWaYJjiU+ESN0unWF095QPe+353SOZhOADumRmM=;
	h=To:Subject:From:Message-Id:Date; b=k5clgTErjmELn1vzFFWTMTCxqCTKDA4d4JiZJ3hjiO4gHYE+ti84ckxOsS8MJb5r+3iWVbhFhDH1+KqynSZ6TmwFzn89wEiW7iPfv+eVagZTMPcx4/akEyMWNBYSyh2Of+Iiuj4QKfJJeeQ6RHzYmmeq8w3MVzJeBjh/lMOvssU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esv5o0Di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esv5o0Di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C8FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773546293;
	bh=wxsIuWaYJjiU+ESN0unWF095QPe+353SOZhOADumRmM=;
	h=To:Subject:From:Date:From;
	b=esv5o0DiPfAYeZ0ULavV5WW6Nq3s7J/YiQliiNIi8RNe/flxp1vXnWD6Y7v2h9+bk
	 YozqIi16fmwJwXiemZO0iYPXOCAN8zPekz5L/sVHiPQcsxy0EKTUNFrzQeRDWll8QU
	 M8iGJdzoXp40rK4kdZ37vlBVYa9qnEWNmpl22rkfu2o84UKKnF9AlKsSfNx26QjVds
	 K82g2OmkC7yU/HZ6mO+c4Yphb4TDNBzkbzWXKNnRY7DfykW2JFIV3t+cI56YwGsbu+
	 gqyg00ReISjGqmOhKuEKuSvPlKDClz+aeHydBrdmf1hFa3Wyb0ugQcBPHc5miyP0fI
	 1GPr1vABEIvMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB9D58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177354629358.12794.6142362439203334095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c4a89d627741f57e7cc46572ba3b7bcabbb2ac411d5016b91fa9290220e1e9
Date: Sun, 15 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773546293
