Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16625477E33
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769060634; cv=none; b=SNueVcCQm+OpCvH/VMVd91mmo6xSE0d2dzCwuMXoTZy5cPvPXBRG5AkgEcFtHuGnuMPmkHzw879/2FvWg4IyrmEF/zDDx3GV1YboBrQF83S3keD3KOt7zSKm5JabbfSXlaneMMmFvW/SUT19e7PsRaUex8LG4fdi905zgjIMUig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769060634; c=relaxed/simple;
	bh=Z6RTC8lgoOVWsAIuf2AY0JNP2H7o5VCpKtreZD7FPds=;
	h=To:Subject:From:Message-Id:Date; b=pUqMkOSjX64MWRHg0X+0ZCCMlHrCkx4c8Qb1D/vAXft1Zo2ejpRB88xS02B4prAx+VEOnFaW74boW/aaw92I/ar/EbBXBYrFgtG3l+QOcx940nbOuf6Hznag2AQNkiyFGv74ce3wr9HikzVXrZLxBJN1eJVZlpaDq1comMD8SAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/j6sjj/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/j6sjj/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97AFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769060633;
	bh=Z6RTC8lgoOVWsAIuf2AY0JNP2H7o5VCpKtreZD7FPds=;
	h=To:Subject:From:Date:From;
	b=i/j6sjj/YxUNLA+iO70n4z6f1HBvnf2YxiSYCwKpRB3eNB+njPj2X1l15mtYN3ege
	 MISWynIOXGzmaMvP9hTgXwpA1wNaR4EPtC6ft7yywDZkxWaBYZbKUy+U38WNKVMyog
	 ZKzkvc3hBgXOUvWkHBxceu8r0wsks4uh8+43vzGczAcfV6pscCblbDc/cdncRgsrNj
	 c1vOQIlbG5ojM0RUE8W7txrLBiANTvxbvLm71Iaujo+jmJo0na6nWurZSFsvNU5qwz
	 22Ah7BoI9lyo7qyQM653beoqQ59vjgdl/l8E8S4cVPdcoAqGdny2TtUQTma8OhNbGr
	 kdo5dguONaaLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B01C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906063358.10223.5097796635634442345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d833d7ab9015a7fbf6caa4a30d71a324d1de886069d57e1b95ce5aebca4adcde
Date: Thu, 22 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769060633
