Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E2B35F61A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772449494; cv=none; b=ImTifI3P/tdt8pWxJBzo8XjRw4GvS7XjXj3MHBHtCD+Gdr8XXc6ozX8NFKppgmU25DfO0RtxWz6iMnfY6ZK9McwfWdIOpBWo3FJlbD7hx9ZphPmfBEXNuJCOAfvZtl67WA6gIgnD3SamKNOkfG4RS4zxotYTkSPFONx0GnKyMgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772449494; c=relaxed/simple;
	bh=igIHPAEISNV+daXoNpsK4nsaWUhcV8w0KAaMSV5cKwA=;
	h=To:Subject:From:Message-Id:Date; b=MxUChDsTDI2boXlPsCgPISqg77RHfo82qkZsL9BIBDkPvNKalb+zLGtpTw+3z6pYvRgpSs3W6dfopvuXq8Z2h2Inp5G1vUYve13TVP/iQ9eURHgNfgtD+5AqhHU6NXxuUpuC3MexScs/QZNcr1U1AOcGhCxW1XRrbua+CYbpbic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7fLzFl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7fLzFl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8083C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772449493;
	bh=igIHPAEISNV+daXoNpsK4nsaWUhcV8w0KAaMSV5cKwA=;
	h=To:Subject:From:Date:From;
	b=a7fLzFl0x4Bhw4LGDajWql2eFAE7fzLkp4qRblyb0e5hvhIKkJEnWiRchx3/QZGPv
	 61gV630IJA3ahgfmQjwc1bj+qiUZv+ZR/t4pIkyfigb7jaA0/gbnNdsJRTYAT+IlpM
	 Fh96dfSg/4SIf+F3uzuVFZjJ8OanTsZ1swF8+xja72ZyXcvtUjBfXq9u1f8dxr8ys/
	 xzq+c7xSztaDz/68iTubQ91yosep3UfZ4QctysQ4XFOD1YaeonYmxF3ZLBSpSB34WJ
	 4Zt9AcuN2kTZWqo6ZCt7KMR0qZEtfJkCsFccnqBoCsIgN2FWFMcIl4vyJGx7mZuQNZ
	 J8kiU1NqhpkWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E33E9B366
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244949359.9024.13349303766409138168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e7f83f0362d51f82f58199d1644b2ecdbba55a44e4acf173b85b2cf1af902e
Date: Mon, 02 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772449493
