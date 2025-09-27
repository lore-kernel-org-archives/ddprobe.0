Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2988F54
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758941994; cv=none; b=JEEr7NBIY2WpSnkhRiel6/MRKTFatk7CvtEn85aqi93BeOdbnDVAQ3i4Uw27b9R1Aor/DCf1tAixM5UGVUswECIYNdEn90UXPjnUl+4D53IzgBgn03BNcn194F+FOD5WI5EF3Emj4cX+nZAadUxFeuapP+VEzoHCyuO7hy83vOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758941994; c=relaxed/simple;
	bh=j9r23eaOPdHz7P9h2zQk4opnJzrW6TpLePDV0/7UkPs=;
	h=To:Subject:From:Message-Id:Date; b=fFkieq4VrkGJbYhFa4pslr3IjZ0KKLSw8Mdu/uEpXcS6kTK7MzqFFYZO+bRftJXxV2q+AOl9C0iXqCXRMx8ae33R7MbGOB3XRYu2Qgw4oo7Mh9z1DEEhfZ9piM4EgVK0IXK36rUfwLm8UhIY17dHD6zuk0T+5ZqqTr3MqEhuJtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZNgPhQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZNgPhQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D49C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758941993;
	bh=j9r23eaOPdHz7P9h2zQk4opnJzrW6TpLePDV0/7UkPs=;
	h=To:Subject:From:Date:From;
	b=cZNgPhQYf0BBcUu63/xnPqAaLMIDE8u6pI0zImwUmLCXoDOfvHvrCmZHQNucpeAgD
	 oWenKKA5nKRNCet0l4mOpGjc28ZVGS+MlTPnpPbMsJSgvh8lxhvDYGa0dH3pQHuxmD
	 CiOt8JRmy/CEVlJsQU6lGrjQKr6tbOUpeUVDzkK6aIEmTg5R94nUuv3b1lEZRh1fz0
	 ECvDpcwpBrRLeQatT920ArBzgK04VAN4EK0cYxEJMWQEfMviU7uydRcIydwHF8+xBD
	 EWPaPFatExULdzHq31Z6JJgWtlOQaj2YcUh5AfMJ7OgZEFpDptnrnbOnOr7RJeGkHy
	 0OBTgQSCiJ7Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FBCAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894199358.12417.3732504762111637521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817f3d6c5d413856ec9178a4b1a399f2f14f60febdac3c9792377df8138fd1af
Date: Sat, 27 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758941993
