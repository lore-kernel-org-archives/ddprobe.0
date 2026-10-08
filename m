Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607D43CB55E
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791487234; cv=none; b=INCHu0P9O6v+p96NiSZBZK6HleSbZKb502n1wTSSeXF851izua0Z8zSYY8lcYeNvN7zTbcWOk2cQsIoK5DpLV02cA+GUJm9EUzWY2ShzBPnxePMZGuwQcy6er127JznGOxUiopg6RuLbtcZnN5SYD0LSbHG9niVzSOGepbqKANw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791487234; c=relaxed/simple;
	bh=sNbthVXDNcRzSxIl/p5gXttN8qc5Soliw715NmBPp34=;
	h=To:Subject:From:Message-Id:Date; b=k5RuU0r7zPHcy5PQ/nvgRDR5DwrtfcVvRo625euS/e0lAFmyDiZbB56R5WtOK8hLYZBOFwaBCJ1NvicWfmnicjQWZyLSq7TsoXndsU0IztNbXQ/dWdX5dCqOMey1W4qyY0GITMvbw1ypdw5SUE6YrNVUJWPNRTXH9H++s3CLPKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATjse+yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATjse+yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D590DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791487233;
	bh=sNbthVXDNcRzSxIl/p5gXttN8qc5Soliw715NmBPp34=;
	h=To:Subject:From:Date:From;
	b=ATjse+yliAYfZaRf2i7u8XMXRjeoM/jXlQ1Z+YCTkpik8x2vlB5xJsdYAqAdLE4A3
	 4BocSawQmzdIca8/uJNjJ26t8sfGkPyrbYPPcayUSKkRSQK+Ao3ANDpGR+r6hCiANJ
	 kQ/UjP+M0aKbTpY+3kCmSgpvDAzYuu3+9EH992lUN+Sh0PZczo1ww9w/2d1pSSa/hk
	 P1f1ahAZITppgQRjpAl2a3HpbMeKkJcZpQDyYDmjx2VeD3gLmRt8nJOpef72TYWc90
	 u7aP5wG3f+f/rtRRgLHCdMy1OJm4E5SrnwT6UGquNfjlwBAHP8qlNmLvdCMV/+a9vy
	 1IyKj29r1t0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC98DCA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148723369.25003.6275867388806697857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01dc74cda8513c26547c61a8645ef02c4fd263c3eac457a5768d369546cb0b68
Date: Thu, 08 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791487233
