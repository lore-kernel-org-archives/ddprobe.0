Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4F71925BC
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766280834; cv=none; b=SjyRYWDdSxjuvrBZvWreDhHXU/Tu590aT7hQwieFED2ptNlL8f3z2ZmstXoYcS+dQijOSqqmVCUgXxzXvS1hq2TJr+3y/B79pk206RjcruTTSjyqvd+sguSrYTOugcE6yH3TWpXOqm6QdTwkeY06WN/aneoa1fl0ke7ZXY9tek4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766280834; c=relaxed/simple;
	bh=F1EEQnAwPbDLabL4oUjfntwoRdd3QLs//zaWNn62Rg0=;
	h=To:Subject:From:Message-Id:Date; b=G+WDAze9ryY0QPjoZcNvq5dllNqcOtYkjnSawmdtymp+mWXdJJF6L938ByRYMMsNfC776YAcd+C3fVlKOfYXFlZursbUpS6zCcQXuhFMBD8DFK8f4hJd1piQYuMO7cPi0ibbV8AQ4P8mKRLAMqlfte37lCJ9nKVop75UyAuYZSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ47I+OO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ47I+OO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36C0C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766280833;
	bh=F1EEQnAwPbDLabL4oUjfntwoRdd3QLs//zaWNn62Rg0=;
	h=To:Subject:From:Date:From;
	b=IQ47I+OOP+l8/bNJyZDJAoZaGxHhp2seY02S41NJyMm5i3BF8tP+EF++COHWIjROg
	 HfBEWF2wlp/8ILLoSVoIKOpUbd2/hwP82bzP3M6izZKT5nvIshI5FzqZW+KpcefUi6
	 o2+WVYDsHZKzB0BtWtZc9YN59PMKeKZcfRNI6htBM56YAC0qtWtfU1dIWbhIMRC96N
	 /MyrE4M5jtX25VXvOCiLSHVARHyaEha00rihPk0BXk6+DUrRb8I+gkFU0w8Os7FC0Y
	 YuBH4gR0yb93/mgnKWDSfHNnUg0inr/WTEGpdHYQEvKE1G944eOG45v6LJvPebsXPP
	 26mXP6PvgdchQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959DCE67495
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628083359.29349.2665469083337815096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb3753c374a688fafba0ae6ecb24b1710db1f5d9622d78a8f515f7c5a833404
Date: Sun, 21 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766280833
