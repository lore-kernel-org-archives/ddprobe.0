Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53459136664
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719748463; cv=none; b=GFI2HZk/QBENGECrSk6bqWnzHCuTarYQ8v0UP8LFNAC7lKNLDnHGm+eNXzRi9Im/mAjlb4Qxglx5nL84gJ01zLimGTODVZXxFsy+hcjvPqLJ2of19MISspvvMu3/ddYS4fnHUw1k3b+To8bFReHkM7KHhyzsfBpuccYaMhy+HkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719748463; c=relaxed/simple;
	bh=53JCxSSIotnCdPk0N0VYCirhDD3SIWCxjPFGk0N6g/4=;
	h=To:Subject:From:Message-Id:Date; b=QfPQKdGn4q24IwwBSeYgcipzqDfStHr5nv6wD+fy1PxV+Rhv1VjC6ry8SEwSXHNgJMAjAmqv/OmgKz9R3q63Ssm7x9SaRoXgkQE6WqyzKI6eugjdmi8GhJzI2BbJDUTaYQxre9usGShmKMZMfsvMBLW4wQNL9q17UhshRgQTvIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owe7v0VZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owe7v0VZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43F8C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719748462;
	bh=53JCxSSIotnCdPk0N0VYCirhDD3SIWCxjPFGk0N6g/4=;
	h=To:Subject:From:Date:From;
	b=owe7v0VZsQv9URbRtQbo03yZaYxJr4dOJs+e28VNgIWbEIDhc8cHuDfmWZywAXLts
	 tal912ejAsjO2NXQrsml7OuMN37isXlCwtcibqImBlliY6HHvBvRFA/tk4UfSv63O4
	 sDLzLdF/qEPqPdlGXnoCUtK6H6EnrGJBlRYuFMumUK7X9om10Zq+ysEo2ck8kZNAd3
	 sAXLW22YBlasV4e02by6os1dgTxoyYg15Ph8WBzGeigKSAd4fbd4QGSYmSPnlfFvtJ
	 Om+7RTP0zK6508jLX6/rfdC9eoXFLBqIj5K1xQiiUF7DPa7H633LVtM+NmbOEi123H
	 sbK5I2u9OQifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB70AC30653
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974846282.1346.3383728313590274718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d381acfd142b0d6747bf08e670fd16ec4602573b308397fb6f23a3b368967a7a
Date: Sun, 30 Jun 2024 11:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719748462
