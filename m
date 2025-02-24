Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3128B7BAEC
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 18:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740420535; cv=none; b=iFTcMIfr4fa2FJDbdLO2HgSNNDZHCAts58xH5BvbdsXz7nCGX0NnkZUG9UwPUG35eEyzxIVksX4LB3m5afFKzAgY/MTI7oARZn8Y7gOHK1GwmqLHMgo6YgFuibatQSzw+lvQcV+r4LT/hvhXEHhluhwV/buUd/CBwlxrbehIHIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740420535; c=relaxed/simple;
	bh=RDvPXvOgbtM7hI5/cQT3LlFuvPakSnCwpyUKLDWrqdI=;
	h=To:Subject:From:Message-Id:Date; b=MtT5EfbZWcphW1vvdhJ8eOZnVZf1kflGemftHPjcApDDwlIOXLrBc/m9+Rs8JcQpjEl3dmeRFOgsZEyM1BWxB+Qzw8mWsd9lYZaX535NqDtZTBv/HTMN9/NWMIDYsyKaSImMGyFLEgi/F4tX21VFg1AHn3lxaBul2edd5Z1zXJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6rH0Vti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6rH0Vti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5515C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 18:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740420533;
	bh=RDvPXvOgbtM7hI5/cQT3LlFuvPakSnCwpyUKLDWrqdI=;
	h=To:Subject:From:Date:From;
	b=j6rH0VtiZd8roPBUOjh0InHGjb7IrxyzvIrf/nvOzWgEfp1jG+fj5PTU9a/zhEubT
	 RuThBLZ4rOBEYgf+Rjjd1IIOCMkmcBlpGt3wso1ePykYeyWLhRj2K5GS60R3GglBoe
	 RLcqmK3wF1LvnC+zxYYajK16e2tTSdE2yI3CFzyU8UYus+emHxbCymvPDGRZAO1ya+
	 zcs7Ox/G0YkAoKqJ0BZTu4wOW39Yw12KYc+tBHSZ08F1yJvj9/cXDhcLRUDEwpZ6AR
	 Ce0IsG9lVENykiJJ54HRp2cxtsCt9QN9JGsIsv+/yU9eJFkEmqwfMJfcapzgvpdDnT
	 g0gPLswjnPRog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DBC021BC
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 18:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174042053359.1418.562659956050934677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370fa5e1948103f4eb11912bcd64c55e3ef2069a0d54b3d375a32000f2acb886
Date: Mon, 24 Feb 2025 18:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740420533
