Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C061FA85A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749065995; cv=none; b=TnANA+sCX5QTvE9zapo22msAFsLHhvGfMlsWWMjaaxYZtETLKDvAne887bxIU6SYCbHihZ2o670ICA4d+tGS1l0dDCqmtyxbkrblCJchfi/FdMPEubaHVan3ZuQjFr+eFZU12EUdYRtAasPTIZevRLfNhx8/jRFQgttDiJnsTxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749065995; c=relaxed/simple;
	bh=WWrfRKCuejSzURo/mEiUaR0dk7fEUCWovVFLVeHWLk8=;
	h=To:Subject:From:Message-Id:Date; b=O9/m48hRtuVwfHV/tYc7PoxvXkkOasRT7opB+QMqr8xJ63XhZ/ei38FJ1BfS82x+tUoHrf58/TYbNPG1FNakO/s6O4PqUa2QBRiTj+lmBpjrqPVYTZkDW47v/g6oHDn6fxl2zneV0sQUKSuTHggJvKGMBY/2EQ3Wy+sS6fUCe6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtMScDMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtMScDMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145CC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749065993;
	bh=WWrfRKCuejSzURo/mEiUaR0dk7fEUCWovVFLVeHWLk8=;
	h=To:Subject:From:Date:From;
	b=AtMScDMOquTtssCUozXTMHNLvdpuNO/8VCkgnpCK+znXQNuWPpU5Hk7N+k3XSYLrE
	 qlfqHa9mNVna/RwZP4MKPjA062JmZ4LlhU0XAfMrZle+iX3RmVUK/qAE/l1I50yVUL
	 Mnv3Q5wW9d1usRJHFCxrUnwEW7etYS2ks+GEEEo4aDeTrDBlT8vq3g9hFtDQODMJHM
	 6hik7VmM65E6vcRwV0/TD8Cp75UzmebLNlJknqkgdInpEG8W4nQI0hnwoGnvoLHdyQ
	 s2cMPjcv2zMU/0vjZnzzfP26KlL8l5eBjmL7bO+Zzy+6J/PmvC30AUiXC07nUOp6pY
	 yGrwhleJRAoKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C67C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906599358.28310.16770006252789326169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299df4ea0f282b8008206dc767fd5519e69c54f6d73f2d5fead3189e2e198274
Date: Wed, 04 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749065993
