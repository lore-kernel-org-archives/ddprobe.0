Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21231CA9F
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719462803; cv=none; b=fXlpA5JY8nPyh6o8b69h0Iyeak8fk4TpoqCBirrnP0wO0iNNmHaJA2+nawLigwOpetjyxFsMoRbV3hfi0rTn1infrgM8YXgscUXVihmoj/Nw18rQsNoxx4C45z9XwxhmBjkqbqmYWM+C9ZYud310EJRAqq572yW16Van/nDofNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719462803; c=relaxed/simple;
	bh=HEfoDab7++K6WgTL2wiY/Rh44r8Mqi8PZ9I9ZYUxp/g=;
	h=To:Subject:From:Message-Id:Date; b=bpJ6mGVFl05wzXJBNff5d/xpduoH+J8LQu2mPD5ybUGFNayMEpNMA/k/fQ+sO+4EChQel4x36EyJpXevsd904+pn0KwPAmagGP/LVrkN+TcaymqJlO+3TvEYAkcMA1x8tYSWGBR9UaRPDRAmjs87DNe9QwlV1yMp4lFsd3bM3vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7vLlqWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7vLlqWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3BF15C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719462803;
	bh=HEfoDab7++K6WgTL2wiY/Rh44r8Mqi8PZ9I9ZYUxp/g=;
	h=To:Subject:From:Date:From;
	b=i7vLlqWXDjV3A7NhU23a5m0lVZgfiaRtHhfxb3pdArICPOHoZ/7Z0R84zcpji+ulb
	 p7sPpiHW9LrZTUbTrddIOwUxcnlTdOEHBctD+Q3lpbZRlQ5Q2xyxDw7HwqDoNzYSNz
	 ij8o4w0NNRn8gGbx2wETnUKBV2592+wy204Q6807mndKDDCIdcfjN297Zu2d7lsJH6
	 YA9hR8Xse90dSwvwwM/OsMk5E9cLEf0cPE1bRyOjBdtAyk8oUK2+Zvrs46MYGLzROk
	 JdWIwhlm6YyFeG7tfTU/AUamKlB5RmtO8hP3cGVjirWWDQmtxgJCbVpKrqg5OtODi2
	 sL2YE5UlJ/30w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16274C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 04:33:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946280301.7075.9306780877560252091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdea91a5f40ab095fed39fd963dc792613326c06ad99bea7e420ef72b5d35516
Date: Thu, 27 Jun 2024 04:33:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719462803
