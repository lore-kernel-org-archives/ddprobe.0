Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2428527472
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763781114; cv=none; b=poPIQgCsqFkGaPGMQBUjy5qlfzEQuRBhx85CQtlLN5l+xt2K+0V3+PwS3M+Z/eWK0lJqnTGAAKpzRKgQOlyRj5uEYor5aPxwmz5g0Nq3kHpg3e4ZfyiTGOIiBma+PjU3JiOWivjMqIUcHMiM2D70uYvmpzB6PQFYq1yCBupjThE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763781114; c=relaxed/simple;
	bh=ogU852YrUATE97Qlrc2A2uO8HrJLk6cN7VVmNjRBD0o=;
	h=To:Subject:From:Message-Id:Date; b=H4Q9XVDfh5f5gJdEHiBnebPAAs4bEjkDFPVztrnbbnKdZU3jsKm9YO7PTG5LsXZi+zZztXeUNuL2dMj5uM+ew3YYJ+FdUzGiGFlB4UWIT7X71nBL19mcAGBIw/XNa0thTbwPtfcJYsQZtxLG8X56H9OPMWCth8go48gaa/gMFI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkC/odxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkC/odxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763781113;
	bh=ogU852YrUATE97Qlrc2A2uO8HrJLk6cN7VVmNjRBD0o=;
	h=To:Subject:From:Date:From;
	b=qkC/odxO7EFCi9eWDUFMPkfFQKiUwStLhJPVlsCdFHuWjJGrnv2343EVRs5G6VSXp
	 29XwkxYgx2MrH5m0An7xmYjYeTxWkrmdFr0n7PtXTCLidCOicuKIbXtF8RJAmvu7cx
	 PufLmshqZX+JVcuS6ij35VfyF/6DlC1uXhGUdjYujqinuXwAJyH3sXjVVRbbhKFjPd
	 lAdKPmWp0K4glwuLMtrsb633wHKAoyv7ntnX6haLq4egTyc9iS21Tg/d/wbY32Oqty
	 LLizfv8eDUs7MPZBnFzGGUsEzl1Y6CcEZzoOMAgo+2Ct1o0kPNu9YRvWKg3Cq7PB6t
	 5nyoOMXxvLRig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91692CFC518
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378111358.8186.17739901289305933401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8285eadf529c4adc41e0fc91bc0f458530954251672c6d86669870e7732ad018
Date: Sat, 22 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763781113
