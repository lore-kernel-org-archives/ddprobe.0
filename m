Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D2E7DA73
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737085554; cv=none; b=Gu7mtImgprzDJoU8+TkCK/vXU9ofT/EPuJU5bRXD+Uuw5T67dMvHsFpEiHCrNNS2p1xI1ymJYQtHxmkp7eaQuBHwHKmb4KrtsBnfE2eCXCLS9xuv/ejSE3xGk1Nch/AwYvVer8oloXpkB/CTyOFXsZ7uhodo2kz1NTWyeh4LVZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737085554; c=relaxed/simple;
	bh=Ss8tpgYdq3dGg+sYJZ0mjXoRtiZcifmcz/WK36vMYos=;
	h=To:Subject:From:Message-Id:Date; b=e5B2qmTgPAxc2aiF0yRnhbgc/MLj/ILuSP9Y4Agl/tlIJh2fzwysPoNXEWvYuthD8IDVkiJMyK4Nx/WaKji9bQyvAbQvJbdhMfhN6TYlo/W+CSDsRw6EQsw5aoQZN3vvea8F20LemsNpsEovKmqyKA+ZrgILLhIha8QwbWHZ8pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMvSzvAz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMvSzvAz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C26C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737085553;
	bh=Ss8tpgYdq3dGg+sYJZ0mjXoRtiZcifmcz/WK36vMYos=;
	h=To:Subject:From:Date:From;
	b=sMvSzvAz1hSxCOj20+EgRXCk8Ea9hiEl3X4s6T+CIgi07yRVYTF46HfyWUKe96XE7
	 ECTxEhrZNC1SmcxF14DYVDAanpNkpcHXPB+RX/p4q6iAKw8+x5vNmfKi7hKgjVatDn
	 g4TNwQzdXbcIaNUJ3Ci1e8TpQJgTqMzonFMj6ylxs8H9Zj9zWsCdqzCN2O+oWjyhc5
	 VhKnhy6en+mv+GztqfiRvmqP3/GR/niM1HThvCMV6yBLa0e/37Lb6HjURH1d04e7+v
	 wfKfbgPbtppZOc72rcNbfWHRuDrsPb+xYK/J/yS3RBZnrF6ZQO+PmRFy5m/k0kJyNz
	 4Gd8D0P2WYNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A909C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708555362.1025.2166652812916091041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41dcd789c9e0b9e166da9fca03765422830ee144574eec7aa12d91037346079c
Date: Fri, 17 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737085553
