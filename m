Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C491B85E7
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727169354; cv=none; b=jcf3Mf3nEevwg4xDrYUWEAu0AOsVkmLZAhEh9LvBs/4YP3S6TtD90LydjO/xO3y+mZRuEg6COgTPzigslTv6txjQqQtY0r+WyLQdCbS2WjJNoR3hp4K6mFtPzu0ImDMU/T0DQReryPl/sMHTShALfyomFCH3w/66oO6xpZ8UUIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727169354; c=relaxed/simple;
	bh=yuWcbzy1ieyZ+MYqaT/I7r2VCze29O5ffb2fCGVgFVM=;
	h=To:Subject:From:Message-Id:Date; b=YUkiQOnfHY2bO5yOJJkEtVTMA9PHazhuEbPx3ppleGl+XYrAdM/P3SpM7tH6GOp/5FSeTkisqP6XPg7pLqfwXeSFcW7tgXLI8MphcadWdKq62Tv/DH4jb59x1qIJ/RKTIgyIgxLNrqM0Wms52kVkuLK0Iioq0o5S9TojBmpTsDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lb3cbu7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lb3cbu7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E2C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727169353;
	bh=yuWcbzy1ieyZ+MYqaT/I7r2VCze29O5ffb2fCGVgFVM=;
	h=To:Subject:From:Date:From;
	b=lb3cbu7U+qwEElj1GIMSwBbNfZM8RQzeh2lpwtzmfVnzYajZI3FoDgH7j6RU1DO+a
	 rTvfr/+cukIr+YzHcfnwHU2nw7GcTPrcTnd+zUxEHduD2ShRm3zStS5rLdrW1GGacf
	 PRN4hGbwS9fMkZmbVXSW/kjPDN7ZqpCg4xgv8H1L+YoP1Km9yesVGUrLjNQFeVfbYk
	 jthgH+Ic2pv/PB2gtxPMYv1ZqSNkLeNPccjcOwjb46Yrm/P5LmKpoFr/AWcJDbyPfi
	 9kXT/B3nR8JcTWP7cR8sJECVKUy+VaqhoYj2OGRNKTtGOqG9WGYX1637M5tsPTA4o5
	 UXK3wvS3mfK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D47CF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172716935358.21124.16377163302565804442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e957f9142b65711d3c122f1eee7dcc28c808c4d69d72442f740386c72237b4a6
Date: Tue, 24 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727169353
