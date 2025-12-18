Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF3F21C17D
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766089434; cv=none; b=rb7qHf5nU/yaAHVu3Dm0HpIlKGpDD4SX1ztd5nYX0exoe1GJ16Zvx5wfG17cqhmKhKaK+DuXA0M6TCYja6kg5RkPQZTNwe/Hm/D2WBUnR1BGqDzIYOPpc8uFK2JsoVKhXIzmmy4RBWNMpvEDNWLxpgxCdNS6KmewI7XlgON+bVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766089434; c=relaxed/simple;
	bh=eTBk6DYN6j8a31NPcmsW7sYE+jI/PFGlrx6w8/Hq/sQ=;
	h=To:Subject:From:Message-Id:Date; b=W8NXiHJf9SyfzN4IvI8qQEdEccqyqkJ6/sb339yTzoJVmCORqEJR9BYTXD59TLDFjhm7h6rUZCXbUZARzOMkHRrsd85N/OxVAKl/B8QDR3kWF6u7Vgzf4r4Ql4bfbt/BqtKckJvpMP2fzECP6+xaKUaotqW6GUCCLoG+j0FmboE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX5Wd7Hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX5Wd7Hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5652C116D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766089433;
	bh=eTBk6DYN6j8a31NPcmsW7sYE+jI/PFGlrx6w8/Hq/sQ=;
	h=To:Subject:From:Date:From;
	b=bX5Wd7HwCLTq22ls3gaD6p1B4TlCWLYj80FbXcT8sRQfnL3cWa+fGcIW5Rhc4Pyg5
	 hNthWZwv8k289Rd1/qo+JPMYlFDdP4r8oMmglXch6AJHqgPnLpN/NBSFjRQoNWC0ce
	 8aYsx71yh5Miuddbj2/8l+H93ZwPP0qJyQ6diVt1iEpCKObdQkx4kAe/cBpW+jaeKZ
	 /11LSSXXj5PDqih3GMi/1nvQYPwu41RJC92w573UBBUSqIraIwVvBwyEoqQB6bMGki
	 K/LUNbOUsbyxTLZZ7mh8dRljvH6Mgxhk+kUZ8WFHLSpTT7GhvDnCUC+LxTxcAGOenV
	 oOJKTq+ylFQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921FDD711BA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608943358.19543.13240306969930205917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64cfea84d7bf7468dc233564306130799dee72bb66f420399209607ea8351c91
Date: Thu, 18 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766089433
