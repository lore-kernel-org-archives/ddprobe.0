Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0C030CD97
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756424995; cv=none; b=SmRFLkXQkJ/eiQ9hP2C62CbUXXuRwyjJ0yMLxfwp6eO85mEnIev7g4hAXK9TMio5M+8B8qK4Ftd+/hQaCTLWBkVXEH+BdKVCMlHw+gKF8E22jJsy8OuBs3spXuBnW15rPlhRKQ566A1yrHbpWn4WjAYDm0dg/+bvOIjYxVenypE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756424995; c=relaxed/simple;
	bh=EuVzV+OmgBJcjdrUHczd9DejK9dICSGCd1jaqthQsh8=;
	h=To:Subject:From:Message-Id:Date; b=cGwuWnm0ffeEztmtkaRAyQzdsrnZCq2GpLk0swEtNR55XIrhqfX7EtVV9PreMH5fcEca6hwxCvH5oI9/+GQUBBDmqk3xQNXIll2BiEDm7JrD0S+7AAyd3esR4mbZQE0enmRxEK/qI9F7p8/6AJCdsvffIzjUHP7pTn93jABUq5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf09hFc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf09hFc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756424993;
	bh=EuVzV+OmgBJcjdrUHczd9DejK9dICSGCd1jaqthQsh8=;
	h=To:Subject:From:Date:From;
	b=Uf09hFc0lhMHz1WBPnIjAx53qd3pagJxYXlURw/ijwvvSGha2E5w/+sBL3zlYU8ES
	 vAahJsUoWNTWND1hFrdJFIWmtUk63WoIhfpE+u4gtoeWNSpAxCnq1u4zwHDCkqzLUE
	 1jMrhk0qKiKkvA9gCm0xK1sBPGgybSxHIVosereKE0/m2ufseHuWLdaaPiQRYOegEp
	 Mk7qf4+5BTDbE3j80Uc+ACZ0MzCXc/JuHX2qLo4FNxYW5KkVuf4DK0t0ua7AMtxP8Y
	 s78PmSShEGpayWAZ+lAMmAWslyUl2qrOHX5UJIKR54CZZzVxS3BKTOv13V/bWPZiaY
	 +kylLIcgaFjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB2CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642499357.19088.12707868249945658002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fafa1a4c42fbd9b64f5d4021d63e0751bb1d10b0231bbe68489118b0e30da1
Date: Thu, 28 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756424993
