Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B39834BA59
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766486034; cv=none; b=HLYFfy5e+Gszs1nYf0/3zc6sPujTWWNeBs63fcR0fSPaMggBP33eLCItEjYfeaXo5zZgdTiN3SkwrqafNSP17q20rvMkuPdQX8lJ4eq/+VsEYuZVbmj3ryGSmaIQ9G21kAJxCitVcssz19fVMoe6kE39csVA5Wd+Mz05ukUzszM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766486034; c=relaxed/simple;
	bh=nkB3mRZ1pQLqzY/yafoYOrz/jvhaimGLeBKSnNwLvvs=;
	h=To:Subject:From:Message-Id:Date; b=I6FWNM1JFytStCUwCjHJsb3SP0uMujuKWaeBmPKSdhxfBntpvsyWmZcfMBnB5dfke1IVMd7CHX7epFiKRepF74XV0LxdcSqCkCsZN3iX76hoogq9MRH39OGk6MK1m1q+5BuSDmTEz8wQGVCxVKHBW9x0/rGsPHyghdRCP5Uzyrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prEX2s+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prEX2s+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E005C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766486033;
	bh=nkB3mRZ1pQLqzY/yafoYOrz/jvhaimGLeBKSnNwLvvs=;
	h=To:Subject:From:Date:From;
	b=prEX2s+rSC2eATiZ4C8+2MhnPb1PYaQ/wLGicCUwjgZq9TI1ZP73d2mG03Pi+xPTb
	 wPAYoEymJvRfBK88UC/bJHN3v7x5FRCqkNTrJapzwAo1We8smipjC1pUVJXf7kYICR
	 BLNkIuRB0guiJPoouB/qxB03ZlE7Ovp476Brh60URHq1muh1ZIKbmbrRXOMkmfWbp5
	 TDa7nLjn1xoo0R5KwF2HnOzVKD5z2jyOfqd5MMrYUxNihzlopttVWBTp5nXVIpwWJ1
	 SMUo4/VXqIAQQjTxJ1OYgD80iQP8Q6Ka8jMj2hQdMcIO/sLIve4u22y02bc2cYBIEW
	 nYqjTATr0UZ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90155E6F079
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648603358.24671.12515117938877624339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0131a2a2a51286af22488edbb888ae61051918547f798690ead27b76d993f544
Date: Tue, 23 Dec 2025 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766486033
