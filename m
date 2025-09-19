Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A40E21FF28
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758254994; cv=none; b=bmMnQDGgt3VtgMkw8zd54UtkxIYTwd7HrWZ5ySY1zAq/FdtgLqHJRvIUxb0w/3hym+x0pJhilEEhY9mx6xuFDrleBVCAKHew8iCSUUJ5WH5BouvBKC8D40Gwwhd6JeOkatiLCvhy8Ot9i3Fs27HgqgkzwbYTS85PSdXDtEaRMd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758254994; c=relaxed/simple;
	bh=WYceBPjAnmxzkINhFviIutiKd4YBM0aMX7pLpBKEIkc=;
	h=To:Subject:From:Message-Id:Date; b=qi3BEmPW45X+f/G6TDp/v6+v4gBdQ5EbK/Xdbk9/xHjEGPphw/AwkSrMt6uFlHEgjBmobSkCGai5BklHE5tFemOY1CYIvcsc49PUkkrfq+1PvtAvztyX9k+IHkh9qDeMGmoAzRGeZkJpE8N4ARxaeJMP+vgGIvu4mC0fXbdlClQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiuY3EqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiuY3EqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758254993;
	bh=WYceBPjAnmxzkINhFviIutiKd4YBM0aMX7pLpBKEIkc=;
	h=To:Subject:From:Date:From;
	b=ZiuY3EqBjG6oOzIIP4JHbx3cV+PaDgWRVWNleOSdUp6TcspWCGowIULKK9kX9VYGJ
	 wkuSeLgOl5liViUoZoxdtI8c9/mi/EsRn3eNn0k6RuUTQuZnjnGThl4eG9IS6qZEJA
	 Dbd0HEk/rUFy9Ro0FNg3sxCxEqvEzplvDaCUwPARzwyxU88kn2PIxSEO+R0x4d3VJc
	 /SGgiqRbsj2uxwqy5a7zjRcawVchcpIq1kw8vIvY/qjS7oKYaOHwtpS/GHwTxnY/bQ
	 Cn8mqIeGDBM0wEni9wwtLtzyUaI6K220zbzQBl5mAbHWpiX/VwBIn550Q5EwGPPMi3
	 /RgiIstTGmiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F4CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825499358.16381.3978394390422947467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d8972835b4fcf57382ffd4a0bea3bbe7515df33ede4f27b42249e356b5d7fbf
Date: Fri, 19 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758254993
