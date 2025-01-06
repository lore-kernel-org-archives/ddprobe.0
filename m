Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D62C7603F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736126154; cv=none; b=kacZJqi5gkeAM6nk9xCIYYiuXLBrIB1loPU6JwiQ+TgfqaTbWD5WIfXWuQgruWq6g7+UYGeSN+QHlEMRc2iiYt6b6ZmfX6kds5GtTiiMkaPD0nxAkjt6rfCQoZshHGHuaIHziy53sDYmQY+aIH8HchJ1NmGzPlSZrY9kYfcASNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736126154; c=relaxed/simple;
	bh=lznkL//RxNeqPUdwXdbXRJCD5RFucSc1likd8trxIog=;
	h=To:Subject:From:Message-Id:Date; b=hBfz3JdRkQ++Ij87mXse/ocLJfK5ErEpVELQo9tHZzvBR+mEbutj2dW/7VA96ZYWFLQHwV0p9T75zIaTgx4m5SXI8sqSwK2R2xwM3LPCqVTGESuVLCsrhPFJPsqvzK2lZYfNKle6wZQ5uhloeFKHkpAB2kHxXiBkNm7X7dYpArI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRgBh9tE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRgBh9tE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E695C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736126153;
	bh=lznkL//RxNeqPUdwXdbXRJCD5RFucSc1likd8trxIog=;
	h=To:Subject:From:Date:From;
	b=eRgBh9tEsgr4ALOrGY057Wc8dhV2YXlZu1q5V9prom48RHj7sYJ8LjvZci7B1eZ14
	 CJJFfm13Y87xMID5/AgUF/ocZj941mTk0QupFGcYacOHm9Ac6QY8K4FzrM8VYGaKDU
	 Lfg2SrJlagxMQ0zTlgPNP4hs068iD0o9TEYz9DyeoFaCfQlDnrhV8i0iKEhqfTdBMm
	 4+bzjJguxX4lnU18zAQZvHeAEVWrZ7PApIWm/vh0IOiXIHCgRaxrqGD2Bsaze0nY7K
	 SrVlEqKp3u2USCuyQnIxvoG+Ih8LC+VnERdmy1GMp3A0wg9sGVeMwLNhe8ztWy4f0D
	 sn68FueI4DlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082EE77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612615358.10109.7711958059822614588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f8a837926482cb19ae76043cd6f63719772893d846422678f5731c234be4b4
Date: Mon, 06 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736126153
