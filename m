Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C67B1E00BF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738931154; cv=none; b=tUfHI88NH96d4BXQBifZjqfHsRWiuPy3xURlct3GVf4qr+ocSJdDW6QcSaQOlIndpHm87VZ/nng0l1rkS4KPUKZIypIB3HztfCW06z6/02+Njq6sJxiDOvfpTn2DfKm80eGmevW9UpaHfcMnNBzj3P2T4hC8yTbeKuVYifsb9fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738931154; c=relaxed/simple;
	bh=x/heycvSM785NEPbpwZ9PrIn3ThmxVwJGV9guR2/yZo=;
	h=To:Subject:From:Message-Id:Date; b=XaK2arLovr+psasSwdgLZE1uu94PqpA4tRK3crGPo7E2RY6uOdO/wYuv8VGFQfBCO0Dk/oe3PSxlgzNA3EmLIztVH1ALcsGSFgJKjBjTDD1EX/boZEbBlB7R4s/KcBPsBGF1PIzXHVMJI47AbGobsOtD780AozJl6t/DmzZ+0lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ1doJed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ1doJed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD244C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738931153;
	bh=x/heycvSM785NEPbpwZ9PrIn3ThmxVwJGV9guR2/yZo=;
	h=To:Subject:From:Date:From;
	b=tZ1doJedf8feK0wrXtIr+d+B4o7dzp0jhv3cE6SB3RVk5M72Zn3yA2WhhmWyKduY1
	 cd6PKEGQtAAVi27jmAvXxMrFn6aW7JjOU6oia1rkMG7IotbePE12aa0Mfh2sNx515t
	 E5Qvtwvld0wHpIgbg0KgA4lIaX1ppRQUUg9a+g/rokxmq9Ue2tZoU4s7F2UPQpLHjD
	 Uq9+Db3W5hkoNJyKeWhcAhbFq4JxKvVkLGx8qhDH9EvrghEKI0899aFJc1pv/GDMwn
	 iNE8qwjrFCT+sExMxp/GXjy2CIqQSc3Xui91pWS1/bw5AYN++mnKKdj9h6VTkEGrnj
	 ee4mcXw04uDdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B204BC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893115371.4482.15797038523754446543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce23bb06dc8a6fe01f56d48ca194920a8820ce3170906b73c3bcf32053ac383
Date: Fri, 07 Feb 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738931153
