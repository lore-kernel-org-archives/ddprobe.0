Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED013BAC8
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715311343; cv=none; b=SLfzBb67HKGbMW1sPOx57KUf3gzk21+nH01MbIqHJZ16OI1FBgs/CjvKODUt/f1e8DY4XzMB+VEWqzn2hPsTTfiURDLiYMPmyUnOkeHymp3PC8n9dtQOusE0w2JdRQ9iR+OI+8QaGmmcpRQkclMTlLeYJKdk67ocHt5ysHHVgc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715311343; c=relaxed/simple;
	bh=Te+CAkHlcO9LeVilY4rfi7AXkrktOgZeECGOtvRG0RY=;
	h=To:Subject:From:Message-Id:Date; b=OlFRiVGodrN8hy28QMEREL7vOCVEQIDiVcS+vW1YQDTC3oba8BDyHSBWOOfv4J8VIC6KX3buCXnKHqzEte2kn7TCuONXbR27789GvV6p7gwwnpIWesF6N4tQpmkVRMSv2WJZ8vMlUlGFyYdsh0LYdfi6baKd2ksp15ZkTwWfVWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjLnrFh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjLnrFh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB999C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715311342;
	bh=Te+CAkHlcO9LeVilY4rfi7AXkrktOgZeECGOtvRG0RY=;
	h=To:Subject:From:Date:From;
	b=RjLnrFh6BxAh1ZneryE8NzcAAf3MEkKn/iLlRPLxVyYe/4okxTlyVs6+FXxWvG/rT
	 UfFlGsLRLopTr49G6y9dpkV70L4EI5E85/Z5s6oujfcAK6/juTJFGRmhaeY8fauRS1
	 OX3oCfwaOVL1xUYlI4sYVpIzuGvRaXOFNoICl9YLMCqcYVa2TCJ7et+jCumMD65MLo
	 uxRR57KMFzAgPcZlyYIUfGQ3As6XT28NZ/5xdaTcqr91TXiLv7yaZpg6M6K+4ADJms
	 4naiY90Kiuk5OQC9As7Kx5qLxS/NLC5/hLH/LdXiupBd+qIbGufI0OBSx4sLjUjx87
	 saVSi3g+ACW6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5405C25B5F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531134276.32755.9661652128609191627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56849e23a97171cc35b4bc1bc517ebe3498f76d93e1ce95c0a0e4ea13df86fb4
Date: Fri, 10 May 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715311342
