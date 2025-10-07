Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191101E521B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759862994; cv=none; b=eX/ImMxf5H7mS0ifnQioboh3UCQYYuK9AUlW5OgracK9eIBM43TJypu5sd45EChpty/PXnJx6TAtZA5sTEARLLaJFL4sa5CXzJCtdW+BMCG6IPNXqCkfrl8CQP1E5GJyp8ymZV5E6EQjJ0+FD4ggNkzmssuY21d4GqEdAqlJ80g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759862994; c=relaxed/simple;
	bh=3C5sGrhP67eVRfMiltreCQafCebdVpFySVJpDTYsW84=;
	h=To:Subject:From:Message-Id:Date; b=ez1AogkLzopBh6juTUM3rfnLBch0VmaKJ66xC6OIrZZo9wG6WUyEzj2d0G0nMU4drB1HfIpPmTjuvBeQH5kzFU5HQRWiQeCORdTAoDeC5mWsyrdbdMKAO+t8YB23UzDZfuMHDJVFqmTlUm/efjDT8CSC1IwdnQWe/YqmbuXwsTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJTDnub4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJTDnub4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759862993;
	bh=3C5sGrhP67eVRfMiltreCQafCebdVpFySVJpDTYsW84=;
	h=To:Subject:From:Date:From;
	b=ZJTDnub4S8OWZSbFGCgEuteR/UEH0nHjodrFvza9DT8W5G7fxU30YkXO9bvlA664+
	 z5GFzDFNm2AS2+AZtvcWiyUIb5H6J50m1ohLWv6S/v/Rqqw5LdiEu8QJnn5GKdIwtM
	 MGpqLTnhCx+P0KCTZhGoyS9CKWF9/sDAsezMR4MUkMt8VGHbBI9ZepKg7mLARov4JJ
	 2RS2xg+1krX6xXKhyN4nqVbT+efwfgCEEo9sWVcFwj0fb9TxzVvVmvgwQ3KuS9hLvu
	 DVz+MtpK17ApLaLdpQy5YJACRExuNxAWAHqIyf1ZK9OEiqT4sYSMuC+TL5R5syCl5O
	 5VfxlXQg52DLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D9CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986299358.31502.323732905145092116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75da1708e31bb2434433bbb6bc66109485dd14e153f841b9893655f1c66c311b
Date: Tue, 07 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759862993
