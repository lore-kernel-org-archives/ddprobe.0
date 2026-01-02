Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0621C28E
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767364434; cv=none; b=ZulxyLG4HfmGU7vN6BxeMT1Dd285PiOJ5HTPLlgFWyPj0XlCEP673QLaJPnPU2dGCI+X9vL4cCyMNImyNjgnrK+QjbHCN+Z+6EJZWf6S28yWWT9yu82XY7ISbYYH9vAWXQzyGfKfWz6tH9vfDjYXtNC83ESdFxKLyx/gpBnIvPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767364434; c=relaxed/simple;
	bh=3w+8fynkB3mY1yOBrhq16nXkMPw89Xrr7f5I56rxcgM=;
	h=To:Subject:From:Message-Id:Date; b=dobLZwPk2yGXOgz77im3d9vaM3d9L7h/hvpGzcudbC50tE0UMhWFi3sHcuvOxWJy1Uq4zpLZ17w2vdI3GSPzmJDXI3sFq3Zu7m8PbzHLmj1Me4GFF91Hcao+RppzTBCYtt/kgi1N+bD+BTxaxOuWvhYNdcENB9Sg9hAUKg45L0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPQ5EBJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPQ5EBJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A1CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767364433;
	bh=3w+8fynkB3mY1yOBrhq16nXkMPw89Xrr7f5I56rxcgM=;
	h=To:Subject:From:Date:From;
	b=rPQ5EBJvEXCgKHGuy0JhSKPxeFO0V1BEFBuJcWbtlvwE8n9//QGQBhWC2XrhqX8pd
	 yTYMs3C6pKy+jaz/ABJcL9t+bgvfuYZ9Ri3gI8dvErB7/SUDnCndCJJ79O3o7nkd7G
	 2IdWON2eiDp4gtb+iPjeygQ/eRRaJH3emSutynGTwH/AJiG6S6mAEBiUO8d5/pxHht
	 nsKApIsViKCkKPP8EVA4qquC2IwYVPER9DqSL53KdFD1qxKbS2Yl7eMEFAfWUVUoYK
	 ZkeTdqZ8RNXT1+qedS7IlviVhUEL3J5UFZwzTpQhnvRkF9DKgk+30NtvOWt0Yf9YoD
	 jqu2LfkiIraZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196CFA3748
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736443358.6888.786972487113157692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110db2c3f31d3fc5e71185a24f79d15f7ec7deca5670e77d0f34c6efd1d35059
Date: Fri, 02 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767364433
