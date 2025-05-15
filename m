Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0F81F4608
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323594; cv=none; b=GNAai49LCt+7Uzj5J59nkNXziM3V8loSSyqBgKZ5pSiM8Y6YBpYqvLU00AXLyPXebzrpUTfQMEyVmxpslNCbMkjichjfOgGWvklf1EqsMERoSmifr03+PnGB8vt+IQKA5VxvTm4EOvDez34Lw6SwZYo5YsWkw4sZvumX5vtThyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323594; c=relaxed/simple;
	bh=EY6w+7VJrP6zz9Na8NM/KG5xNimh46BBfTvcA5NYEBg=;
	h=To:Subject:From:Message-Id:Date; b=XoDCILYcx3T0ZkPlEtF3IlCt3bnnujkpvaNd5Axui3qxgrR8y4XuF14WPzbVVoOwGfaqupFbhhI1uRkksVvt4eA+rrmSRNpgascg4WW++sBCR5F1WhCyi6lfq934a/WlBslU+uIEtGwUy+dZpuYYmsf/Bp8q+UDlal4eOTxFdP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f80idG3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f80idG3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4839C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747323593;
	bh=EY6w+7VJrP6zz9Na8NM/KG5xNimh46BBfTvcA5NYEBg=;
	h=To:Subject:From:Date:From;
	b=f80idG3hHmwyP/Tyn9ciOZoY7MlFKn8ApZDH/S+JOJ8H75KiofjqAy0e3Q7lxHQdC
	 YsRaFroFRVnu/AUjMXYtxWHMm92PqwqtEfOm+121i+XuVSw3N2QIg20kRQgbd4yMJV
	 uS68/e+vmsbli9zLn/hYGBe1dZDlVAwtukDxEnlOp7PDEfeujjTuyw/yotZ6HGscKa
	 qUH9O2tEGSxQHapys8LQulw+PhqGdYaLpziUZn7qLnHLuS3kGjmwuEjTSWaGOKL6Rn
	 TDmFzjp4hTp4Rm+g/mAFGqgUYyU95tvSIXKCm1gOY+efo+dcur9wI699RhStyUUUY1
	 Rf+t4CLnNvZlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9014DC3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732359358.16958.15053542916908792369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1d5f9b8da798d5120c3f78cf0b5fa230fea00a8fe0579061a99551e2973bd9
Date: Thu, 15 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747323593
