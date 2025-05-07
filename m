Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F854204090
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746614994; cv=none; b=r4j+6eBchwkBLYN/ZpWzIZr24nb2P5iETZfDpZBqmDEHKF+1+6q6CYU7Ybecyfgyy1AE/Iw32T9Mq2TguhZV0h91R2a6ldf3ifNtBmmdpVPbjq1zVmh4fqiheXErbLHB1kX+YPVun2YXr/4FcyRa7wohQXhy5GK6O8K6g+DNdh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746614994; c=relaxed/simple;
	bh=bIFrIWwJOGXKuNsIbgFHcYEhKTvYiT7T85DPSfQxni0=;
	h=To:Subject:From:Message-Id:Date; b=WCV8xX6BzCt/Fkkdx4ellT4o7yhDIjvBtxnDI42+5Edg73hKlvJl5oIL4VEm0JJrmLvSUeTXzGiWl4MNAqqRBgPiyuBBgndewGoiD34RFM1UItlxR6MBdwRZZKrt2PpboYOqriix6XBtF158txAo7Sf+PYdrNRp6e6j8najjT3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1ccuITM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1ccuITM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAEAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746614993;
	bh=bIFrIWwJOGXKuNsIbgFHcYEhKTvYiT7T85DPSfQxni0=;
	h=To:Subject:From:Date:From;
	b=U1ccuITMTId0JFr4z92TauGPpdlA/ajcCtjb1Oxuk9KrZti+hgDgTv2+0G2iWt5Rv
	 trbdhKDuE7GntJQYhldAQmk8cpxW6CAodt7pql1oJvno2u8lDEdooVfk+HaFxFfiUP
	 nYr9h2KniYStg7XDLcedO9zpTFu+jdoETBfyJae7/5+s8NwwNfA3EF1G++oEqrxqcm
	 dIksyz7cjAXtK++t7cWpJhMersKhL1EF3quBefEfjco1065aS5d7FpvGY5gpulfgbq
	 YCZZViRNIJbb8wHg//g9XqBDlgAiFPe5FkItN7qfRT4sKQ+xKmu4w73Gp4sddsysbX
	 flffN3YQoyDuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9D2C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661499357.14738.13245231754896630006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fe8015f1cecbe25a40ebee9afeafecfe14276000227208b64d7566f52299df
Date: Wed, 07 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746614993
