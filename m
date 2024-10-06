Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CFE273DC
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728227154; cv=none; b=dkoXCtVqyFxQyp1i9i84YzYb7aMekZbepNKI+jktfdwCJzDrscyCGwcsd0E3z7csLun4ODhFp1KeDPQoo41OhT87eBug9K1+CLkUwuMAyN0A0Fp7q64I/kBm0o3fpvVEb2lgqAUM6vkg0XRVMWmva1OqQoZBwGnxfW07OfeOZHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728227154; c=relaxed/simple;
	bh=0n7209H6UPNFmuAtprHAS8uWmc3+zyR+5v5ey3uUc7g=;
	h=To:Subject:From:Message-Id:Date; b=KERFyTii5xxDm8cjUURjTnsR5OEG8k6bW3k93LZ7AxL2CEbEQedMPehlyEbjqkUIEHhcnM2lImJ+Ucd0duZYzQ+7DSP3QjwUM2CjdZW+RHOO1VhLKFm+MXdBbTN5ik+tJO6Gtq81/Cl0Wm0NqzghW09REIXQqUIs2mXesZl+44c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwcwcVKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwcwcVKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4084C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728227153;
	bh=0n7209H6UPNFmuAtprHAS8uWmc3+zyR+5v5ey3uUc7g=;
	h=To:Subject:From:Date:From;
	b=CwcwcVKQOjh1k44UadsbMY49+CluJi+L7LlARcLuRshiWsWBrJp5l1CEDxq8CgTJr
	 sAUjq3XDx6Je96BlEJ+zdzhPFC7f22AJVZxudI/7x0PxSk+mhNq6SbN/9Z3gwbcSZJ
	 f+fdGwdWDNo9xferYdEry8MuWwTCr2fvtnjDZHMA2ecHVUL1j/amrU6x0xy43gEWuD
	 Na6FB7SyC9E0UbfWQ2H16BJh/WAWSDm93V8Lruw5CadrJnBcotVOnY0hNKQl9Mmc4A
	 /mwvhanb4fFUpX4O91/7gobc2y9q5m+kKukTZXxPaeb7kNEKCjTkhYYX9XpsV7j6q2
	 xRcl0ij/0kbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1238CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172822715362.11465.17469665484265550113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80e3d7b6be41c510f9445096552a816102d8e734b03f80adaa981b59240e9f5
Date: Sun, 06 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728227153
