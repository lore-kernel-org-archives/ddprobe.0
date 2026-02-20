Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4285433A6F0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771582494; cv=none; b=lnGAgs1Mt1XHHAispZ5YQmpm4IalfOauGoA+poMGayCO1iB0ufF1Xn79rmnM8oN7AtqYPxJxlGAubLlFK7LSmluGccaHQFGDwL1VgSE1/r7gCKibQk9XXeev4NrY8VLQdGq4//pX7nwXXIpN4Tt4/jaQGRlh/tUy3iLDryMqU8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771582494; c=relaxed/simple;
	bh=kD7BfU179dEMVmvCDBXE5At986DzjoYwkQ+IdCU9V0Y=;
	h=To:Subject:From:Message-Id:Date; b=fJT+m4ZMNeNAkww8lf1AVPvxI292C29JdXjldQYaCsH5Ehb0TA5QD2YXa8ipsfb4odMs+DCUU7clNVkkydoXqhqu6wTCZm6ULs/qKnFrZwGYAnQmAhNudPmCS+aV9vdX0f8uTqYwmeYdQmtk0WCddMe8IJDmxW1dFDg/g0zgoBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipSdu+nC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipSdu+nC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A718BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771582493;
	bh=kD7BfU179dEMVmvCDBXE5At986DzjoYwkQ+IdCU9V0Y=;
	h=To:Subject:From:Date:From;
	b=ipSdu+nCA3C/7lciYiUyHF0qZ3Ha4Np2vq2vOO/AcCSNhBQLBjt7RrjVXCZtDH/6O
	 vERbr8eNMnwi0NZCWwLzN8I/ar3SbsbKtwx7ze60Sz+sUBwQYAopH36gzYqS9DgBD3
	 0x6wRm9/hTIcbgqoaBZyd0WdIdj5vXLFyFocormIHDjpMJCsv8nabKADHPMGfP2kI2
	 A2gXKHOW43SgKacNW7v69OnOPiCTEmx+xRG4DQxZabWIMWO8wpToNRyQxq9mjVzKHB
	 VQg86SLB+LFhxLp2HhpxHcgASSH1M3gY3F8hk54c8OGdvfO1L67ASrWQK5sXPfE/vE
	 Lff57MkpOT5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948BDC5518E
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158249359.14881.10647218802195556067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdf4705d8e2d8429f5fc32b001f695ee1050c7dc26b7e3d73bb3c40366f1ba4
Date: Fri, 20 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771582493
