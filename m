Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDCD416D1F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781191594; cv=none; b=OEtmLGsfKLbihMfvx5Xf1R3sQE5i87egxd32h7lYy/NTNrRwWgz93KBYhog8MOv3CPGeuJii1K/un2fci+k5cTCCYBW10nUW0cLCQGHTUfsZGk9aFxZGsKDXfg0BWtoM7F8HOIgazML1Wrb/vnNdM4tVTaicXUwHs12hwz15NyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781191594; c=relaxed/simple;
	bh=Yy4k5xM4Ebfbjza2WiDxFa9+OimKfUPNSsyivDTXQUs=;
	h=To:Subject:From:Message-Id:Date; b=Fndz2N+ZSxZv7AkWgR/93rpZ827bOkE8lp6VWxYbDhVGfL8Uyoeey3VZnwN1HrMCzQNrkT28thwh+C6VsLvEisf+GVnMxwJIgfrFlbZwppHpiDJts2DChoJemkGUKXH7BtO+RAlmyJsIxlQsFZByeIcIZNe2419h2/ixWIC8vr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUGeA4ZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUGeA4ZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA64BC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781191593;
	bh=Yy4k5xM4Ebfbjza2WiDxFa9+OimKfUPNSsyivDTXQUs=;
	h=To:Subject:From:Date:From;
	b=XUGeA4ZQagRiirqRWpOfKyKH4XZ5q3l4EwEzcQhR8GkCvNC3SX0aQuYIh2XDzXDzV
	 DxBLPn7qQyAECwTrs7QHTS1+h5z9EkEDoHDOIeG9KUHWfI9cLKhNOF4LY+JAbnw0w5
	 5vJbcCovwLmYjNWOmWwVUfunF8jVUBoefjzvAobkKjFmfv4ElQns8APYX0sDA+wE7X
	 grErXOBisVjjJYF/6prq7Lw8zYggVWhDUhf3TT9RvqIoPg2MB2R3HU9AhqH4C39tmL
	 AoE53CQLw8lACs0pM4dECiuXCkrcN8x0X0BUzuJGvYQbNuB+wjHdIFwXsYc9iEdApD
	 BAOKuF1oTaqMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B111ACD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119159371.23918.15225253392249272373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925f86491d2bfe974b3622177206878d06fe34a97aa2c0b8b1cf2a15320b6c73
Date: Thu, 11 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781191593
