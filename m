Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1D81E495
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728818154; cv=none; b=CB46ujHNIE+OQWhCuI8C5IL5//EMbF9S5iBTz5dH0mCT8378l5hNEQIc80i11ZiENs2dW1/7vQzuF8JXd19EwbCLFGboqaCGoQNEM0+b7RaVafMMw+ccDkK5hduwqaM+6zMPBoXYx+7fL5SijI7tImaf3miMgSsFfSmx8bTB/cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728818154; c=relaxed/simple;
	bh=DUdqgaQYs/nMdZzJxy607wr9U0L8UPa4z5vilyXTjjs=;
	h=To:Subject:From:Message-Id:Date; b=utpxcAk4i3Nu5oqjQ4Rr52dVSc1dwomsuVP6C+v6fQsUEbyH88eOWymL23kySr3Hz/sVinmbH0hmDy8SRJcvPMU1WMHPexJ1yolm399DJuuBPSe5bcFm0oc0IHh+V8X9oOo3rKejtun3l6bqyO4H0rJObGBK1O4b8mFl+n2rKIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvgLkHOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvgLkHOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7B3C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728818153;
	bh=DUdqgaQYs/nMdZzJxy607wr9U0L8UPa4z5vilyXTjjs=;
	h=To:Subject:From:Date:From;
	b=rvgLkHOhWWVMBPVzg4gYVcID+WVTXBEy+SfX+y9sd3CHymUmDePRdMaHkvUnlfIwZ
	 1j9jXVu8HP2utIcd7wbbHeiMPK+haw7FmNUNNIrDtmk/sewH5qG4YN4JSSPwBDx/91
	 QofnBFQARw/OPs6Bhn8qbBlQmIZ7jH7GsMC935DQOu/28KHYQl/3UIDrWuuOBCMRWr
	 Onksbdycj243MFEDkbIOKy0C7YDQOX9kUsgtmDz07LBqiICYmV2eY0gdSMYWNGeqVN
	 qB+I2HeukqXoClsTNDCd64bj9JPBX0fUHnRxR9fRbjyzieAPD3VIA3o7O8hctNzW7E
	 eGPS9+8V2Xnhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8874CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172881815366.20299.13239324386566913044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df568c30f097e8ba154cc32f2c7b777354171438eb8eaea7efd1f954aadedbf6
Date: Sun, 13 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728818153
