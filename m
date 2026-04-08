Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A53A27FD6D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775657134; cv=none; b=kA/Z9WZ9wQBuZOTxm5TPty1ByqNe2vBXAXiN8xokXlmzFg3a2aqGLLHCPqCaTzuFAHtS/VNvhiv7Sgs/kzNKeK/CNNocHzBoi4rHl9AFNi8x86u+On3Tw28sHT+TCcPAaJ5vtiTh1DA2Ox7wvtUD0vAsvCiA3DleN1p2r6hJ4l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775657134; c=relaxed/simple;
	bh=oFcRV+nby5ICpigOateyjV9ubofHjWmNgElec5Fz+34=;
	h=To:Subject:From:Message-Id:Date; b=hPPs8RbFFyKJ8Q7uluxtjdHUFkLhmQe2++hPNCa6RwQfwfxdpDwPr/CKm2kxDg9EaDlBAUgCvWl5ZKlsqN/c4qz1pfiAPNZlSefXaG5j6kExO9QcxDc39HD3WIhJcyR1dIZTIzIZ1uxFXppHKt1GQi6wOqGrASTnUDxPWIqXJ/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXlxF6Zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXlxF6Zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF86C2BC87
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775657133;
	bh=oFcRV+nby5ICpigOateyjV9ubofHjWmNgElec5Fz+34=;
	h=To:Subject:From:Date:From;
	b=mXlxF6ZgoSVYTwszNOB/SnPgY1/dqb7lyQoWdRQRT+gkGGQf+gaAcDmLDiiolShe2
	 1OGMZ4KsXiB86jav3Xy3mDFAiV2j9m/L91PH9QOEDv5HMNwfiAgPGqFYN2gcWyUbRf
	 BuzkGBsGnErOX1oSpIDbBX5ki6lTvCDErdvRnxRMcVmZ4gcRpS9EDUcogqQX7Zm1rp
	 wRGo7hiTIQwftxRjbR55YZdaUR6kTJ01LUhsjB+GjhlCEwuY6nK1AEZX3KWasqyXDu
	 uHpeHMyifBsPSfCfdP4ACgZlR7K/OLxmw9UluRHmLbsFAoon0FmZ6D13hD9nA/qbTh
	 er6zXrkE6lWOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3BF1073CBF
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565713369.2863.16986687539349843686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8a1175e0eeac772171f8749670e4003f2d9cb0526c795b0323945a5b6e4ba6
Date: Wed, 08 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775657133
