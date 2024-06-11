Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640D782490
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718135903; cv=none; b=S/OVhydaidPjHf/H99SZ/OGpd3PAboWFN/PChHe7QXnwWxtQ6h/1g0EHgbJS4bHm8pRDpb0SLGFoOt4dWGgrVoxqeQvzUAhwWv8y0hz5RFVlcvoC/nctwqFLbytDJqaTHhA5rbLYa1QU167XUyE9T/sI0s5bRDL90noErmt2sQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718135903; c=relaxed/simple;
	bh=zcTLLhvj7BqsvUaWuQonsXldAuzc67gAIqDNWbCqiXM=;
	h=To:Subject:From:Message-Id:Date; b=bZHO4o88H+3HTukCe1k47603QGADVJUJzyt208QTCIC+O4/8y2tt9L3/irehIorYWVz1NNvRjL673jjMXnWJJCsuToc8k+XiNfGwCv7WP60ogLVS2+BPycqYrXxvY4N65OwkB+SNYjinEe1t9Jy0ny4FbfgWAzJY0bcH4tXfblo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgzF8Lpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgzF8Lpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4B4C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718135902;
	bh=zcTLLhvj7BqsvUaWuQonsXldAuzc67gAIqDNWbCqiXM=;
	h=To:Subject:From:Date:From;
	b=fgzF8LpgilD+uF30R3Vt4ee4YnvEMggQnVP6gloHzN0+zBWvxeKJnRK26uoPdNvye
	 IQ7jxIrJSajoXMFdXYtOFRvVNDiXv68aM1mAnoeDYz6OOcF3nDYuQ/3j4086dw3l1t
	 MM58KZXLW+GU4eIUM9ghqvqkofduNXA3ZAskfQyYsFQiESw9XE/ab4Or/Pe3hLqq05
	 E3AtONzz1mRQteCDXp7vxzamz0grJ/Di20qnxMfKUUJhEZZh0wHnxXXA1iuJnbNO14
	 9eHRTLHjMgWPwmIitljwc9kwTbY0GGxzWAX3UiAjIf8Lr0wkb8bj9wsJLymufKDpPt
	 IL7H3Bf/0iEWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1A8C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 19:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813590281.15353.13345559976637801957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d179b3633524305b5e9267ac00342e43b3ff4aee30e679003739e855bded83af
Date: Tue, 11 Jun 2024 19:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718135902
