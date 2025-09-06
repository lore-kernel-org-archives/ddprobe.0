Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0602EBDCF
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757163594; cv=none; b=KjQqr1bUFkzHgLs16nTamyzspG1kWcgKH8nXgvY+cIOKcVPu3V69OR5W0vbhAF7Tto6IqyZvRGprMp5HYjo2r/pcTZlr0fDBJVmjxvVe2u8VN+/+1sjcF0ijUlYl/k8hLV9xS1YrmLe9fRks1CifbvGAW6NVLlnkGkSMXEPn0WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757163594; c=relaxed/simple;
	bh=nYIi6AW9jZF/9BDAGPWXpeJMyU6te7wntp+1mb2e+jo=;
	h=To:Subject:From:Message-Id:Date; b=kcfXavbcWilb8Q9OYEi7yAMvyHx0B/W51seQyEC2P7YyMx0xRhC/3rS8DBXV4nFFRgFLf61x5uOs+7DFs4hxLATZv3p4sDtL+a46PvQBAu/ZlWgja6YQ8O8r5+QbJuPy0iJtZv+rSrI/88EHbXgGmCAlK2lVS+x9lSxvTtHhoIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffXFXpcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffXFXpcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4351C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757163593;
	bh=nYIi6AW9jZF/9BDAGPWXpeJMyU6te7wntp+1mb2e+jo=;
	h=To:Subject:From:Date:From;
	b=ffXFXpcDfpIFjUxFhHyTrdr+dw81mFEaKohgAz1PvlR5H9cbW/XKECOE8EJEQP8kN
	 36lQfRvzzVagJ34YRHSEg2e2npHCVzEVZnLVCYZuWyl3p2RI4sK61S+Z4hFtqk3XQG
	 HPFHl7D7v0n0ICzKlEngCB/Ax1WyZ9sYlc6oGukrPSgPkPZC2li9aEBmceACU500qo
	 WNAIUbExS8ughyBwmNFcuxxTsx+ms+qJoQUXMyaBHYoA0mDV0vjoFQ5SvbcC+Ygruk
	 CmORyse3KiQB8PvT87iuiqnYsfy0oLcYmVFL1vUC4XAcIwrmL9zEpYNLmJIGP64Rxt
	 l22LymqeMxgAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6BCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716359357.5215.10465815378350695310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6f3af40ad107cc1ac40695f827ce5e5a255c24389c4d226a671f53e14385ed
Date: Sat, 06 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757163593
