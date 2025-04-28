Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F3211CAF
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745820594; cv=none; b=tbsTHl5VMY34z6K+55dVTju0UVaVppCZd3FOnCyM++XjD0ya1xEt0k9iKYMjcEK/8zmGY6WPBx4j6VapUahFDI6kMqGZY2gvcdh3Ok3Z0Xz+ofZUhSQW6SGiE08hVc6MTojgPJG4jpbU1DPgJ02expJe09AJg4uEs6S43QLQOZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745820594; c=relaxed/simple;
	bh=/Ps5q57DI91i0Zz7o6eFt7tnOKvk2dzndFTAVu8YGZc=;
	h=To:Subject:From:Message-Id:Date; b=fpuED3qbu1LixEoAwHaSb6ybJ9m7y1hT980+esPu/fW9W45+doWfMXQ9/R2LB/2yluqZ6DN69Laz54hNuor9XnBdVGeVhV0JdOb8jm6IkyE4VC8/RcRQG2X7/ri3EfsrOZbPgxwuSSaZxWfjQMphjql/7K8SlNiUzNXX5ml9CoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFv5VA6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFv5VA6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9380C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745820593;
	bh=/Ps5q57DI91i0Zz7o6eFt7tnOKvk2dzndFTAVu8YGZc=;
	h=To:Subject:From:Date:From;
	b=PFv5VA6GmAarye433y+a3aZlZuzsqjodkUV16oepynuWSlD2Kz8xfi4CGcuLmSwEq
	 jtb/LCb1KsTqGD+fP1a4KWXkbrZVN18YvxRNf7CucE+bMb9BJaWm5FlOSidFBl5rMm
	 7oH9mlQr7Ulm1JH4pqEY48SFE7s7OEgrJs9Xyq3RiHBSIo6qZC2EUYbeB2ed3jSQI3
	 BZhfEaPQMLOlmcenbtYyzrSpc9hZPJr0Rcp0q6Otp0ySmInU/qj+xgRN+9i3xbfb8i
	 /rfVCJWS1wYKZ8sHvLrrwdUczY+ikpbU/gPNPa/xsFX3XXNWKxrQjhWM4AbUHIP99O
	 sehTIIn+NSUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94863C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582059358.3175.7676673524832857863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af83aad4add2971c3e9b10cf1edac774e28a224ca412d6e3f7ff366234d2e45
Date: Mon, 28 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745820593
