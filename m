Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2319727EFFF
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757939394; cv=none; b=a6CaZo3howeJtyQgiNfej6rrcsv0rN07AkPtxUwSJg4NI3taxeATipxIBiMHNch562gS5T5WY4EC/S0vpDVQpmSO+TOR/lwm0eNLHMpu0tne4eewcz0Xpf4dR1doNzpbl8QeB4gXUIyCD6i0WQXjjx1F6jflIqWydnFcfc/EqJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757939394; c=relaxed/simple;
	bh=JQ542Lkoo2w3UvXjh9NZm2kljbkCsg09/nl2ePBHetA=;
	h=To:Subject:From:Message-Id:Date; b=prkQdRH29oKPNrwLADO0IJVyY74n3k8Qs8cQDcGMhH1kngNvE77e5K5CcY2afTDZwEbmJNdWX1MCZDFxH78mlMPRZ4oIwsHLy3jXnpv/V7xOxr/rM4FSo01ftYDgzpEHRiDY32SD9hVE5wDnThrGwYFoE8GuWtFWtQMVHmI2+xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBolRQKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBolRQKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A198CC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757939393;
	bh=JQ542Lkoo2w3UvXjh9NZm2kljbkCsg09/nl2ePBHetA=;
	h=To:Subject:From:Date:From;
	b=QBolRQKFjNnjAkSQXz8amCblS3/6ORCKhw7ExzgVbfk8Pug9Qn2Wi3or2vSHmIpiT
	 gyK0YNHiG7NE98K60aBJRy7430FopuX0CwtA2plrj/g6bTUz30dRQVn7gouSEHSMgS
	 uyZWX73LwQH6dIm16GNlPMKVvUGdTEyUt7YriClyPwl/BqUi+iPO7lm/lkoNmLQ/Xb
	 Y5DcgTxvntxg+vSo38KliNWP5gIpFf5w4dHP9VJGFqX5S0dO7gzJNUYr+a954w9LuV
	 1doMI5kzd0FVT5Ze1Efhjvk6ZHBDWiUHT/BAssMDHkzUHYu4mNZL+tInEjYPSpaTsj
	 l1P4zh37Fhkzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B7CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793939357.18177.14246840614302166880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a66aa84da8c0e27ee300aa720ccf1c8b59f0defad5da38e955da84b93710a8
Date: Mon, 15 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757939393
