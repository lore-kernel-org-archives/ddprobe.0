Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521B88F6B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737341754; cv=none; b=uOZ9NGHw/FPJ2UIhGcSZEcuM1oUAAW7GsmCsnOPlHSIH81TLZJjhN1XLIxpw57VwdlFMsCZWJ6Yf7VtrWzO4hGW8iMyGPndNJJOrgQrBnSiADfoKDuFJ7TgNRqcQTDHpRkM6rS4lysebNg4zafi39mRV86PDUtefxaA+fkPrupE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737341754; c=relaxed/simple;
	bh=rcx5nnrqHTdDf0DWY1HgXYxd78VJ+OeeuzNtamIYgR8=;
	h=To:Subject:From:Message-Id:Date; b=PFH93quFjeY5Kx2UkBjO4ExTFS9Ap7iiBlQlUzTK65kh7fTtC63EYW2ZsmuiqmtOYAXzHNTHCVDm2IShTqBjFY1tHhuLO4OW11Wigu4ma+fLBIzYM9KEfJhTpAdhs4mmPIM8QtkI6hHH+g9eKbsTFyh9APCj4Z9zgaiLtlcIBQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6V4zfhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6V4zfhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC11EC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737341753;
	bh=rcx5nnrqHTdDf0DWY1HgXYxd78VJ+OeeuzNtamIYgR8=;
	h=To:Subject:From:Date:From;
	b=l6V4zfhP6JspmoY30DFkBDnKQ4Pe/09q5UL9EuejvAvQcZTux2N3xG3HzGOiM6BNG
	 E/sT0LCA4KY0rULVuh9CxL1K0jTxdHAoExstWwxYjgmg7B5k42bqt+ObfiL2bV6IQd
	 q1ubWwc2g2Ja6mfL43Vjh0ihdH9sw7iPNW8LJH9QAMnIzs9cLoCHRZcGoycie76mAd
	 HDLhZTjMcOsQ3SihOlkjFlyexQ3TWH9r+HU1HkUmYzDFd21LV+USo7oVVZTa5iB+tY
	 ViukYruD1LicLO+eR0chSYRYlVIn59Mjsbp40MmD9ohkZJronHW9XZ4xWDF83nZxln
	 HMkA5uZdS//mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8E7C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173734175357.22291.1053132169657225744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a234fc4f60da5c3758e0c322282076534106dc5681814e8706490376a68a31a3
Date: Mon, 20 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737341753
