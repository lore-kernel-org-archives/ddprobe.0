Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E00016F0FD
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718192903; cv=none; b=osUZDn6AczFjrfLnEv29TRTE2PKY7ZvNIeYt+sARWgdwLIJhjfWm88FphrIHFq9E/7+sL7gCMMXh00C22CGv9nch3DhWst04N4qkRY7oFFhOJW9Ki5kjkuqUtfCQC2q2R3jeUQs6cs1SUlAVmXtQiK1J3oXPl1GLHIBJuMEPDY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718192903; c=relaxed/simple;
	bh=7EWU/q0Ti9RsXuUuJ0MKF0y1o00sIEaaQSqPjmKbabg=;
	h=To:Subject:From:Message-Id:Date; b=jBU1nNetX2Db+kMAGg6NwfqyjJqTZm92HsO0a64fl6djXrNHla+7kGiRHg74ig16f/xRSaxb1CDuveLDRaaxOeVqU4EM3DlZ0qx/+RCwHgqN6X3W+eH8oqCwkkcvSFlHA5LgJRAsAksZ//4Hx/xAhhDKPR5DR2DP8nlTul+d6vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZLMJdMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZLMJdMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A67C3277B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718192902;
	bh=7EWU/q0Ti9RsXuUuJ0MKF0y1o00sIEaaQSqPjmKbabg=;
	h=To:Subject:From:Date:From;
	b=ZZLMJdMRUgUHJVq0n5Zhm42vrPVtHRQo8b6dbb0MInfYud7CZ3RwATMzcBYUxVpNo
	 F926VKyISTlvcz+xAUkyjU0+4fUs9dlTskdFfcWN0GqpJam9iTQoH/2I2ThWpJTK33
	 7SroBYCL7mK/3dWZ2QRSkrGARAxPXDCl4RrRm3m5XQ/XqB3KEVm1APhk1AN1OAcsKb
	 4Y2BVRtMm2XZed7itKzQyCjZPMvzldHKY9Dwqws5ECXLj9QNC30hJ9unQqJjfZuiqI
	 Un3/Kdg6uGXskyzYvVuYgr6ATlnhSz5p1ZkQ6Cs9CnFhWod9aIxu8MrWmtecoIyS/r
	 hKyAjLybcKhZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12CDC27C77
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171819290278.8862.3852281856542628622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e19049630bad299680db04c934691bb7c74a33f24860e7349e71169c0526e5
Date: Wed, 12 Jun 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718192902
