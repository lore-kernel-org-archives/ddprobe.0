Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB061EEA49
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766337833; cv=none; b=gNpHQ0iF1AOpLm7unXms6a6X7B0aMtIhoQ9pBYQIQ5XQcvXBv4KgQ2XGgYWnWYDiaQaDpRgihqAHRSf58KF+mjdQH2x/QWASuoOJk6bQ9ODjRHVVKIO1gmw95Y7W2a8zo8k7I1dipLY+Tkw1wyf++FzscO5Z9xLcxtv52+zreNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766337833; c=relaxed/simple;
	bh=Gyz6WHAKlEaLbBpWIPl3geMPQHs90BOKV+DES5YTV+I=;
	h=To:Subject:From:Message-Id:Date; b=hp+2xFEOlikH6cuZL7qI8TPKU+5QK/+tlq5uk6gz16ehYoEFo+FFNrOj9B9eB3lFQ30WBsyaRmQL7O5QVrPmhymrNIgFQmCpX035pgFU+3xOQqBalQIg/kHtkP3Ofm8laXYkQSFkJd5QBfPx1w5EFyRPcFs4ofBs9PmnAKuod8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5pj6G6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5pj6G6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50F9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766337833;
	bh=Gyz6WHAKlEaLbBpWIPl3geMPQHs90BOKV+DES5YTV+I=;
	h=To:Subject:From:Date:From;
	b=m5pj6G6WHqslAM40VbhiEPVw1/UcTNcO8tP/yaKuqKLqJQmtPoWDqIfvDDhMZrRvu
	 YoP5wbH+kdSAmSJploI8bWqimUQBTQC5C2cNHGIU3uNhViYsLVKTKf6Mza6QjdylU+
	 rF0FlLqe1Oh9D+85G6uQpdpgtB2ioqhxtBf4tuAn1nl3S7iVkSHGk1pgFF9uKQIkOt
	 5WLJ/Q7JlsoUbjMsmrqhSbHReV8UFy48drHoq8uGgoaRFDZffFviK0ALi6DWe8wHOs
	 wlUbbH9rS6L6vUGtMhinPScRYD/pq10HNK/J86VQ2NecbdfwZUJvfDbOIXCaxjbnKA
	 koJPnyP2SFf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B03E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633783358.22415.3910133284071344628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73592ccebf49615fd84ffd9ce50bcf0436ce187d278738be9b6c44f63d47208c
Date: Sun, 21 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766337833
