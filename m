Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94C79CF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751768394; cv=none; b=VkVWn2h+GNd6EOBZWKtgMeKJKrVLL2Q1UIZ4OH4gt61fcpokxJNrGbz1VG60KmwPeGQr5FtFJx+z58DeFRRipfCf0E8F43bSvKaNi9Zg0IeHSqyk6RWKgHcprI/OdNlLndlgNJklXj8Yrtcrv9cmvKow5t+rUU4hjnNd1lNcEfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751768394; c=relaxed/simple;
	bh=4zhRcNd95V+aNR1m3l4SfdCCthImBqMRroNWDk6iTaE=;
	h=To:Subject:From:Message-Id:Date; b=jVQUMbT8Z5xH1NBD9HwpJOPsqm3UOcJbggNkgaMtMIoxUaJ98BNvLqs/NnJSCblAyldtzGMiUu/09zF0vB2q2f6JEjynI6n95a8GTYKmGUhLrcIoDTN48gJfRhrOPsWSx1kcCbvStLFxxnxwfkLrcy/qw8VOlJduyQdIXGwJpSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gISurZ1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gISurZ1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A263CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751768393;
	bh=4zhRcNd95V+aNR1m3l4SfdCCthImBqMRroNWDk6iTaE=;
	h=To:Subject:From:Date:From;
	b=gISurZ1X95MPdoV0/cG0YoFSAxvpdT09v2jaxu0IPBGdNYZP9m6jZUlxLA6Q5JU3c
	 V0w3tABKeJNSBuyrlxGT1m+rvRae7TiBm0T8C9R6KDQnawW+w6KM+IC3UBEijLSXCm
	 wg8Nwtf6oKl4x008hg+H+7tGg5JvtH2IuwzneRGgEKvEIKEFazib+TnSIEu3HWZQs+
	 emDrxjU5PPWqn1+ElOTYQsh6geUTPegojjUAxJf9rSZGVnfSEjt/yCAICE0eUZRMc+
	 o77d5OsHiV2i0SzzMq9DsmiVAJx/xT5TnjeKz91BdSdgakMJVWWmcHhh/iZqwD9Pz4
	 hHc2OM6q5h0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A7FC83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176839357.12045.12154667003797262010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc4ca99a5fc6139b7b0fda18b3512a6f2b8130a58725dcc87c3b035ee709c3b
Date: Sun, 06 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751768393
