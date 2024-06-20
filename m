Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C871AAE35
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718880623; cv=none; b=s5be8fwDQVuygwt5DGwUIKNWOUlWhM313WuaYhkUHmbMfho6oZcIH0+KJKUusSiP9g7loAszxeYAzhPaZJ0CIDBRibI58Aqmrg+FKnh7ISP+S3aiRAVlKDrS0UVbmqGOsgCwq92Ne4m7iyecMRUz3d6FLa8qVIfTiML4jygPvIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718880623; c=relaxed/simple;
	bh=yU7MJOW07BKgmNGHQzm7iv1bVtYbnP1iQj15Vyyq0DM=;
	h=To:Subject:From:Message-Id:Date; b=ir9CaDQXo9vQaD9zZijfVrOhCVHE/550xVX8pshuW7lTogd0gra/CYuMfTfJY8OkkTJcRSmoQrXNMZlDpwppU/k2viblHqSmgPtJ3TRrDO0qzce/3uBe1Oayx4pX+JSpeiCoFxK0rPO5kbaVsdj1prO4/Z4RH70sz1Xk0d28PB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iN0oGxCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iN0oGxCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F02C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718880622;
	bh=yU7MJOW07BKgmNGHQzm7iv1bVtYbnP1iQj15Vyyq0DM=;
	h=To:Subject:From:Date:From;
	b=iN0oGxCraSS9c/ADprXFXjceTXd+wcibW7fDGva+RrpdeiWd2h5CEH7jXYnTIa1wK
	 0OybxRFOGDArnVYY2dvhuFr3EQDkf3wPpexceWi5/9P28GHdmTpFjX4ZZ5MmxV/u9E
	 Y2N39KzG7jTS4XeLqSr5UTao2cBbGWQu68XT5j7BVnZLJUSoSoJjqqTMPSR3eWtCi4
	 yAXuLBQ7mJyg1GhWl6gZfL4r2kHJEuqJNTuoiQeNJCp9NKux56pgXTaHPUVILPZmW4
	 5pcrgNpUr6Ra4NwgVs+i3Ah3ru7uli2EHtcdz0KWzxyow6/o64MUysFf+gWx/4uMmo
	 PfEKhzxUEHEMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1D2C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888062277.3263.8305583991992533510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a0aa35f31e8dd6fb2897404afaf0eae5ab33f6ad4a2e980553f1b291a579ab
Date: Thu, 20 Jun 2024 10:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718880622
