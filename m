Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C441643B
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778944834; cv=none; b=DNIBH6/svGNhfZpSW+kKZ4wOi5D8FE/GeuBqSh+Wyq97VZOc6zZKZvecsEknjI9OBo6lnPLVV7Dcgbtd48btFd8XaAX5jjkjTjrBC9p1EsTZVgWQCDEzQJeWBvKJsW1OYdVmHdgBVsQVD21rgj7LSww9jQ5M7SHLKtAMq9W2Wsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778944834; c=relaxed/simple;
	bh=2ygmaSq4e4N26U0i4uoOhLI/gNTf92D9vwf9fH1Cmu4=;
	h=To:Subject:From:Message-Id:Date; b=nww+TEZ/tUSCXTVBd48V2SprHxxCUCJFMQsojOyhCf5K98wBjq4FldBkpaSSJYMt+lUKk7sVq1DES7OX4wHT1Vj0tn3EO9XkcXlxXTznj/o/HzbHPuscgjjjYnsFTCDehg8o82j3HgyLgX05tONyx8kq3+4/2UrJ2tBFzGSZqZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ka9zMLgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ka9zMLgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0217C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778944833;
	bh=2ygmaSq4e4N26U0i4uoOhLI/gNTf92D9vwf9fH1Cmu4=;
	h=To:Subject:From:Date:From;
	b=ka9zMLgp2+0I1KDB1HXu5BJie8u8USFF7lTpi0iNRnpsLJdRDxfREAlQNBtP+bWfO
	 tcCvtYhfExQA9EqBn/T/QbXcYuPQRTIz4zGZOKZuGH55Xb+rEkXoa7KapLNPveDQPM
	 z+mBrMGrNOg9B18lekjT3NDGuQ7zRohfkUBawJZmQOBHIecjI4nvZZWML4h/hRz88Q
	 /5qtaGaOEWJVx1uXWDT5NiHXhsfXAlkUbCiYN60by1nDfnA14LlXI4baDn5YE14oqs
	 30B6WGpE+AEWqHxaTd62GzdGPs52fP7FAUDNaK8HST/mHe3IPyP5qO7Z6d/XKPbDTc
	 BDWsyk8QkT5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC99CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894483369.30739.5423870288660397083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6863a6a76c33ceed32accaf39d837a500e3aebbf841ff566c7fa32a963ca89ad
Date: Sat, 16 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778944833
