Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6118E146A98
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720470383; cv=none; b=bT5j0h4krSHe+FcOsAqG+6VPPwW84ksYsRjdV3sulcigU/3BDT/bPAxMbfyKoWP6f3rqqSsXjcT94OqrLwx4Yvk82rqgft9li1d3DWfH9IHq/xJfL9KbAHOjhnEYVMfwK0121QhFzl7JB2ggHfBth8Dum4NPIp7gHK9n5yXMEqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720470383; c=relaxed/simple;
	bh=9twJYivfaqsR6ZXRVuqXUUEFpNLxU33xppzsMaHBUKI=;
	h=To:Subject:From:Message-Id:Date; b=CKetVSnMzm/UC/vpldolBzHNWmERzjoPNMBuHhOPGcUTiygzV8a6Ew+igGnixiANBrVIr5+OwoyLoUySayPtcZOuYdHoR/I2E2tQj3vb8MkNCO0WJKoWw9dqqL2Bda3xi+H96s6LZbtwxQyHx7xDmTO1v+lKw2edWZv4M/lDiz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzF5PbY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzF5PbY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2081C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720470382;
	bh=9twJYivfaqsR6ZXRVuqXUUEFpNLxU33xppzsMaHBUKI=;
	h=To:Subject:From:Date:From;
	b=LzF5PbY1DOAhd2M3fcwJ1W1QbMgSRwzvz2F2HKKyETY7hHdvtHWeVW2QBIXrZH2Mm
	 N5TiwV5IoksDCeLRjkI33CZM6oRh2/V/SfhOyERMBqn0BRlRlJ0rTXcL45T8rhgHBO
	 pECH+1difRhFrf2i5vcGezYF4AncMv4YksFGBX1ZvkIceUjVquHIKGtvAKcuPR7d9f
	 6P+o9JPBo3L2O1I5QZnkiSm67djSL+IsqV9rm4SsPbxPdvnbfuDeA96PP/AeSD41hX
	 BP4LHwgBuZHEIQ2jABXu1A5GfiKS5PU28mAA42Atyjbp88N5Fl4O5Vd8rcc7bncIt1
	 lI9NZy3qg5tIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C959AC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 20:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047038281.32411.4349495016375426362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc2a13a2f4c8b998546dee26717ad5dbbab94156b9df3000eb6dc7b6909bbab
Date: Mon, 08 Jul 2024 20:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720470382
