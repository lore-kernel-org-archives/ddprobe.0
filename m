Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0659D246BC5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769663634; cv=none; b=CiJD6Hpm3TJMo5FkkJ7q+3uTgaLSqkCGu1gYXkaoGcv36+YVB9hssTEM+khzOszkVy/eOj2LQBDUMbGgVvaHO6V3d3rfd02usZk/Pz6kj1scVjC3xslB0MPUISBkg74TZFD36w0vp25S2tfqUEP/1cekJVv4PUvJQzzADdUmDaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769663634; c=relaxed/simple;
	bh=DWSCJRfn+JJ3IdgDP0W+Q9R2AF71S8jvzLsc6U5bTSw=;
	h=To:Subject:From:Message-Id:Date; b=QNjDdc200ykjJtt5SZK9GzerC6Asfs8qTA1gMJQFRADHdCmtNNiMDPdSfr6CjI9kFstLi+mO99KSACntIRW9RmnXG7eTt5JJXrynqTUZ7I3V1Sf0fNK6eLupTg2NO5dcND/Gqj/ct/7BHS8Bkb+TQ23WZ+h4H1cRcv5koPWErJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcERtw4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcERtw4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E522C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769663633;
	bh=DWSCJRfn+JJ3IdgDP0W+Q9R2AF71S8jvzLsc6U5bTSw=;
	h=To:Subject:From:Date:From;
	b=mcERtw4mFjpovbN8C78eA0+MlOFoRAgppgGpG2qmv6vvsZPV5V8CJ4L+LtC0zNsKM
	 /W702dZPpvxqoW0zlpt11/EWrbKJatzBjiYWJ5acG2+5A6GJJM6aiw+6yMf0rqolwK
	 +qRW4uMQzcHxTXryR1qw8Vtd12rutbFrn+TPvIZCUZ3ZIUCGvTzClJcS7lc0nmtxwd
	 t8VejxjboARNm7mTi88zVVO8oXvVeoNo3DfAv6jAaQBVxSrBKfmYaD66M0q2zVq5gZ
	 c4Ng3nupmbxmImjSrno7S7ABl0KyesSx8s5Y79QOj4988w/E5I053/qSC2dUHtmou0
	 PsANKpQa7+a/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DBD3566B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966363358.30807.18335974473957084804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a480c12f226a6f58c4f2c140736deb2709a2492c49027e5da44a9cfe3a90a32
Date: Thu, 29 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769663633
