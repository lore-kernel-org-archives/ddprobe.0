Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4007525A628
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737858954; cv=none; b=iAaYU8ZzzMCuC53fl+uyo0iCzjXcdJW1u08rLPn0BhG5OMC6AxsVCH0+b43nUHi4vTwPpLtwpqNYnXaGq0nlJksSmDoPWL3yYhv74rRZcVFsicXV8OEDD/2Vjel6cHgIwael4Wwv5rTCjLaiL38RfMRFF5L+g+IZ//HPQTcTU1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737858954; c=relaxed/simple;
	bh=IoftkSzbSM2dSjmT+E77bAbflptg+3oegyE3h+SJY9A=;
	h=To:Subject:From:Message-Id:Date; b=rNipPrWrXUqgPN0QGuOZjF1asJsa0K6iJeb+ENy66ciDZED3PkBUuxDGj9gd2HUjMqu6zshaHKkjhpQm6CcI2e+qHJZuvFkLBN+Rvx2ldWRTbbGYW+txurMGVFjOSU/vJcQ6g7r7BSpg7MP0VjsNXeLPw2TgJKzkV1oNqaj64jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMpqUP+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMpqUP+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FA2C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737858953;
	bh=IoftkSzbSM2dSjmT+E77bAbflptg+3oegyE3h+SJY9A=;
	h=To:Subject:From:Date:From;
	b=kMpqUP+huBxPSe7SLYZAc7EYHJuWkRNhVi0Ed5m9G6+pbVFE9LOOUu3mgiGpyXiQq
	 pJhNulTTYmqeYYOpPuD4f6WNviqM8Hw2li+bAeFUgO72CQ3s6MLNSKm3WAmDk3yXxO
	 2PRC0/hC/ybG2CD2hYXM8m9xh9upi8YvlNwKXAJscccE/eazRLHmyyCTFclbR/UlMZ
	 ZObDH0Jd03Ys8oL4ZVUjJTI2sehZsmmttym+T3laZxy/xpu1OeDmv8Lao2aVZQJA4H
	 PMO+NAORfJhPGdf9/SiBxQWYoeOWQECpeY9/Odg0eYyhnm4ETCoqrmsoNwh054RQy5
	 QQ2mKKJ7f5zWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93926C0218C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173785895358.8503.3305028461714768326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175b90a860aacf61a5fc472bad9818d0acf8c064150f78e352dda5f1407f8cdd
Date: Sun, 26 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737858953
