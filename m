Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181592D8766
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756319994; cv=none; b=aWkETZYj3PEAWsxnKdblOPNw1DqEfCiY9FgKr0N4Jn4T76dpCK5yTP118VUmFIZgnggVLnjjhNHf8T47qlkigLP6/J9wVYQ6WdQjZhHRPuXQ1Jbf49B+mh/FkMVc0CJt/pdL7gWn9AkpnhWK/nDYSn/agugxi/qH7zUmi3YtvKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756319994; c=relaxed/simple;
	bh=I80madj+6mJ0iL+2zD9iGOcGSzFsIDmd+4qr75Vgs18=;
	h=To:Subject:From:Message-Id:Date; b=FtNRtBghRP9ixquHdFIOzlyHTd1DCqZHDRE3XFR9gAIOglKLCUMpr7BYnRleNICbEwTuuiJbp+qZJhixskesJmvqiPACUZaQVRwG5B+UETpnpAqAGc3jWgxNjwcYjdPUFXbZ1l92kVECZjQWOXBXFab6GDZVgiHJzSKOqK48hFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTat5AHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTat5AHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756319993;
	bh=I80madj+6mJ0iL+2zD9iGOcGSzFsIDmd+4qr75Vgs18=;
	h=To:Subject:From:Date:From;
	b=GTat5AHp5li2je/DV+YO3DcFxetQEhcEhQ4WW+U4yRvxMFAclU38eiWNPUBTMQSvq
	 mPG1lKliwHmiOG+MRA6SeQw/s0g5Z5f/blgJ5aGJn4abFM8ku7NcDRKWwIkvX3RG4q
	 pKrfJC9L2dZRQAuo9VYpP+wVyv/OigUer4xAwU0FG62JZ1PzAW9S1Ao4D1qrLH7uC6
	 0546vesydMaUEAIr/vOHHlRC7aPuZXBeOFEJjHMN2ldB3Mcj9yVE1c2KFeNvOW5sdy
	 BHHnkUa+2bUsQbSkblEaexbXCXM6lk0Zmvag5fDJZb4rSgvCRk/otOhxPUV1rH20LV
	 D9VDjoPVciwcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F144CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631999357.19104.4497056532931132156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21790eaa45a12ae810f8c477dc0248ec842b4638b1ace42c16ea7c8073680b78
Date: Wed, 27 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756319993
