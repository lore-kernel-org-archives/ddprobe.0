Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C771EF925
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728995154; cv=none; b=ZIejJOJ4CqEVLYDWlrqdwbyg5H7nc9VsCTcucJHR/Lqjg4vNI+UV7zHxxBsLZt+ebYidIykiYiOy39m111UnOTn9c768ueN99X/3x2+G15b8fjpdgvOISC41q5zceVm1qMDie230zm7cJfxHJSKZyRydZvDQG++3LEHaPWUyf/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728995154; c=relaxed/simple;
	bh=lX3CA3DMxRt5O4o3Cpou5SJyhjGo+imKJa34oIHoGSE=;
	h=To:Subject:From:Message-Id:Date; b=DhqvK+BAH7JEHADnQfhe6cxNPPTwtUNLE55jvJT+b7dLIboiXBlui4++soEy3yfqZlpPpCA0TJfHwFxMj7R5oYhZFJ4BIHq9keQ8wrVB+3fEdsVQ7YnaFNw3XqE+6oxApzN07q3xTAR5BWJauNOYrA1PQ7GG+uaDXPnWNW3nvL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTbfMzxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTbfMzxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF6C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728995153;
	bh=lX3CA3DMxRt5O4o3Cpou5SJyhjGo+imKJa34oIHoGSE=;
	h=To:Subject:From:Date:From;
	b=NTbfMzxS6C2q0qU7/gIktzcV+BL5ryh93vJetjtQdcwieSvD0nrPa4fZQtvFbSG2E
	 tT9RD7cVfRbm+XWyz7Ty2YuwtVLzxx22AvKF7RzQfSbqvB8oubAMlGJDFRUJpQ8uzA
	 rSyJAqTG+DWcDe+mut3gLY5Rp2whf0KSBY1oOVDR0CUvBW0VJNIfOc9cWsAAzzuF6Z
	 vlb6CneLozWGypSRiUvnFo8paedIP3dfqUPs9Cwaf2UWBOtxc5DAaJapxbxPbhCI07
	 AgxQfeBspS87r2vM+0bz9oF+r9pEwFRDSH2ZL9WBrYC/Ko2c+b2Jnlh60pD5WYURXN
	 wsYQNWcrWj88Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9362ED21690
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899515359.10470.17349321041741092991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742632d6a1ccdfe36afecbd9958c6811b5bb1d3fd5ed45ab297a65380a263261
Date: Tue, 15 Oct 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728995153
