Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5789019A288
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742237394; cv=none; b=elRUhNedvA84X7FQ7AULLaO1TCPe3YzncRI6/Q8anzd1aiZP3fs9eawLfKPHsWJ4XdO2Uv9qMwYn9iN9sY/+iTP7gQ8H4zZfiXTvK5L4mMU/bHVuVnolvHccDg0o3uuslFJeKUnaPBa0WPX1rSqw4HKJxnWx2FxmfqJZ3YIKz2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742237394; c=relaxed/simple;
	bh=lKT37QlUa7mUslJaOCHWaloMSXLTc4CVwmSfBeSYJzo=;
	h=To:Subject:From:Message-Id:Date; b=Q9z43aBWVpfMj4erkCzaas9VvRsSzWsDrN3KcI0gZ7or733EySrqYDZRSGMy+3ZN8Q9ldTuRoEwsv8e4O463Ig9CjfAmcU90pSyW4mYWccWVHuj7h++vF9Avg1q6OGDCORNPF/jn/toB5US93JydmpIRpKtkkdqqEuI+BaWlBu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFfUGy1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFfUGy1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5739C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742237393;
	bh=lKT37QlUa7mUslJaOCHWaloMSXLTc4CVwmSfBeSYJzo=;
	h=To:Subject:From:Date:From;
	b=UFfUGy1+OaY99pNFAktP6/1iXDdeq4lGLkN0zhbZCgbknnZKGeWlUw14cE6TvNgCT
	 vbeYbWC1DwemWDurVclm07DsgrVmX0xmeP+gexsVURqfkK4q3LMQc6KivOpXVBB5XV
	 wCivDGTJwRSq93BuPRJK3vpTejjGjX+C/UiFwBHttQIbEpTBvZ4Fj7Mc3Av0UZkGDs
	 l4AMPAA/4sUEOI2zNjtcbRj3FTrq1xVaNivmb0jPleC16qZUsv0eOADAZns9qnU0+4
	 gQVfzMHNn04PsYCNEk42VG0T4OY03kLlF2DkqX7BGBZbPIozF1PBmoN4iabObMr4wY
	 5gyWXM5hY6c7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5312C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174223739366.22005.15442491915329643657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57164d4f248284586fe13d6ccc9ce5f5168fe4ae2b75db8cd753ca30ee92743a
Date: Mon, 17 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742237393
