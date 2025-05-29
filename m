Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1512528FC
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748495395; cv=none; b=RxfO7/UQqPjZj+555hsqDhYCeheXmU2DMOq5CCFB7xXlMeRk2WpVwWfShZYTEmsU0TTLIxd0nkiWLWBA6bwG8Yfu0xS7d5Deu2w4lG+ZHnJhKjT/h6jAZhB7vtA+HWYnNq/og7As/qBn2Q0OIRGtZB1fdUJlsDpH19S/DI4dBk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748495395; c=relaxed/simple;
	bh=uEg7K35YzmHcx90XoVGoNPaJr9ynqXyfhTD9hahrJGs=;
	h=To:Subject:From:Message-Id:Date; b=nwiE6dAaSsIgfDb7rCmDcxFK9E1TWnuPeKbF8Fu2DIwIZFEgpqog3ESJP1IqoUuXMy4Z3VGowUFupstFpxLeu5CpJ6WfTXPFCGbBo1hVOYby8EskwPVw36wyq1NBnt8w5V5qOSkEPBKHuWRGVa21tdX3VV466d//HHfTNVEiWN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgl0wCgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgl0wCgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A489EC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748495393;
	bh=uEg7K35YzmHcx90XoVGoNPaJr9ynqXyfhTD9hahrJGs=;
	h=To:Subject:From:Date:From;
	b=cgl0wCgxNx7vvqIaSP6PR8fr+VX+OHrOzCaYW+BqKU8r8xT6xKo2umHpyKQS2Z+zR
	 K9HoQs7nIrDxo0KeuXwV+vbXGEhV/OKFK+jn6BSNnLjseNNvOT6G4nmkl1H2MdTi7f
	 5SiK45ERMvwNqDz+bb5nvZj4XoXC86EPTQxEatnX8tMPiJkoRL/ab12lBnJQdSxfST
	 gAFmeE1BK511EMNXfE47mUW2L0n2WZJ0RpRCObzPcaW8z3tF9Fqtq+x6qhtYDRXO+w
	 8tHH+v0g7z+UL0IEGuNV+d1VpPpuQkdpuF+fadWLrfM8fuJt20NweoU0vznA4/urNJ
	 rnTfxY/oESsOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92894C5AE59
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849539359.10451.8316907870744987409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e354a8ef8370882ccf58980654784208309dcf8a06e39adbe3ea1110332a70b
Date: Thu, 29 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748495393
