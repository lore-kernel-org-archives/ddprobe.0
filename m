Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF22324B32
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786041034; cv=none; b=UrpjlEpU565U4L5XaD6D8qr1U+431bFAzWi9xx71DudEckMlFwbKgiaVa8Mp3/TuP7u2sj1fhBdWxsrEAnN737ujkchmfN4b7U5gnvE1npbCQ1entoJO6pDBeBiqH+YSIpJJoMWh6en35wEftQ9UdtxhXngT6YdyyaA8Fub+vnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786041034; c=relaxed/simple;
	bh=wMcB7QGHt6RPoroGcaSgdusr7XHxQog/avkRoe1Kuv0=;
	h=To:Subject:From:Message-Id:Date; b=K5NboW1HvBg112bwdPBp4tmJhCXPMme0ov+cshxV00ksOyCaNwq1mXnjpogf3K16HQJyJAc8Xd/PBhjIR0LQsT4TOkH3J6LDI9oOnyaTzUroe4fLi7r2NscNXK9MUpV3unytL/Sg9rSGbGCejm2yRVqLAWZlvxkLgi1zpjPDdSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8obOPCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8obOPCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8692C2BCF6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786041033;
	bh=wMcB7QGHt6RPoroGcaSgdusr7XHxQog/avkRoe1Kuv0=;
	h=To:Subject:From:Date:From;
	b=r8obOPCv4u9jKdIC2Zo4CFsSDXiScjhwupAjOSDGwQB3Lhsr1UMWCJV0EGYx/mB4d
	 ymQOx91jS15fbde11wZh0Knwe7vhod52qycVQgTGZyOJ8kUnZb0lyAX+RyI3Z2sVi1
	 qfgVU0Gzg6sgwR6rgtslsYBGCr7tZkQe/gngonVISAqHDF/iDWhoaBVfUAACjeVdWO
	 xhHRcmAKV58TnlvXS79PmRkixSZwpVTjJPJW8flG1PcNucOJkyUDNCeBcqQ4fANEdB
	 ntbTTaz4mR1w1jUdpm/stT1z+b9DS3QsOYPC6PKQr50WZ/yGm2vcvVdtWWPE4PkUZN
	 Aj+sXxzHDc6VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5829C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604103373.27009.11067722853755260343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c51b4090f924760eca5dc6d577ebe636d46a2e76aec7fd4756e6119f4d65d3
Date: Thu, 06 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786041033
