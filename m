Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1316B1A254E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769949834; cv=none; b=rMQusZTcCY+zHmEWFxoengvw8+3bf7IsVTNxO4aLatdz0ORB2/wWSns0TzdmLICdSKOB+lR3+A+KnYLxYwysURn/tJfGjXAY6Ex11u1SGRpNpdCjGn2G02HbdY6re2/uVu4O1mm2Riosovn60o5jL7xgyzZfe6EfMLT47UNzv5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769949834; c=relaxed/simple;
	bh=N/mceivRBU1cJHpPGoAMSKxwkWpLilM8eJzgxIkI/bg=;
	h=To:Subject:From:Message-Id:Date; b=orbxf2x1bhNiw68tBWsf4OX47eHSaSJ6pDwJq/u7736RmZCEMEL7fP1dQuHJZq4n3GiFcd4ClO20YiyP3WTm4cj9Eg7GQBwnh+7VXI3jLxRSiyLQFr2QU2ptf5S/stDqmINfF1lLtgHIsrG5ldyxA3OqrtFxav3KnBvj+fMhRj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esxIneZp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esxIneZp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769949833;
	bh=N/mceivRBU1cJHpPGoAMSKxwkWpLilM8eJzgxIkI/bg=;
	h=To:Subject:From:Date:From;
	b=esxIneZp5GuZpCCEUUMckalZirAiTv2E/coCAA7B1twM+na6KhCRiRF1XtksX3NoR
	 SJH9kx+8LJtMWcgUJ1zRmA0ltIhBr8QieGMGFFN/p7gimN30q8IydlohJkgD3Yzy6g
	 BgyliJo7/2i8fDwE7ww+HCcfLk3niIEpzpkul/OwlgID7GynQywcpvpvilyLYnX8Qa
	 y2vs51qJHHgh2TcXh+5L/mgKKzceVMGEEEnCJ505BuOJn0Fy5K36jJ+/kg/56nFC0Q
	 HY6F5fsdE7/wzAgXPdDpEMQiqVjNDjilYvzcquSdgMCzbQo8Tp1UXg9fI92vlA4UMb
	 SbPgHqBNO8Eug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF19E7C718
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994983361.8865.7696552730996809374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680c644450f4c014c6ca075227b4c9b9500a4006564dd1b6abb2423e7c989bc4
Date: Sun, 01 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769949833
