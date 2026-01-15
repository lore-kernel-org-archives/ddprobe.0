Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182B0F9D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768440234; cv=none; b=WRvEpdfPM5Spk3lco07c4ceYCS7sTwIOr9f8WVrigYyKMkQoESeYYqQiPxlKIhM/oQweMK1vskqEgfYjc8capEbcTCKz102LF/nFLQsMfQwAC0puV0gg4ZPbjvEofmfTQwbeBg2h8VVXB+b1fev6nMj7vpTwnSqpSvU/Giifq/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768440234; c=relaxed/simple;
	bh=LGlLEh0YYAuwnOpk62N8CpG682A0eAe30Wvve1qLztk=;
	h=To:Subject:From:Message-Id:Date; b=LZPeCr/sowk2HvGiRtRGjIwj4R2NS1Aw1QVS8rkOJ3bPwO+LIS+HTzXXxpg7u/B76aeJGy/mgdM7psVBpGqFVPO8TyDFkshswd7Dp5BzVWutdBrJ2Pxh4I9MXa5Fee7IDtH+rc6WlDchpNdu18/MasFs/VGRDFPC4viPrEWVhjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8oUaK8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8oUaK8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C95AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768440233;
	bh=LGlLEh0YYAuwnOpk62N8CpG682A0eAe30Wvve1qLztk=;
	h=To:Subject:From:Date:From;
	b=o8oUaK8mtbAH7wf/vzq1LKfsTDL54NmK5zcWfrowc7UlSzJHhnKl29kxAgEEhneql
	 1pKnxs3TEMHPRfzgAu3MMy3avNtf4IiAQPQjyVivmIUUfim3Uv2z+OPkrB3TfeQ4fp
	 TuRBOIqEFyPd7ZluLSc60nFlJ33VyuhbmvsIvUtGnecyCw+pwEUC55VNe7ifMunxRP
	 9JO7ImkjiPKaUVw8CMzRc5qRp5BIlYVr2WfK/ccEtnG+tRd5ZkMtEciRjMIi75dUm8
	 shovk+jNp/ysuaYxZWOGoOTLrohB2yhswwTPTfJVl+6ydxq0LGaOSmzBFpCh6G5HAZ
	 xWyzM/ggKtV+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90517D3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844023358.24954.10486762444591225225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a466f286898b13876be2844c78ccdee0dc5f21eea551a65be66a1de890db8268
Date: Thu, 15 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768440233
